﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SQLEscola.Banco;
using SQLEscola.Gerenciadores;
using SQLEscola.Models;
using System.Web.Security;

namespace SQLEscola.Controllers
{ 
    public class TurmaController : Controller
    {
        //
        // GET: /Turma/

        public ViewResult Index()
        {
            return View(GerenciadorTurma.GetInstance().ObterTodos());
        }

        public ViewResult FiltrarPorUser()
        {
            string userId = Membership.GetUser().ProviderUserKey.ToString();
            return View(GerenciadorTurma.GetInstance().ObterPorUsuario(Convert.ToInt32(userId)));
        }

        //
        // GET: /Turma/Details/5

        public ViewResult Details(int id)
        {
            TurmaModel turma = GerenciadorTurma.GetInstance().Obter(id);
            return View(turma);
        }

        //
        // GET: /Turma/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Turma/Create

        [HttpPost]
        public ActionResult Create(TurmaModel model)
        {
            if (ModelState.IsValid)
            {
                string userId = Membership.GetUser().ProviderUserKey.ToString();
                model.Id_Usuario = Convert.ToInt32(userId);
                GerenciadorTurma.GetInstance().Inserir(model);
                return RedirectToAction("Index");
            }

            return View(model);
        }
        
        //
        // GET: /Turma/Edit/5
 
        public ActionResult Edit(int id)
        {
            TurmaModel turma = GerenciadorTurma.GetInstance().Obter(id);
            return View(turma);
        }

        //
        // POST: /Turma/Edit/5

        [HttpPost]
        public ActionResult Edit(TurmaModel model)
        {
            if (ModelState.IsValid)
            {
                GerenciadorTurma.GetInstance().Editar(model);
                return RedirectToAction("Index");
            }
            return View(model);
        }

        //
        // GET: /Turma/Delete/5
 
        public ActionResult Delete(int id)
        {
            TurmaModel turma = GerenciadorTurma.GetInstance().Obter(id);
            return View(turma);
        }

        //
        // POST: /Turma/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            GerenciadorTurma.GetInstance().Remover(id);
            return RedirectToAction("Index");
        }

    }
}