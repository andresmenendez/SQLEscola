using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using SQLEscola.Gerenciadores;
using System.Data;

namespace SQLEscola.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Inicial()
        {
            MembershipUser u = Membership.GetUser(User.Identity.Name);
            ViewBag.NomeUsuario = Gerenciadores.GerenciadorUsuario.GetInstance().ObterPorEmail(u.Email).Nome;
            //APAGAR
            AcessandoSQL acs = new AcessandoSQL();
            DataTable tab = acs.AcessandoSQLScriptObtendoDados("Select * from TB_FUNCIONARIO where MATRICULA = 2");
            DataTable tab2 = acs.AcessandoSQLScriptObtendoDados("Select * from TB_FUNCIONARIO where MATRICULA = 2");
            if (tab == tab2)
            {
                string a = "A";
            }
            return View();
        }

        public ActionResult About()
        {
            return View();
        }
    }
}
