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

        public ViewResult Details(int id)
        {
            RespostaModel resp = GerenciadorResposta.GetInstance().Obter(id);
            ViewBag.DataAlteracao = Convert.ToDateTime(resp.DataResposta).ToShortDateString();
            return View(resp);
        }

        //
        // GET: /Resposta/Create

        public ActionResult Create(int id)
        {
            RespostaModel quest = new RespostaModel();
            return View(quest);
        }

        //
        // POST: /Resposta/Create

        [HttpPost]
        public ActionResult Create(RespostaModel model)
        {
            if (ModelState.IsValid)
            {
                GerenciadorResposta.GetInstance().Inserir(model);
                //return RedirectToAction("Index", new { id = model.Id_Atividade });
                return null;
            }

            return View(model);
        }

        //
        // GET: /Resposta/Edit/5

        public ActionResult Edit(int id)
        {
            RespostaModel qust = GerenciadorResposta.GetInstance().Obter(id);
            //ViewBag.Id_Atividade = qust.Id_Atividade;
            return View(qust);
        }

        //
        // POST: /Resposta/Edit/5

        [HttpPost]
        public ActionResult Edit(RespostaModel model)
        {
            if (ModelState.IsValid)
            {
                //model.DataAlteracao = DateTime.Now;
                GerenciadorResposta.GetInstance().Editar(model);
                //return RedirectToAction("Index", new { id = model.Id_Atividade });
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