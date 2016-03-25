using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SQLEscola.Banco;
using SQLEscola.Models;
using SQLEscola.Gerenciadores;
using System.Web.Security;
using System.IO;

namespace SQLEscola.Controllers
{ 
    public class QuestaoController : Controller
    {
        // GET: /Questao/
        public ViewResult Index(int id)
        {
            AtividadeModel ativ = GerenciadorAtividade.GetInstance().Obter(id);
            TurmaModel turma = GerenciadorTurma.GetInstance().Obter(ativ.Id_Turma);
            ViewBag.IdTurma = turma.Id_Turma;
            ViewBag.Turma = turma.Turma;
            ViewBag.Professor = GerenciadorUsuario.GetInstance().Obter(turma.Id_Usuario).Nome;
            ViewBag.IdAtividade = ativ.Id_Atividade;
            ViewBag.Atividade = ativ.Nome_Atividade;
            return View(GerenciadorQuestao.GetInstance().ObterPorAtividade(id));
        }

        public ViewResult IndexAluno(int id)
        {
            AtividadeModel ativ = GerenciadorAtividade.GetInstance().Obter(id);
            TurmaModel turma = GerenciadorTurma.GetInstance().Obter(ativ.Id_Turma);
            ViewBag.IdTurma = turma.Id_Turma;
            ViewBag.Turma = turma.Turma;
            ViewBag.Professor = GerenciadorUsuario.GetInstance().Obter(turma.Id_Usuario).Nome;
            ViewBag.IdAtividade = ativ.Id_Atividade;
            ViewBag.Atividade = ativ.Nome_Atividade;
            MembershipUser mu = Membership.GetUser(Session[Global.NomeUsuario].ToString());
            int userId = Convert.ToInt32(mu.ProviderUserKey.ToString());
            List<QuestaoModel> lista = GerenciadorQuestao.GetInstance().ObterPorAtividade(id).ToList();
            foreach (QuestaoModel item in lista)
            {
                if (GerenciadorResposta.GetInstance().ObterPorQuestaoUsuario(item.Id_Questao, userId).FirstOrDefault() == null)
                {
                    item.QuestaoRespondida = false;
                }
                else
                {
                    item.QuestaoRespondida = true;
                }
            }
            IEnumerable<QuestaoModel> listaTransformada = (IEnumerable<QuestaoModel>)lista;
            return View(listaTransformada);
        }

        //
        // GET: /Questao/Details/5

        public ViewResult Details(int id)
        {
            QuestaoModel quest = GerenciadorQuestao.GetInstance().Obter(id);
            ViewBag.DataAlteracao = Convert.ToDateTime(quest.DataAlteracao).ToShortDateString();
            ArquivoModel arq = GerenciadorArquivo.GetInstance().ObterPorQuestao(id);
            if (arq != null)
            {
                quest.ArrayBytes = arq.ArrayBytes; 
            }
            return View(quest);
        }

        public FileResult PDFDownload(int id)
        {
            ArquivoModel arq = GerenciadorArquivo.GetInstance().ObterPorQuestao(id);
            return File(arq.ArrayBytes, "application/pdf", arq.Nome);
        }

        public ActionResult RemoverArquivo(int id)
        {
            int idQues = id;
            ArquivoModel arq = GerenciadorArquivo.GetInstance().ObterPorQuestao(id);
            GerenciadorArquivo.GetInstance().Remover(arq.Id_Arquivo);
            return RedirectToAction("Edit", new { id = idQues });
        }

        //
        // GET: /Questao/Create

        public ActionResult Create(int id)
        {
            QuestaoModel quest = new QuestaoModel();
            ViewBag.Id_Atividade = id;
            quest.Id_Atividade = id;
            ViewBag.Error = "";
            return View(quest);
        }

        //
        // POST: /Questao/Create

