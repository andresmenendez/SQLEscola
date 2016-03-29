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

namespace SQLEscola.Controllers
{
    public class RespostaController : Controller
    {
        public ViewResult ListaRespostas(int id)
        {
            QuestaoModel quest = GerenciadorQuestao.GetInstance().Obter(id);
            AtividadeModel ativ = GerenciadorAtividade.GetInstance().Obter(quest.Id_Atividade);
            TurmaModel turma = GerenciadorTurma.GetInstance().Obter(ativ.Id_Turma);
            ViewBag.IdTurma = turma.Id_Turma;
            ViewBag.Turma = turma.Turma;
            ViewBag.Professor = GerenciadorUsuario.GetInstance().Obter(turma.Id_Usuario).Nome;
            ViewBag.IdAtividade = ativ.Id_Atividade;
            ViewBag.Atividade = ativ.Nome_Atividade;
            ViewBag.Ordem = quest.Ordem;
            ViewBag.IdQuestao = quest.Id_Questao;
            ViewBag.NomeQuestao = quest.Descricao;
            List<UsuarioModel> listaUsers = new List<UsuarioModel>();
            List<RespostaModel> listaResp = GerenciadorResposta.GetInstance().ObterApenasUsuarioResposta(id).ToList();
            return View(listaResp);
        }

        // GET: /Resposta/
        public ViewResult Index(int id, int idUser)
        {
            QuestaoModel quest = GerenciadorQuestao.GetInstance().Obter(id);
            ViewBag.Ordem = quest.Ordem;
            ViewBag.NomeQuestao = quest.Descricao;
            ViewBag.IdQuestao = quest.Id_Questao;
            ViewBag.IdUser = idUser;
            return View(GerenciadorResposta.GetInstance().ObterPorQuestaoUsuario(id, idUser));
        }

        /*public ViewResult IndexAluno(int id)
        {
            RespostaModel ativ = GerenciadorAtividade.GetInstance().Obter(id);
            TurmaModel turma = GerenciadorTurma.GetInstance().Obter(ativ.Id_Turma);
            ViewBag.IdTurma = turma.Id_Turma;
            ViewBag.Turma = turma.Turma;
            ViewBag.Professor = GerenciadorUsuario.GetInstance().Obter(turma.Id_Usuario).Nome;
            ViewBag.IdAtividade = ativ.Id_Atividade;
            ViewBag.Atividade = ativ.Nome_Atividade;
            return View(GerenciadorResposta.GetInstance().ObterPorAtividade(id));
        }*/

        //
        // GET: /Resposta/Details/5

        public ViewResult Details(int id, int IdUser)
        {
            RespostaModel resp = GerenciadorResposta.GetInstance().Obter(id);
            ViewBag.NomeQuestao = GerenciadorQuestao.GetInstance().Obter(resp.Id_Questao).Descricao;
            ViewBag.Ordem = GerenciadorQuestao.GetInstance().Obter(resp.Id_Questao).Ordem;
            ViewBag.IdUser = IdUser;
            return View(resp);
        }

