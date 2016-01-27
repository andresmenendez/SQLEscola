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
                //Constrói um perfil apaenas para ter o Status de Não Solicitado
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
                else if (perfil.Status == "A")
                {
                    perfil.Status = "Perfil de Professor Ativo";
                }
                else
                {
                    perfil.Status = "Rejeitado";
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

        public ViewResult IndexAdm()
        {
            List<PerfilModel> lista = GerenciadorAtivarPerfil.GetInstance().ObterTodos().ToList();
            foreach (PerfilModel item in lista)
            {
                item.NomeUsuario = GerenciadorUsuario.GetInstance().Obter(item.Id_Usuario).Nome;
                item.Email = GerenciadorUsuario.GetInstance().Obter(item.Id_Usuario).Email;
                if (item.Status == "E")
                {
                    item.Status = "Aguardando Ativação do Adm";
                }
                else if (item.Status == "A")
                {
                    item.Status = "Ativo";
                }
                else
                {
                    item.Status = "Rejeitado";
                }
            }
            IEnumerable<PerfilModel> listaTransformada = (IEnumerable<PerfilModel>)lista;
            return View(listaTransformada);
        }

        public ActionResult AtivarProfessor(int id)
        {
            PerfilModel perfil = GerenciadorAtivarPerfil.GetInstance().ObterPorUser(id).FirstOrDefault();
            perfil.Status = "A";
            try
            {
                GerenciadorAtivarPerfil.GetInstance().Remover(perfil.Id_Ativar_Perfil);
                GerenciadorAtivarPerfil.GetInstance().Inserir(perfil);
                //Adicionando Perfil de Professor ao usuário
                Roles.AddUserToRole(GerenciadorUsuario.GetInstance().Obter(id).UserName, Global.RoleProf);
            }
            catch (Exception)
            {
                Session["Erro"] = "Não foi possível ativar o perfil de PROFESSOR deste usuário.";
            }
            return RedirectToAction("IndexAdm");
        }

        public ActionResult DesativarProfessor(int id)
        {
            PerfilModel perfil = GerenciadorAtivarPerfil.GetInstance().ObterPorUser(id).FirstOrDefault();
            perfil.Status = "R";
            try
            {
                GerenciadorAtivarPerfil.GetInstance().Remover(perfil.Id_Ativar_Perfil);
                GerenciadorAtivarPerfil.GetInstance().Inserir(perfil);
                if (Roles.IsUserInRole(GerenciadorUsuario.GetInstance().Obter(id).UserName, Global.RoleProf))
                {
                     //Removendo Perfil de Professor do usuário
                    Roles.RemoveUserFromRole(GerenciadorUsuario.GetInstance().Obter(id).UserName, Global.RoleProf);   
                }
            }
            catch (Exception)
            {
                ViewBag.Erro = "Não foi possível desativar o perfil de PROFESSOR deste usuário.";
            }
            return RedirectToAction("IndexAdm");
        }

        public ActionResult SelecionarPerfil()
        {
            int userId = Convert.ToInt32(Membership.GetUser().ProviderUserKey.ToString());
            PerfilModel perfil = GerenciadorAtivarPerfil.GetInstance().ObterPorUser(userId).ElementAtOrDefault(0);
            if (perfil.Status == "A")
            {
                perfil.Status = "Professor";
                perfil.NomeCompletoUsuario = GerenciadorUsuario.GetInstance().Obter(userId).Nome;
                perfil.NomeUsuario = GerenciadorUsuario.GetInstance().Obter(userId).UserName;
                PerfilModel perfilUsuario = new PerfilModel();
                perfilUsuario.NomeCompletoUsuario = perfil.NomeCompletoUsuario;
                perfilUsuario.NomeUsuario = perfil.NomeUsuario;
                perfilUsuario.Status = "Usuário";
                List<PerfilModel> lista = new List<PerfilModel>();
                lista.Add(perfil);
                lista.Add(perfilUsuario);
                IEnumerable<PerfilModel> listaTransformada = (IEnumerable<PerfilModel>)lista;
                return View(listaTransformada);
            }
            else
            {
                return RedirectToAction("Inicial", "Home");
            }
        }

        public ActionResult PerfilSelecionado(string id)
        {
            int userId = Convert.ToInt32(Membership.GetUser().ProviderUserKey.ToString());
            UsuarioModel model = GerenciadorUsuario.GetInstance().Obter(userId);
            if (id == "Professor")
            {
                Session["Perfil"] = Global.PerfilProfessor;
            }
            else
            {
                Session["Perfil"] = Global.PerfilUsuario;
            }
            Session["TemPerfilPro"] = "True";
            Session[Global.NomeUsuario] = model.UserName;
            Session[Global.NomeCompletoUsuario] = model.Nome;
            return RedirectToAction("Inicial", "Home");
        }
    }
}