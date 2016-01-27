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
    public class ResultadoController : Controller
    {
        private sqlescolaEntities db = new sqlescolaEntities();

        //
        // GET: /Resultado/

        public ViewResult Index()
        {
            var tb_resultado = db.tb_resultado.Include("tb_resposta");
            return View(tb_resultado.ToList());
        }

        //
        // GET: /Resultado/Details/5

        public ViewResult Details(int id, int idUser)
        {
            ResultadoModel result = GerenciadorResultado.GetInstance().ObterPorResposta(id);
            RespostaModel resp = GerenciadorResposta.GetInstance().Obter(result.Id_Resposta);
            ViewBag.NomeQuestao = GerenciadorQuestao.GetInstance().Obter(resp.Id_Questao).Descricao;
            ViewBag.Ordem = GerenciadorQuestao.GetInstance().Obter(resp.Id_Questao).Ordem;
            ViewBag.IdUser = idUser;
            ViewBag.Id_Questao = resp.Id_Questao;
            ViewBag.Data = resp.DataResposta.Value;
            result.ScriptResposta = resp.ScriptResposta;
            return View(result);
        }

        //
        // GET: /Resultado/Create

        public ActionResult Create()
        {
            ViewBag.Id_Resposta = new SelectList(db.tb_resposta, "Id_Resposta", "ScriptResposta");
            return View();
        } 

        //
        // POST: /Resultado/Create

        [HttpPost]
        public ActionResult Create(tb_resultado tb_resultado)
        {
            if (ModelState.IsValid)
            {
                db.tb_resultado.AddObject(tb_resultado);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            ViewBag.Id_Resposta = new SelectList(db.tb_resposta, "Id_Resposta", "ScriptResposta", tb_resultado.Id_Resposta);
            return View(tb_resultado);
        }
        
        //
        // GET: /Resultado/Edit/5

        public ActionResult Edit(int id, int idUser)
        {
            ResultadoModel result = GerenciadorResultado.GetInstance().ObterPorResposta(id);
            RespostaModel resp = GerenciadorResposta.GetInstance().Obter(result.Id_Resposta);
            ViewBag.NomeQuestao = GerenciadorQuestao.GetInstance().Obter(resp.Id_Questao).Descricao;
            ViewBag.Ordem = GerenciadorQuestao.GetInstance().Obter(resp.Id_Questao).Ordem;
            ViewBag.IdUser = idUser;
            ViewBag.Id_Questao = resp.Id_Questao;
            ViewBag.Erros = result.Erros;
            result.ScriptResposta = resp.ScriptResposta;
            return View(result);
        }

        //
        // POST: /Resultado/Edit/5

        [HttpPost]
        public ActionResult Edit(ResultadoModel model)
        {
            if (ModelState.IsValid)
            {
                RespostaModel resp = GerenciadorResposta.GetInstance().Obter(model.Id_Resposta);
                GerenciadorResultado.GetInstance().Editar(model);
                return RedirectToAction("Index", "Resposta", new { id = resp.Id_Questao, idUser = resp.Id_Usuario});
            }
            return View(model);
        }

        //
        // GET: /Resultado/Delete/5
 
        public ActionResult Delete(int id)
        {
            tb_resultado tb_resultado = db.tb_resultado.Single(t => t.Id_Resultado == id);
            return View(tb_resultado);
        }

        //
        // POST: /Resultado/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            tb_resultado tb_resultado = db.tb_resultado.Single(t => t.Id_Resultado == id);
            db.tb_resultado.DeleteObject(tb_resultado);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}