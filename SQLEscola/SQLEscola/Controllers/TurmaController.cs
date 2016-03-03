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
    public class TurmaController : Controller
    {
        //
        // GET: /Turma/

        public ViewResult Index()
        {
            return View(GerenciadorTurma.GetInstance().ObterTodos());
        }

        public ActionResult FiltrarPorUser()
        {
            int userId = Convert.ToInt32(Membership.GetUser().ProviderUserKey.ToString());
            return View(GerenciadorTurma.GetInstance().ObterPorUsuario(userId));
        }

        public ViewResult IndexAluno()
        {
            return View(GerenciadorTurma.GetInstance().ObterTodos());
        }

        public ViewResult SolicitarMatricula()
        {
            string userId = Membership.GetUser().ProviderUserKey.ToString();
            return View(GerenciadorTurma.GetInstance().ObterTurmasParaMatricula(Convert.ToInt32(userId)));
        }

        public ActionResult Matricular(int idTurma)
        {
            MatriculaModel mat = new MatriculaModel();
            mat.Id_Turma = idTurma;
            string userId = Membership.GetUser().ProviderUserKey.ToString();
            mat.Id_Usuario = Convert.ToInt32(userId);
            try
            {
                GerenciadorMatricula.GetInstance().Inserir(mat);
                ViewBag.InseriuCorreto = "True";
            }
            catch
            {
                ViewBag.InseriuCorreto = "False";
            }
            return RedirectToAction("IndexAluno");
        }

        //
        // GET: /Turma/Details/5

        public ViewResult Details(int id)
        {
            TurmaModel turma = GerenciadorTurma.GetInstance().Obter(id);
            turma.Usuario = GerenciadorUsuario.GetInstance().Obter(turma.Id_Usuario).Nome;
            List<MatriculaModel> mats = GerenciadorMatricula.GetInstance().ObterPorTurma(id).ToList();
            List<string> listaAlunos = new List<string>();
            foreach (MatriculaModel mat in mats)
            {
                listaAlunos.Add(GerenciadorUsuario.GetInstance().Obter(mat.Id_Usuario).Nome);
            }
            listaAlunos.Sort();
            Session["ListaAlunos"] = listaAlunos;
            turma.QtdeAlunos = listaAlunos.Count;
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
            ViewBag.Error = "";
            return View(turma);
        }

        //
        // POST: /Turma/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            TurmaModel turma = GerenciadorTurma.GetInstance().Obter(id);
            try
            {
                List<MatriculaModel> listaMats = GerenciadorMatricula.GetInstance().ObterPorTurma(id).ToList();
                foreach (MatriculaModel item in listaMats)
                {
                    GerenciadorMatricula.GetInstance().Remover(item.Id_Matricula);
                }
                if (GerenciadorAtividade.GetInstance().ObterPorTurma(id).Count() == 0)
                {
                    GerenciadorTurma.GetInstance().Remover(id);
                }
                else
                {
                    ViewBag.Error = "Não foi possível remover esta turma, pois devem existir atividades associadas. Se não existirem turmas associadas contacte o ADM do sistema.";
                    return View(turma);
                }
            }
            catch (Exception)
            {
                ViewBag.Error = "Não foi possível remover esta turma, pois devem existir atividades associadas. Se não existirem turmas associadas contacte o ADM do sistema.";
                throw;
            }
            return RedirectToAction("Index");
        }

    }
}