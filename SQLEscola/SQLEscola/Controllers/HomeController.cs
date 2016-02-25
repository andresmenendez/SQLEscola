﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace SQLEscola.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "Welcome to ASP.NET MVC!";
            return View();
        }

        public ActionResult Inicial()
        {
            MembershipUser u = Membership.GetUser(User.Identity.Name);
            ViewBag.NomeUsuario = Gerenciadores.GerenciadorUsuario.GetInstance().ObterPorEmail(u.Email).Nome;

            return View();
        }

        public ActionResult About()
        {
            return View();
        }
    }
}