        [HttpPost]
        public ActionResult Create(QuestaoModel model, HttpPostedFileBase file)
        {
            //ViewBag.Id_Turma = model.Id_Turma;
            if (ModelState.IsValid)
            {
                if (file == null)
                {
                    model.DataCriacao = DateTime.Now;
                    model.DataAlteracao = DateTime.Now;
                    model.Id_Tecnologia = Global.IdTecnologiaSQLServer;
                    model.Status = Global.StatusQuestaoCriada;
                    ViewBag.Id_Atividade = model.Id_Atividade;
                    GerenciadorQuestao.GetInstance().Inserir(model);
                    return RedirectToAction("Index", new { id = model.Id_Atividade });
                }
                else
                {
                    string[] tipo = file.FileName.Split('.');
                    if (tipo[1].ToLower() == "pdf" | tipo[1].ToLower() == "doc" | tipo[1].ToLower() == "docx")
                    {
                        model.DataCriacao = DateTime.Now;
                        model.DataAlteracao = DateTime.Now;
                        model.Id_Tecnologia = Global.IdTecnologiaSQLServer;
                        model.Status = Global.StatusQuestaoCriada;
                        ViewBag.Id_Atividade = model.Id_Atividade;
                        GerenciadorQuestao.GetInstance().Inserir(model);
                        ArquivoModel arq = new ArquivoModel();
                        arq.Arquivo = file;
                        arq.Nome = file.FileName;
                        arq.Tipo = tipo[1];
                        arq.Id_Questao = GerenciadorQuestao.GetInstance().ObterPorData(model.DataCriacao.Value).Id_Questao;
                        GerenciadorArquivo.GetInstance().Inserir(arq);
                        return RedirectToAction("Index", new { id = model.Id_Atividade });
                    }
                    else
                    {
                        ViewBag.Error = "A ferramenta só permite carregamento de arquivo .PDF ou .DOC";
                    }
                }
            }
            return View(model);
        }

        public ActionResult Validar(int id)
        {
            QuestaoModel qust = GerenciadorQuestao.GetInstance().Obter(id);
            ArquivoModel arq = GerenciadorArquivo.GetInstance().ObterPorQuestao(id);
            if (arq != null)
            {
                qust.ArrayBytes = arq.ArrayBytes;
            }
            ViewBag.Error = "";
            ViewBag.Id_Atividade = qust.Id_Atividade;
            return View(qust);
        }

        //
        // POST: /Questao/Edit/5

        [HttpPost]
        public ActionResult Validar(QuestaoModel model)
        {
            //Retirando validações do model
            ModelState.Remove("Descricao");
            ModelState.Remove("NomeProcedimento");
            ModelState.Remove("ScriptResultado");
            ModelState.Remove("CasosTeste");
            //Para adiconar validação no Model: ModelState.Remove("Descricao", "");
            QuestaoModel quest = GerenciadorQuestao.GetInstance().Obter(model.Id_Questao);
            Global go = new Global();
            string validacao = go.ValidarQuestao(quest);
            if (validacao == "OK")
            {
                quest.Status = "V";
                //GerenciadorQuestao.GetInstance().Editar(quest);
                return RedirectToAction("Index", new { id = model.Id_Atividade });
            }
            else
            {
                ViewBag.Error = validacao;
            }
            return View(quest);
        }

        //
        // GET: /Questao/Edit/5

        public ActionResult Edit(int id)
        {
            QuestaoModel qust = GerenciadorQuestao.GetInstance().Obter(id);
            ArquivoModel arq = GerenciadorArquivo.GetInstance().ObterPorQuestao(id);
            if (arq != null)
            {
                qust.ArrayBytes = arq.ArrayBytes;
            }
            ViewBag.Error = "";
            ViewBag.Id_Atividade = qust.Id_Atividade;
            return View(qust);
        }

        //
        // POST: /Questao/Edit/5

