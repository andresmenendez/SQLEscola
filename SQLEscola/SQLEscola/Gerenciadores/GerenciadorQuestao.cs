using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Persistence;
using SQLEscola.Models;
using SQLEscola.Banco;
using System.Web.Security;
using System.Web.Routing;

namespace SQLEscola.Gerenciadores
{
    public class GerenciadorQuestao
    {
        private IUnitOfWork unitOfWork;
        private bool shared;

        private static GerenciadorQuestao gQuestao;

        private GerenciadorQuestao()
        {
            this.unitOfWork = new UnitOfWork();
            shared = false;
        }

        public static GerenciadorQuestao GetInstance()
        {
            if (gQuestao == null)
            {
                gQuestao = new GerenciadorQuestao();
            }
            return gQuestao;
        }

        /// <summary>
        /// Construtor acessado apenas dentro do componentes service e permite compartilhar
        /// contexto com outras classes de negócio
        /// </summary>
        /// <param name="unitOfWork"></param>
        internal GerenciadorQuestao(IUnitOfWork unitOfWork)
        {
            this.unitOfWork = unitOfWork;
            shared = true;
        }

        /// <summary>
        /// Insere um novo na base de dados
        /// </summary>
        /// <param name="questaoModel">Dados do modelo</param>
        /// <returns>Chave identificante na base</returns>
        public int Inserir(QuestaoModel questaoModel)
        {
            tb_questao questaoE = new tb_questao();
            Atribuir(questaoModel, questaoE);
            unitOfWork.RepositorioQuestao.Inserir(questaoE);
            unitOfWork.Commit(shared);
            return questaoE.Id_Questao;
        }

        /// <summary>
        /// Altera dados na base de dados
        /// </summary>
        /// <param name="questaoModel"></param>
        public void Editar(QuestaoModel questaoModel)
        {
            tb_questao questaoE = new tb_questao(); 
            Atribuir(questaoModel, questaoE);
            unitOfWork.RepositorioQuestao.Editar(questaoE);
            unitOfWork.Commit(shared);
        }

        /// <summary>
        /// Remove da base de dados
        /// </summary>
        /// <param name="questaoModel"></param>
        public void Remover(int idQuestao)
        {
            unitOfWork.RepositorioQuestao.Remover(user => user.Id_Questao == idQuestao);
            unitOfWork.Commit(shared);
        }


        /// <summary>
        /// Consulta padrão para retornar dados do autor como model
        /// </summary>
        /// <returns></returns>
        private IQueryable<QuestaoModel> GetQuery()
        {
            IQueryable<tb_questao> tb_questao = unitOfWork.RepositorioQuestao.GetQueryable();
            var query = from questao in tb_questao 
                        select new QuestaoModel
                        {
                            Id_Questao = questao.Id_Questao,
                            Id_Tecnologia = questao.Id_Tecnologia,
                            Id_Atividade = questao.Id_Atividade,
                            Ordem = (int)questao.Ordem,
                            Descricao = questao.Descricao,
                            DataCriacao = questao.Data_Criacao,
                            DataAlteracao = questao.Data_Alteracao,
                            ScriptCriacao = questao.ScriptCriacao,
                            ScriptPovoamento = questao.ScriptPovoamento,
                            ScriptResultado = questao.ScriptResolucao,
                            Status = questao.Status,
                            NomeProcedimento = questao.NomeProcedResolucao,
                            CasosTeste = questao.CasosTeste
                        };
            return query;
        }

        /// <summary>
        /// Obter todos as entidades cadastradas
        /// </summary>
        /// <returns></returns>
        public IEnumerable<QuestaoModel> ObterTodos()
        {
            IEnumerable<QuestaoModel> turmas = GetQuery().OrderBy(turma => turma.Ordem);
            
            return turmas;
        }

        
        /// <summary>
        /// Obtém um autor
        /// </summary>
        /// <param name="idTurma">Identificador do autor na base de dados</param>
        /// <returns>Usuario model</returns>
        public QuestaoModel Obter(int idQuestao)
        {
            IEnumerable<QuestaoModel> users = GetQuery().Where(questaoModel => questaoModel.Id_Questao == idQuestao);
            
            return users.ElementAtOrDefault(0);
        }


        public IEnumerable<QuestaoModel> ObterPorAtividadeValidas(int idAtividade)
        {
            IEnumerable<QuestaoModel> questoes = GetQuery().Where(questaoModel => questaoModel.Id_Atividade == idAtividade && 
                questaoModel.Status == "V").
                OrderBy(quest => quest.Ordem);
            
            return questoes;
        }

        public IEnumerable<QuestaoModel> ObterPorAtividade(int idAtividade)
        {
            IEnumerable<QuestaoModel> questoes = GetQuery().Where(questaoModel => questaoModel.Id_Atividade == idAtividade).
                OrderBy(quest => quest.Ordem);

            return questoes;
        }

        public QuestaoModel ObterPorData(DateTime data)
        {
            IEnumerable<QuestaoModel> resps = GetQuery().Where(resp => resp.DataCriacao == data).OrderBy(quest => quest.Id_Questao);

            return resps.FirstOrDefault();
        }


        /// <summary>
        /// Atribui dados do Usuario Model para o Usuario Entity
        /// </summary>
        /// <param name="questaoModel">Objeto do modelo</param>
        /// <param name="questaoE">Entity mapeada da base de dados</param>
        private void Atribuir(QuestaoModel questao, tb_questao questaoE)
        {
            questaoE.Id_Questao = questao.Id_Questao;
            questaoE.Id_Tecnologia = questao.Id_Tecnologia;
            questaoE.Id_Atividade = questao.Id_Atividade;
            questaoE.Ordem = questao.Ordem;
            questaoE.Descricao = questao.Descricao;
            questaoE.Data_Criacao = questao.DataCriacao;
            questaoE.Data_Alteracao = questao.DataAlteracao;
            questaoE.ScriptCriacao = questao.ScriptCriacao;
            questaoE.ScriptPovoamento = questao.ScriptPovoamento;
            questaoE.ScriptResolucao = questao.ScriptResultado;
            questaoE.Status = questao.Status;
            questaoE.CasosTeste = questao.CasosTeste;
            questaoE.NomeProcedResolucao = questao.NomeProcedimento;
        }
    }
}