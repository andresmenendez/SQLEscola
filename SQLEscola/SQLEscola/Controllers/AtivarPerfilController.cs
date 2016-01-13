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
using System.Web.Security;

namespace SQLEscola.Controllers
{ 
    public class AtivarPerfilController : Controller
    {
        //
        // GET: /Turma/

        public ViewResult Index()
        {
            string userId = Membership.GetUser().ProviderUserKey.ToString();
            if (!GerenciadorAtivarPerfil.GetInstance().SolicitacaoFeita(Convert.ToInt32(userId)))
            {
                List<PerfilModel> lista = GerenciadorAtivarPerfil.GetInstance().ObterPorUser(Convert.ToInt32(userId)).ToList();
                PerfilModel perfil = new PerfilModel();
                perfil.Id_Ativar_Perfil = 1;
                perfil.Id_Usuario = Convert.ToInt32(userId);
                perfil.NomeUsuario = Session[Global.NomeUsuario].ToString();
                perfil.NomeCompletoUsuario = Session[Global.NomeCompletoUsuario].ToString();
                perfil.Status = "Não Solicitado";
                lista.Add(perfil);
                IEnumerable<PerfilModel> listaTransformada = (IEnumerable<PerfilModel>)lista;
                return View(listaTransformada);
            }
            else
            {
                List<PerfilModel> lista = GerenciadorAtivarPerfil.GetInstance().ObterPorUser(Convert.ToInt32(userId)).ToList();
                PerfilModel perfil = lista.ElementAtOrDefault(0);
                perfil.NomeUsuario = Session[Global.NomeUsuario].ToString();
                perfil.NomeCompletoUsuario = Session[Global.NomeCompletoUsuario].ToString();
                if (perfil.Status == "E")
                {
                    perfil.Status = "Solicitação enviada para o Administrador";
                }
                else
                {
                    perfil.Status = "Perfil de Professor Ativo";
                }
                IEnumerable<PerfilModel> listaTransformada = (IEnumerable<PerfilModel>)lista;
                return View(listaTransformada);
            }
        }


        public ActionResult SolicitarPerfil(int id)
        {
            PerfilModel perfil = new PerfilModel();
            perfil.Id_Usuario = id;
            perfil.Status = "E";
            try
            {
                GerenciadorAtivarPerfil.GetInstance().Inserir(perfil);
                
            }
            catch (Exception)
            {
                ViewBag.Erro = "Não foi possível fazer a solicitação ao Administrador. Favor entrar em contato através do e-mail.";
            }
            return RedirectToAction("Index");
        }

        //
        // GET: /Turma/Details/5

        public ViewResult Details(int id)
        {
            PerfilModel turma = GerenciadorAtivarPerfil.GetInstance().Obter(id);
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
        public ActionResult Create(PerfilModel model)
        {
            if (ModelState.IsValid)
            {
                
                return RedirectToAction("Index");
            }

            return View(model);
        }

        //
        // GET: /Turma/Edit/5

        public ActionResult Edit(int id)
        {
            PerfilModel turma = GerenciadorAtivarPerfil.GetInstance().Obter(id);
            return View(turma);
        }

        //
        // POST: /Turma/Edit/5

        [HttpPost]
        public ActionResult Edit(PerfilModel model)
        {
            if (ModelState.IsValid)
            {
                GerenciadorAtivarPerfil.GetInstance().Editar(model);
                return RedirectToAction("Index");
            }
            return View(model);
        }

        //
        // GET: /Turma/Delete/5

        public ActionResult Delete(int id)
        {
            PerfilModel turma = GerenciadorAtivarPerfil.GetInstance().Obter(id);
            return View(turma);
        }

        //
        // POST: /Turma/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            GerenciadorAtivarPerfil.GetInstance().Remover(id);
            return RedirectToAction("Index");
        }
    }
}