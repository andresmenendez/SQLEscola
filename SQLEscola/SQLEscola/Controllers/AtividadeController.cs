using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SQLEscola.Banco;
using SQLEscola.Gerenciadores;
using SQLEscola.Models;

namespace SQLEscola.Controllers
{ 
    public class AtividadeController : Controller
    {
        // GET: /Atividade/
        public ViewResult Index(int id)
        {
            TurmaModel turma = GerenciadorTurma.GetInstance().Obter(id);
            ViewBag.IdTurma = turma.Id_Turma;
            ViewBag.Turma = turma.Turma;
            ViewBag.Professor = GerenciadorUsuario.GetInstance().Obter(turma.Id_Usuario).Nome;
            return View(GerenciadorAtividade.GetInstance().ObterPorTurma(id));
        }

        public ViewResult IndexAluno(int id)
        {
            TurmaModel turma = GerenciadorTurma.GetInstance().Obter(id);
            ViewBag.Turma = turma.Turma;
            ViewBag.Professor = GerenciadorUsuario.GetInstance().Obter(turma.Id_Usuario).Nome;
            return View(GerenciadorAtividade.GetInstance().ObterPorTurma(id));
        }

        //
        // GET: /Atividade/Details/5

        public ViewResult Details(int id)
        {
            AtividadeModel matricula = GerenciadorAtividade.GetInstance().Obter(id);
            return View(matricula);
        }

        //
        // GET: /Atividade/Create

        public ActionResult Create(int id)
        {
            AtividadeModel model = new AtividadeModel();
            model.Id_Turma = id;
            ViewBag.Id_Turma = id;
            ViewBag.Error = "";
            return View(model);
        }

        //
        // POST: /Atividade/Create

        [HttpPost]
        public ActionResult Create(AtividadeModel model)
        {
            ViewBag.Id_Turma = model.Id_Turma;
            if (ModelState.IsValid)
            {
                if (GerenciadorAtividade.GetInstance().ExisteAtividade(model.Nome_Atividade, model.Id_Turma))
                {
                    GerenciadorAtividade.GetInstance().Inserir(model);
                }
                else
                {
                    ViewBag.Error = "Já existe uma Atividade com este nome para esta turma.";
                    return View(model);
                }
                return RedirectToAction("Index", new { id = model.Id_Turma});
            }

            return View(model);
        }

        //
        // GET: /Atividade/Edit/5

        public ActionResult Edit(int id)
        {
            AtividadeModel matricula = GerenciadorAtividade.GetInstance().Obter(id);
            return View(matricula);
        }

        //
        // POST: /Atividade/Edit/5

        [HttpPost]
        public ActionResult Edit(AtividadeModel model)
        {
            if (ModelState.IsValid)
            {
                GerenciadorAtividade.GetInstance().Editar(model);
                return RedirectToAction("Index", new { id = model.Id_Turma });
            }
            return View(model);
        }

        //
        // GET: /Atividade/Delete/5

        public ActionResult Delete(int id)
        {
            AtividadeModel matricula = GerenciadorAtividade.GetInstance().Obter(id);
            return View(matricula);
        }

        //
        // POST: /Atividade/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            AtividadeModel ativ = GerenciadorAtividade.GetInstance().Obter(id);
            GerenciadorAtividade.GetInstance().Remover(id);
            return RedirectToAction("Index", new { id = ativ.Id_Turma });
        }
    }
}