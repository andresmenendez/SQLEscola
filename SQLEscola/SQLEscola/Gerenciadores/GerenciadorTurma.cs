using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Persistence;
using SQLEscola.Models;
using SQLEscola.Banco;

namespace SQLEscola.Gerenciadores
{
    public class GerenciadorTurma
    {
        private IUnitOfWork unitOfWork;
        private bool shared;

        private static GerenciadorTurma gTurma;

        private GerenciadorTurma()
        {
            this.unitOfWork = new UnitOfWork();
            shared = false;
        }

        public static GerenciadorTurma GetInstance()
        {
            if (gTurma == null)
            {
                gTurma = new GerenciadorTurma();
            }
            return gTurma;
        }

        /// <summary>
        /// Construtor acessado apenas dentro do componentes service e permite compartilhar
        /// contexto com outras classes de negócio
        /// </summary>
        /// <param name="unitOfWork"></param>
        internal GerenciadorTurma(IUnitOfWork unitOfWork)
        {
            this.unitOfWork = unitOfWork;
            shared = true;
        }

        /// <summary>
        /// Insere um novo na base de dados
        /// </summary>
        /// <param name="turmaModel">Dados do modelo</param>
        /// <returns>Chave identificante na base</returns>
        public int Inserir(TurmaModel turmaModel)
        {
            tb_turma turmaE = new tb_turma();
            Atribuir(turmaModel, turmaE);
            unitOfWork.RepositorioTurma.Inserir(turmaE);
            unitOfWork.Commit(shared);
            return turmaE.Id_Turma;
        }

        /// <summary>
        /// Altera dados na base de dados
        /// </summary>
        /// <param name="turmaModel"></param>
        public void Editar(TurmaModel turmaModel)
        {
            tb_turma turmaE = new tb_turma(); 
            Atribuir(turmaModel, turmaE);
            unitOfWork.RepositorioTurma.Editar(turmaE);
            unitOfWork.Commit(shared);
        }

        /// <summary>
        /// Remove da base de dados
        /// </summary>
        /// <param name="turmaModel"></param>
        public void Remover(int idTurma)
        {
            unitOfWork.RepositorioTurma.Remover(user => user.Id_Turma == idTurma);
            unitOfWork.Commit(shared);
        }


        /// <summary>
        /// Consulta padrão para retornar dados do autor como model
        /// </summary>
        /// <returns></returns>
        private IQueryable<TurmaModel> GetQuery()
        {
            IQueryable<tb_turma> tb_turma = unitOfWork.RepositorioTurma.GetQueryable();
            var query = from turma in tb_turma 
                        select new TurmaModel
                        {
                            Id_Turma = turma.Id_Turma,
                            Turma = turma.Nome
                        };
            return query;
        }

        /// <summary>
        /// Obter todos as entidades cadastradas
        /// </summary>
        /// <returns></returns>
        public IEnumerable<TurmaModel> ObterTodos()
        {
            return GetQuery();
        }

        
        /// <summary>
        /// Obtém um autor
        /// </summary>
        /// <param name="idTurma">Identificador do autor na base de dados</param>
        /// <returns>Usuario model</returns>
        public TurmaModel Obter(int idTurma)
        {
            IEnumerable<TurmaModel> users = GetQuery().Where(turmaModel => turmaModel.Id_Turma == idTurma);

            return users.ElementAtOrDefault(0);
        }


        /// <summary>
        /// Obtém um user pelo nome
        /// </summary>
        /// <param name="nome">Nome do user que será buscado base de dados</param>
        /// <returns>Usuario model</returns>
        public TurmaModel ObterPorNome(string nome)
        {
            IEnumerable<TurmaModel> turmas = GetQuery().Where(turmaModel => turmaModel.Turma.Equals(nome));

            return turmas.ElementAtOrDefault(0);
        }

        /// <summary>
        /// Atribui dados do Usuario Model para o Usuario Entity
        /// </summary>
        /// <param name="turmaModel">Objeto do modelo</param>
        /// <param name="turmaE">Entity mapeada da base de dados</param>
        private void Atribuir(TurmaModel turmaModel, tb_turma turmaE)
        {
            turmaE.Id_Turma = turmaModel.Id_Turma;
            turmaE.Nome = turmaModel.Turma;
        }
    }
}