        [HttpPost]
        public ActionResult Edit(QuestaoModel model, HttpPostedFileBase file)
        {
            if (ModelState.IsValid)
            {
                if (file == null)
                {
                    QuestaoModel qust = GerenciadorQuestao.GetInstance().Obter(model.Id_Questao);
                    qust.DataAlteracao = DateTime.Now;
                    qust.Descricao = model.Descricao;
                    qust.ScriptCriacao = model.ScriptCriacao;
                    qust.ScriptPovoamento = model.ScriptPovoamento;
                    qust.ScriptResultado = model.ScriptResultado;
                    qust.ArrayBytes = model.ArrayBytes;
                    qust.DataCriacao = model.DataCriacao;
                    qust.Status = model.Status;
                    qust.Ordem = model.Ordem;
                    qust.NomeProcedimento = model.NomeProcedimento;
                    qust.CasosTeste = model.CasosTeste;
                    GerenciadorQuestao.GetInstance().Editar(qust);
                    return RedirectToAction("Index", new { id = model.Id_Atividade });
                }
                else
                {
                    string[] tipo = file.FileName.Split('.');
                    if (tipo[1].ToLower() == "pdf" | tipo[1].ToLower() == "doc" | tipo[1].ToLower() == "docx")
                    {
                        QuestaoModel qust = GerenciadorQuestao.GetInstance().Obter(model.Id_Questao);
                        qust.DataAlteracao = DateTime.Now;
                        qust.Descricao = model.Descricao;
                        qust.ScriptCriacao = model.ScriptCriacao;
                        qust.ScriptPovoamento = model.ScriptPovoamento;
                        qust.ScriptResultado = model.ScriptResultado;
                        qust.ArrayBytes = model.ArrayBytes;
                        qust.DataCriacao = model.DataCriacao;
                        GerenciadorQuestao.GetInstance().Editar(qust);
                        ArquivoModel arq = GerenciadorArquivo.GetInstance().ObterPorQuestao(model.Id_Questao);
                        bool novoArq = false;
                        if (arq == null)
                        {
                            arq = new ArquivoModel();
                            novoArq = true;
                        }
                        arq.Id_Questao = qust.Id_Questao;
                        arq.Arquivo = file;
                        arq.Nome = file.FileName;
                        arq.Tipo = tipo[1];
                        if (novoArq)
                        {
                            GerenciadorArquivo.GetInstance().Inserir(arq);
                        }
                        else
                        {
                            GerenciadorArquivo.GetInstance().Editar(arq);
                        }
                        return RedirectToAction("Index", new { id = model.Id_Atividade });
                    }
                    else
                    {
                        ViewBag.Error = "A ferramenta só permite carregamento de arquivo .PDF ou .DOC";
                    }
                }
                
            }
            return View(model);
        }

        //
        // GET: /Questao/Delete/5

        public ActionResult Delete(int id)
        {
            QuestaoModel quest = GerenciadorQuestao.GetInstance().Obter(id);
            return View(quest);
        }

        //
        // POST: /Questao/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            QuestaoModel quest = GerenciadorQuestao.GetInstance().Obter(id);
            try
            {
                ArquivoModel arq = GerenciadorArquivo.GetInstance().ObterPorQuestao(id);
                if (arq != null)
                {
                    GerenciadorArquivo.GetInstance().Remover(arq.Id_Arquivo);
                }
                List<RespostaModel> listaResp = GerenciadorResposta.GetInstance().ObterPorQuestao(id).ToList();
                foreach (RespostaModel item in listaResp)
                {
                    GerenciadorResposta.GetInstance().Remover(item.Id_Resposta);
                    ResultadoModel result = GerenciadorResultado.GetInstance().ObterPorResposta(item.Id_Resposta);
                    GerenciadorResultado.GetInstance().Remover(result.Id_Resultado);
                }
                GerenciadorQuestao.GetInstance().Remover(id);
                return RedirectToAction("Index", new { id = quest.Id_Atividade });
            }
            catch (Exception)
            {
                //TODO Retornar Erro
                return View(quest);
            }
        }
    }
}