        public ActionResult CreateAtalho(RespostaModel resp)
        {
            int userId = Convert.ToInt32(Membership.GetUser().ProviderUserKey.ToString());
            List<MatriculaModel> mats = GerenciadorMatricula.GetInstance().ObterPorUser(userId).ToList();
            List<TurmaModel> turmas = new List<TurmaModel>();
            foreach (MatriculaModel item in mats)
            {
                turmas.Add(GerenciadorTurma.GetInstance().Obter(item.Id_Turma));
            }
            IEnumerable<TurmaModel> listaTurmas = (IEnumerable<TurmaModel>)turmas;
            List<AtividadeModel> ativs = new List<AtividadeModel>();
            IEnumerable<AtividadeModel> listaAtivVazia = (IEnumerable<AtividadeModel>)ativs;
            List<QuestaoModel> quests = new List<QuestaoModel>();
            IEnumerable<QuestaoModel> listaQuestVazia = (IEnumerable<QuestaoModel>)quests;
            //Carregamento Inicial ao entrar na tela
            if (resp.Turmas == 0 & resp.Atividades == 0 & resp.Questoes == 0)
            {
                ViewBag.Turmas = new SelectList
                        (
                            listaTurmas,
                            "Id_Turma",
                            "Turma"
                        );
                ViewBag.Atividades = new SelectList
                    (
                        listaAtivVazia,
                        "Id_Atividade",
                        "Nome_Atividade"
                    );
                ViewBag.Questoes = new SelectList
                    (
                        listaQuestVazia,
                        "Id_Questao",
                        "Descricao"
                    );
            }
            //Carregamento após a turma ser selecionada
            else if (resp.Turmas != 0 & resp.Atividades == 0 & resp.Questoes == 0)
            {
                ViewBag.Turmas = new SelectList
                    (
                        listaTurmas,
                        "Id_Turma",
                        "Turma", resp.Turmas
                    );
                Session["IdTurma"] = resp.Turmas;
                ViewBag.Atividades = new SelectList
                    (
                        GerenciadorAtividade.GetInstance().ObterPorTurma(resp.Turmas),
                        "Id_Atividade",
                        "Nome_Atividade"
                    );
                ViewBag.Questoes = new SelectList
                    (
                        listaQuestVazia,
                        "Id_Questao",
                        "Descricao"
                    );
            }
            //Carregamento após atividade ser selecionada
            else if (resp.Turmas == 0 & resp.Atividades != 0 & resp.Questoes == 0)
            {
                ViewBag.Turmas = new SelectList
                    (
                        listaTurmas,
                        "Id_Turma",
                        "Turma", Session["IdTurma"]
                    );
                ViewBag.Atividades = new SelectList
                    (
                        GerenciadorAtividade.GetInstance().ObterPorTurma(Convert.ToInt32(Session["IdTurma"].ToString())),
                        "Id_Atividade",
                        "Nome_Atividade",
                        resp.Atividades
                    );
                Session["IdAtividade"] = resp.Atividades;
                ViewBag.Questoes = new SelectList
                    (
                        GerenciadorQuestao.GetInstance().ObterPorAtividadeValidas(resp.Atividades),
                        "Id_Questao",
                        "Descricao"
                    );
                //Listando todas as questões da atividade selecionada para poder exibir o arquivo
                string listaInteiros = "";
                List<QuestaoModel> listaQuestParaArquivo = GerenciadorQuestao.GetInstance().ObterPorAtividadeValidas(resp.Atividades).ToList();
                foreach (QuestaoModel item in listaQuestParaArquivo)
                {
                    ArquivoModel arq = GerenciadorArquivo.GetInstance().ObterPorQuestao(item.Id_Questao);
                    if (arq != null)
                    {
                        listaInteiros += item.Id_Questao.ToString() + ",";
                    }
                }
                Session["ListaQuestao"] = listaInteiros;
            }
            //Quando todos os combos são selecionados e clica no botão de submeter
            else if (Convert.ToInt32(Session["IdTurma"].ToString()) != 0
               & Convert.ToInt32(Session["IdAtividade"].ToString()) != 0
               & resp.Questoes != 0
               & resp.ScriptResposta != null)
            {
                resp.DataResposta = DateTime.Now;
                resp.Id_Usuario = userId;
                resp.Id_Questao = resp.Questoes;
                GerenciadorResposta.GetInstance().Inserir(resp);
                ResultadoModel result = new ResultadoModel();
                result.Erros = "OK";
                result.Id_Resposta = GerenciadorResposta.GetInstance().ObterPorData(resp.DataResposta.Value).Id_Resposta;
                GerenciadorResultado.GetInstance().Inserir(result);
                return RedirectToAction("Index", "Resposta",
                    new { id = resp.Id_Questao, idUser = Convert.ToInt32(Membership.GetUser().ProviderUserKey.ToString()) });
            }
            //Quando o usuario altera o combo de questões e depois altera o combo de turmas
            else if (resp.Turmas != 0 & resp.Atividades == 0 & resp.Questoes != 0)
            {
                ViewBag.Turmas = new SelectList
                    (
                        listaTurmas,
                        "Id_Turma",
                        "Turma", resp.Turmas
                    );
                Session["IdTurma"] = resp.Turmas;
                ViewBag.Atividades = new SelectList
                    (
                        GerenciadorAtividade.GetInstance().ObterPorTurma(resp.Turmas),
                        "Id_Atividade",
                        "Nome_Atividade"
                    );
                ViewBag.Questoes = new SelectList
                    (
                        listaQuestVazia,
                        "Id_Questao",
                        "Descricao"
                    );
            }
            return View(resp);
        }

        //
        // GET: /Resposta/Create

        public ActionResult Create(int id)
        {
            RespostaModel resp = new RespostaModel();
            resp.Id_Questao = id;
            MembershipUser mu = Membership.GetUser(Session[Global.NomeUsuario].ToString());
            int userId = Convert.ToInt32(mu.ProviderUserKey.ToString());
            resp.Id_Usuario = userId;
            ViewBag.NomeQuestao = GerenciadorQuestao.GetInstance().Obter(id).Descricao;
            ViewBag.Ordem = GerenciadorQuestao.GetInstance().Obter(id).Ordem;
            ViewBag.Id_Atividade = GerenciadorQuestao.GetInstance().Obter(id).Id_Atividade;
            ArquivoModel arq = GerenciadorArquivo.GetInstance().ObterPorQuestao(id);
            if (arq != null)
            {
                resp.ArrayBytes = arq.ArrayBytes;
            }
            ViewBag.Error = "";
            return View(resp);
        }

        //
        // POST: /Resposta/Create

