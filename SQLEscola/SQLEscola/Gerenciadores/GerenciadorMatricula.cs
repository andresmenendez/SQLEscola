using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Persistence;
using SQLEscola.Models;
using SQLEscola.Banco;

namespace SQLEscola.Gerenciadores
{
    public class GerenciadorMatricula
    {
        private IUnitOfWork unitOfWork;
        private bool shared;

        private static GerenciadorMatricula gMatricula;

        private GerenciadorMatricula()
        {
            this.unitOfWork = new UnitOfWork();
            shared = false;
        }

        public static GerenciadorMatricula GetInstance()
        {
            if (gMatricula == null)
            {
                gMatricula = new GerenciadorMatricula();
            }
            return gMatricula;
        }

        /// <summary>
        /// Construtor acessado apenas dentro do componentes service e permite compartilhar
        /// contexto com outras classes de negócio
        /// </summary>
        /// <param name="unitOfWork"></param>
        internal GerenciadorMatricula(IUnitOfWork unitOfWork)
        {
            this.unitOfWork = unitOfWork;
            shared = true;
        }

        /// <summary>
        /// Insere um novo na base de dados
        /// </summary>
        /// <param name="matriculaModel">Dados do modelo</param>
        /// <returns>Chave identificante na base</returns>
        public int Inserir(MatriculaModel matriculaModel)
        {
            tb_matricula matriculaE = new tb_matricula();
            Atribuir(matriculaModel, matriculaE);
            unitOfWork.RepositorioMatricula.Inserir(matriculaE);
            unitOfWork.Commit(shared);
            return matriculaE.Id_Turma;
        }

        /// <summary>
        /// Altera dados na base de dados
        /// </summary>
        /// <param name="matriculaModel"></param>
        public void Editar(MatriculaModel matriculaModel)
        {
            tb_matricula matriculaE = new tb_matricula(); 
            Atribuir(matriculaModel, matriculaE);
            unitOfWork.RepositorioMatricula.Editar(matriculaE);
            unitOfWork.Commit(shared);
        }

        /// <summary>
        /// Remove da base de dados
        /// </summary>
        /// <param name="matriculaModel"></param>
        public void Remover(int idMatricula)
        {
            unitOfWork.RepositorioMatricula.Remover(mat => mat.Id_Matricula == idMatricula);
            unitOfWork.Commit(shared);
        }


        /// <summary>
        /// Consulta padrão para retornar dados do autor como model
        /// </summary>
        /// <returns></returns>
        private IQueryable<MatriculaModel> GetQuery()
        {
            IQueryable<tb_matricula> tb_matricula = unitOfWork.RepositorioMatricula.GetQueryable();
            var query = from matricula in tb_matricula 
                        select new MatriculaModel
                        {
                            Id_Matricula = matricula.Id_Matricula,
                            Id_Turma = matricula.Id_Turma,
                            Id_Usuario = matricula.Id_Usuario
                        };
            return query;
        }

        /// <summary>
        /// Obter todos as entidades cadastradas
        /// </summary>
        /// <returns></returns>
        public IEnumerable<MatriculaModel> ObterTodos()
        {
            IEnumerable<MatriculaModel> matriculas = GetQuery();
            return matriculas;
        }

        public MatriculaModel Obter(int idMatricula)
        {
            IEnumerable<MatriculaModel> mats = GetQuery().Where(mat => mat.Id_Matricula == idMatricula);

            return mats.ElementAtOrDefault(0);
        }

        public IEnumerable<MatriculaModel> ObterPorTurma(int idTurma)
        {
            IEnumerable<MatriculaModel> mats = GetQuery().Where(matriculaModel => matriculaModel.Id_Turma == idTurma);

            return mats;
        }

        public IEnumerable<MatriculaModel> ObterPorUser(int idUser)
        {
            IEnumerable<MatriculaModel> mats = GetQuery().Where(matriculaModel => matriculaModel.Id_Usuario == idUser);

            return mats;
        }

        /// <summary>
        /// Atribui dados do Usuario Model para o Usuario Entity
        /// </summary>
        /// <param name="matriculaModel">Objeto do modelo</param>
        /// <param name="matriculaE">Entity mapeada da base de dados</param>
        private void Atribuir(MatriculaModel matriculaModel, tb_matricula matriculaE)
        {
            matriculaE.Id_Turma = matriculaModel.Id_Turma;
            matriculaE.Id_Matricula = matriculaModel.Id_Matricula;
            matriculaE.Id_Usuario = matriculaModel.Id_Usuario;
        }
    }
}