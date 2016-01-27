using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Persistence;
using SQLEscola.Models;
using SQLEscola.Banco;
using System.Web.Security;

namespace SQLEscola.Gerenciadores
{
    public class GerenciadorResposta
    {
        private IUnitOfWork unitOfWork;
        private bool shared;

        private static GerenciadorResposta gResposta;

        private GerenciadorResposta()
        {
            this.unitOfWork = new UnitOfWork();
            shared = false;
        }

        public static GerenciadorResposta GetInstance()
        {
            if (gResposta == null)
            {
                gResposta = new GerenciadorResposta();
            }
            return gResposta;
        }

        /// <summary>
        /// Construtor acessado apenas dentro do componentes service e permite compartilhar
        /// contexto com outras classes de negócio
        /// </summary>
        /// <param name="unitOfWork"></param>
        internal GerenciadorResposta(IUnitOfWork unitOfWork)
        {
            this.unitOfWork = unitOfWork;
            shared = true;
        }

        /// <summary>
        /// Insere um novo na base de dados
        /// </summary>
        /// <param name="respostaModel">Dados do modelo</param>
        /// <returns>Chave identificante na base</returns>
        public int Inserir(RespostaModel respostaModel)
        {
            tb_resposta respostaE = new tb_resposta();
            Atribuir(respostaModel, respostaE);
            unitOfWork.RepositorioResposta.Inserir(respostaE);
            unitOfWork.Commit(shared);
            return respostaE.Id_Questao;
        }

        /// <summary>
        /// Altera dados na base de dados
        /// </summary>
        /// <param name="respostaModel"></param>
        public void Editar(RespostaModel respostaModel)
        {
            tb_resposta respostaE = new tb_resposta(); 
            Atribuir(respostaModel, respostaE);
            unitOfWork.RepositorioResposta.Editar(respostaE);
            unitOfWork.Commit(shared);
        }

        /// <summary>
        /// Remove da base de dados
        /// </summary>
        /// <param name="respostaModel"></param>
        public void Remover(int idResposta)
        {
            unitOfWork.RepositorioResposta.Remover(user => user.Id_Resposta == idResposta);
            unitOfWork.Commit(shared);
        }


        /// <summary>
        /// Consulta padrão para retornar dados do autor como model
        /// </summary>
        /// <returns></returns>
        private IQueryable<RespostaModel> GetQuery()
        {
            IQueryable<tb_resposta> tb_resposta = unitOfWork.RepositorioResposta.GetQueryable();
            var query = from resp in tb_resposta 
                        select new RespostaModel
                        {
                            Id_Questao = resp.Id_Questao,
                            Id_Resposta = resp.Id_Resposta,
                            Id_Usuario = resp.Id_Usuario,
                            ScriptResposta = resp.ScriptResposta,
                            DataResposta = resp.Data_Resposta
                        };
            return query;
        }

        /// <summary>
        /// Obter todos as entidades cadastradas
        /// </summary>
        /// <returns></returns>
        public IEnumerable<RespostaModel> ObterTodos()
        {
            IEnumerable<RespostaModel> resp = GetQuery().OrderBy(turma => turma.Id_Usuario);
            
            return resp;
        }

        public RespostaModel Obter(int idResposta)
        {
            IEnumerable<RespostaModel> users = GetQuery().Where(respostaModel => respostaModel.Id_Resposta == idResposta);
            
            return users.ElementAtOrDefault(0);
        }

        public RespostaModel ObterPorUsuario(int idUsuario)
        {
            IEnumerable<RespostaModel> resps = GetQuery().Where(resp => resp.Id_Usuario == idUsuario).OrderBy(quest => quest.Id_Usuario);

            return resps.FirstOrDefault();
        }

        public RespostaModel ObterPorData(DateTime data)
        {
            IEnumerable<RespostaModel> resps = GetQuery().Where(resp => resp.DataResposta == data).OrderBy(quest => quest.Id_Usuario);

            return resps.FirstOrDefault();
        }

        public IEnumerable<RespostaModel> ObterPorQuestao(int idQuestao)
        {
            IEnumerable<RespostaModel> resps = GetQuery().Where(resp => resp.Id_Questao == idQuestao).OrderBy(quest => quest.Id_Usuario);

            return resps;
        }

        public IEnumerable<RespostaModel> ObterPorQuestaoUsuario(int idQuestao, int idUser)
        {
            IEnumerable<RespostaModel> resps = GetQuery().Where(resp => resp.Id_Questao == idQuestao
                & resp.Id_Usuario == idUser).OrderByDescending(quest => quest.DataResposta);

            return resps;
        }

        public IEnumerable<RespostaModel> ObterApenasUsuarioResposta(int idQuestao)
        {
            IEnumerable<RespostaModel> resps = GetQuery().Where(resp => resp.Id_Questao == idQuestao)
                .OrderBy(quest => quest.Id_Usuario);
            List<RespostaModel> lista = resps.ToList();
            //Realizando um DISTINCT por Id_Usuario
            var DistinctItems = lista.GroupBy(x => x.Id_Usuario).Select(y => y.First());
            foreach (var item in DistinctItems)
            {
                item.Usuario = GerenciadorUsuario.GetInstance().Obter(item.Id_Usuario).Nome;
            }
            return DistinctItems;
        }

        /// <summary>
        /// Atribui dados do Usuario Model para o Usuario Entity
        /// </summary>
        /// <param name="respostaModel">Objeto do modelo</param>
        /// <param name="respostaE">Entity mapeada da base de dados</param>
        private void Atribuir(RespostaModel resp, tb_resposta respostaE)
        {
            respostaE.Id_Questao = resp.Id_Questao;
            respostaE.Data_Resposta = resp.DataResposta.Value;
            respostaE.Id_Resposta = resp.Id_Resposta;
            respostaE.Id_Usuario = resp.Id_Usuario;
            respostaE.ScriptResposta = resp.ScriptResposta;
        }
    }
}