        [HttpPost]
        public ActionResult Create(RespostaModel model)
        {
            if (ModelState.IsValid)
            {
                if (!model.ScriptResposta.ToLower().Contains("alter"))
                {
                    //Testando se o nome do procedimento passado é igual ao que está no Script de resposta
                    string nomeProc = model.ScriptResposta.Substring(0, model.ScriptResposta.IndexOf('('));
                    nomeProc = nomeProc.ToLower().Replace("create", "");
                    nomeProc = nomeProc.ToLower().Replace("procedure", "");
                    nomeProc = nomeProc.ToLower().Replace(" ", "");
                    if (nomeProc.Trim() == model.NomeProcedResposta.Trim())
                    {

                        AcessandoSQL acesso = new AcessandoSQL();
                        Global go = new Global();
                        string resultado = acesso.AcessandoSQLScript(model.ScriptResposta);
                        if (resultado == "OK")
                        {
                            acesso.AcessandoSQLScript("DROP PROCEDURE " + model.NomeProcedResposta);
                            model.DataResposta = DateTime.Now;
                            //GerenciadorResposta.GetInstance().Inserir(model);
                            ResultadoModel result = new ResultadoModel();
                            result.Erros = "OK";
                            //result.Id_Resposta = GerenciadorResposta.GetInstance().ObterPorData(model.DataResposta.Value).Id_Resposta;
                            //Submetendo resposta
                            QuestaoModel q = GerenciadorQuestao.GetInstance().Obter(model.Id_Questao);
                            /*result.Erros = go.SubmeterResposta(q.ScriptCriacao, q.ScriptPovoamento, q.NomeProcedimento, q.ScriptResultado,
                                model.NomeProcedResposta, model.ScriptResposta, q.CasosTeste);*/
                            model.ScriptErros = go.SubmeterResposta(q.ScriptCriacao, q.ScriptPovoamento, q.NomeProcedimento, q.ScriptResultado,
                                model.NomeProcedResposta, model.ScriptResposta, q.CasosTeste);
                            //GerenciadorResultado.GetInstance().Inserir(result);
                            /*return RedirectToAction("Index", "Resposta",
                                new { id = model.Id_Questao, idUser = Convert.ToInt32(Membership.GetUser().ProviderUserKey.ToString()) });
                        */}
                        else
                        {
                            acesso.AcessandoSQLScript("DROP PROCEDURE " + model.NomeProcedResposta);
                            ViewBag.Error = "Não foi possível submeter sua resposta para avaliação automática.</br>Verifique o campo 'Erros no Script' e submeta novamente.";
                            model.ScriptErros = resultado;
                        }
                    }
                    else
                    {
                        ViewBag.Error = "Não foi possível submeter sua resposta para avaliação automática.";
                        ModelState.AddModelError("NomeProcedResposta", "O nome do procedimento deve ser o mesmo que está no Script de Resposta: " + nomeProc.ToUpper() + ".");
                    }
                }
                else
                {
                    ViewBag.Error = "Não foi possível submeter sua resposta para avaliação automática.";
                    ModelState.AddModelError("ScriptResposta", "O Script de Resposta não pode conter o comando 'ALTER' apenas 'CREATE'.");
                }
            }
            ViewBag.NomeQuestao = GerenciadorQuestao.GetInstance().Obter(model.Id_Questao).Descricao;
            ViewBag.Ordem = GerenciadorQuestao.GetInstance().Obter(model.Id_Questao).Ordem;
            ViewBag.Id_Atividade = GerenciadorQuestao.GetInstance().Obter(model.Id_Questao).Id_Atividade;
            return View(model);
        }

        //
        // GET: /Resposta/Edit/5

        public ActionResult Edit(int id)
        {
            RespostaModel resp = GerenciadorResposta.GetInstance().Obter(id);
            ViewBag.NomeQuestao = GerenciadorQuestao.GetInstance().Obter(resp.Id_Questao).Descricao;
            ViewBag.Ordem = GerenciadorQuestao.GetInstance().Obter(resp.Id_Questao).Ordem;
            return View(resp);
        }

        //
        // POST: /Resposta/Edit/5

        [HttpPost]
        public ActionResult Edit(RespostaModel model)
        {
            if (ModelState.IsValid)
            {
                model.DataResposta = DateTime.Now;
                GerenciadorResposta.GetInstance().Inserir(model);
                ResultadoModel result = new ResultadoModel();
                result.Erros = "OK";
                result.Id_Resposta = GerenciadorResposta.GetInstance().ObterPorData(model.DataResposta.Value).Id_Resposta;
                GerenciadorResultado.GetInstance().Inserir(result);
                return RedirectToAction("Index", "Resposta", new { id = model.Id_Questao, idUser = model.Id_Usuario });
            }
            return View(model);
        }

        //
        // GET: /Resposta/Delete/5

        public ActionResult Delete(int id)
        {
            RespostaModel quest = GerenciadorResposta.GetInstance().Obter(id);
            return View(quest);
        }

        //
        // POST: /Resposta/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            RespostaModel quest = GerenciadorResposta.GetInstance().Obter(id);
            GerenciadorResposta.GetInstance().Remover(id);
            //return RedirectToAction("Index", new { id = quest.Id_Atividade });
            return null;
        }
    }
}