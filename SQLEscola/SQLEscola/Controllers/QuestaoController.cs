﻿using System;
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
            return View(quest);
        }

        public FileResult PDFDownload(int id)
        {
            QuestaoModel quest = GerenciadorQuestao.GetInstance().Obter(id);
            return File(quest.ArrayBytes, "application/pdf", quest.Ordem.ToString()+".pdf");
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
        public ActionResult Create(QuestaoModel model, HttpPostedFileBase file)
        {
            //ViewBag.Id_Turma = model.Id_Turma;
            if (ModelState.IsValid)
            {
                model.DataCriacao = DateTime.Now;
                model.DataAlteracao = DateTime.Now;
                model.Id_Tecnologia = Global.IdTecnologiaSQLServer;
                if (file != null && file.ContentLength > 0)
                {
                    model.Arquivo = file;
                }
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