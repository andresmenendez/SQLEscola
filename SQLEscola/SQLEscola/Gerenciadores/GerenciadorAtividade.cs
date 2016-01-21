using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Persistence;
using SQLEscola.Models;
using SQLEscola.Banco;

namespace SQLEscola.Gerenciadores
{
    public class GerenciadorAtividade
    {
        private IUnitOfWork unitOfWork;
        private bool shared;

        private static GerenciadorAtividade gAtividade;

        private GerenciadorAtividade()
        {
            this.unitOfWork = new UnitOfWork();
            shared = false;
        }

        public static GerenciadorAtividade GetInstance()
        {
            if (gAtividade == null)
            {
                gAtividade = new GerenciadorAtividade();
            }
            return gAtividade;
        }

        /// <summary>
        /// Construtor acessado apenas dentro do componentes service e permite compartilhar
        /// contexto com outras classes de negócio
        /// </summary>
        /// <param name="unitOfWork"></param>
        internal GerenciadorAtividade(IUnitOfWork unitOfWork)
        {
            this.unitOfWork = unitOfWork;
            shared = true;
        }

        /// <summary>
        /// Insere um novo na base de dados
        /// </summary>
        /// <param name="atividadeModel">Dados do modelo</param>
        /// <returns>Chave identificante na base</returns>
        public int Inserir(AtividadeModel atividadeModel)
        {
            tb_atividade atividadeE = new tb_atividade();
            Atribuir(atividadeModel, atividadeE);
            unitOfWork.RepositorioAtividade.Inserir(atividadeE);
            unitOfWork.Commit(shared);
            return atividadeE.Id_Atividade;
        }

        /// <summary>
        /// Altera dados na base de dados
        /// </summary>
        /// <param name="atividadeModel"></param>
        public void Editar(AtividadeModel atividadeModel)
        {
            tb_atividade atividadeE = new tb_atividade(); 
            Atribuir(atividadeModel, atividadeE);
            unitOfWork.RepositorioAtividade.Editar(atividadeE);
            unitOfWork.Commit(shared);
        }

        /// <summary>
        /// Remove da base de dados
        /// </summary>
        /// <param name="atividadeModel"></param>
        public void Remover(int idAtividade)
        {
            unitOfWork.RepositorioAtividade.Remover(mat => mat.Id_Atividade == idAtividade);
            unitOfWork.Commit(shared);
        }


        /// <summary>
        /// Consulta padrão para retornar dados do autor como model
        /// </summary>
        /// <returns></returns>
        private IQueryable<AtividadeModel> GetQuery()
        {
            IQueryable<tb_atividade> tb_atividade = unitOfWork.RepositorioAtividade.GetQueryable();
            var query = from ativ in tb_atividade 
                        select new AtividadeModel
                        {
                            Id_Atividade = ativ.Id_Atividade,
                            Id_Turma = ativ.Id_Turma,
                            Nome_Atividade = ativ.Nome_Atividade
                        };
            return query;
        }

        /// <summary>
        /// Obter todos as entidades cadastradas
        /// </summary>
        /// <returns></returns>
        public IEnumerable<AtividadeModel> ObterTodos()
        {
            IEnumerable<AtividadeModel> matriculas = GetQuery();
            return matriculas;
        }

        public AtividadeModel Obter(int idAtividade)
        {
            IEnumerable<AtividadeModel> mats = GetQuery().Where(mat => mat.Id_Atividade == idAtividade);

            return mats.ElementAtOrDefault(0);
        }

        public bool ExisteAtividade(string atividade, int idTurma)
        {
            IEnumerable<AtividadeModel> mats = GetQuery().Where(mat => mat.Nome_Atividade.Equals(atividade) && 
                mat.Id_Turma == idTurma);
            List<AtividadeModel> listaAtivs = mats.ToList();
            AtividadeModel ativ = listaAtivs.FirstOrDefault();
            if (ativ == null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public IEnumerable<AtividadeModel> ObterPorTurma(int idTurma)
        {
            IEnumerable<AtividadeModel> ativs = GetQuery().Where(atividadeModel => atividadeModel.Id_Turma == idTurma).
                OrderBy(atividadeModel => atividadeModel.Nome_Atividade);
            //TODO loop em cada atividade buscando a qtde de questões.
            List<AtividadeModel> listaAtiv = ativs.ToList();
            foreach (AtividadeModel item in listaAtiv)
            {
                item.QtdeQuestoes = GerenciadorQuestao.GetInstance().ObterPorAtividade(item.Id_Atividade).Count();
            }
            return listaAtiv;
        }

        /// <summary>
        /// Atribui dados do Usuario Model para o Usuario Entity
        /// </summary>
        /// <param name="atividadeModel">Objeto do modelo</param>
        /// <param name="atividadeE">Entity mapeada da base de dados</param>
        private void Atribuir(AtividadeModel atividadeModel, tb_atividade atividadeE)
        {
            atividadeE.Id_Turma = atividadeModel.Id_Turma;
            atividadeE.Id_Atividade = atividadeModel.Id_Atividade;
            atividadeE.Nome_Atividade = atividadeModel.Nome_Atividade;
        }
    }
}