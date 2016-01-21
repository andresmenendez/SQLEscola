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
            return View(GerenciadorQuestao.GetInstance().ObterPorAtividade(id));
        }

        //
        // GET: /Questao/Details/5

        public ViewResult Details(int id)
        {
            QuestaoModel matricula = GerenciadorQuestao.GetInstance().Obter(id);
            ViewBag.DataAlteracao = Convert.ToDateTime(matricula.DataAlteracao).ToShortDateString();
            return View(matricula);
        }

        //
        // GET: /Questao/Create

        public ActionResult Create(int id)
        {
            QuestaoModel quest = new QuestaoModel();
            int NumOrdem = GerenciadorQuestao.GetInstance().ObterPorAtividade(id).Count();
            ViewBag.Id_Atividade = id;
            quest.Id_Atividade = id;
            quest.Ordem = NumOrdem + 1;
            return View(quest);
        }

        //
        // POST: /Questao/Create

        [HttpPost]
        public ActionResult Create(QuestaoModel model)
        {
            //ViewBag.Id_Turma = model.Id_Turma;
            if (ModelState.IsValid)
            {
                model.DataCriacao = DateTime.Now;
                model.DataAlteracao = DateTime.Now;
                model.Id_Tecnologia = Global.IdTecnologiaSQLServer;
                ViewBag.Id_Atividade = model.Id_Atividade;
                GerenciadorQuestao.GetInstance().Inserir(model);
                return RedirectToAction("Index", new { id = model.Id_Atividade });
            }

            return View(model);
        }

        //
        // GET: /Questao/Edit/5

        public ActionResult Edit(int id)
        {
            QuestaoModel qust = GerenciadorQuestao.GetInstance().Obter(id);
            ViewBag.Id_Atividade = qust.Id_Atividade;
            return View(qust);
        }

        //
        // POST: /Questao/Edit/5

        [HttpPost]
        public ActionResult Edit(QuestaoModel model)
        {
            if (ModelState.IsValid)
            {
                model.DataAlteracao = DateTime.Now;
                GerenciadorQuestao.GetInstance().Editar(model);
                return RedirectToAction("Index", new { id = model.Id_Atividade });
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
            GerenciadorQuestao.GetInstance().Remover(id);
            return RedirectToAction("Index", new { id = quest.Id_Atividade });
        }
    }
}