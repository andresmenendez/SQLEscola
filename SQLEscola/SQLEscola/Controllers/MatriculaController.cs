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
    public class MatriculaController : Controller
    {
                //
        // GET: /Matricula/
        public ViewResult Index()
        {
            return View(GerenciadorMatricula.GetInstance().ObterTodos());
        }
        //
        // GET: /Turma/Details/5

        /*public ViewResult Details(int id)
        {
            MatriculaModel matricula = GerenciadorMatricula.GetInstance().Obter(id);
            return View(matricula);
        }*/

        //
        // GET: /Turma/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Turma/Create

        [HttpPost]
        public ActionResult Create(MatriculaModel model)
        {
            if (ModelState.IsValid)
            {
                GerenciadorMatricula.GetInstance().Inserir(model);
                return RedirectToAction("Index");
            }

            return View(model);
        }

        //
        // GET: /Turma/Edit/5

        /*public ActionResult Edit(int id)
        {
            MatriculaModel matricula = GerenciadorMatricula.GetInstance().Obter(id);
            return View(matricula);
        }*/

        //
        // POST: /Turma/Edit/5

        /*[HttpPost]
        public ActionResult Edit(MatriculaModel model)
        {
            if (ModelState.IsValid)
            {
                GerenciadorMatricula.GetInstance().Editar(model);
                return RedirectToAction("Index");
            }
            return View(model);
        }*/

        //
        // GET: /Turma/Delete/5

        public ActionResult Delete(int id)
        {
            MatriculaModel matricula = GerenciadorMatricula.GetInstance().Obter(id);
            return View(matricula);
        }

        //
        // POST: /Turma/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            GerenciadorMatricula.GetInstance().Remover(id);
            return RedirectToAction("Index");
        }

    }
}