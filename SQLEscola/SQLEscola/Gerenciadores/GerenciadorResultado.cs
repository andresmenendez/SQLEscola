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
    public class GerenciadorResultado
    {
        private IUnitOfWork unitOfWork;
        private bool shared;

        private static GerenciadorResultado gResultado;

        private GerenciadorResultado()
        {
            this.unitOfWork = new UnitOfWork();
            shared = false;
        }

        public static GerenciadorResultado GetInstance()
        {
            if (gResultado == null)
            {
                gResultado = new GerenciadorResultado();
            }
            return gResultado;
        }

        /// <summary>
        /// Construtor acessado apenas dentro do componentes service e permite compartilhar
        /// contexto com outras classes de negócio
        /// </summary>
        /// <param name="unitOfWork"></param>
        internal GerenciadorResultado(IUnitOfWork unitOfWork)
        {
            this.unitOfWork = unitOfWork;
            shared = true;
        }

        /// <summary>
        /// Insere um novo na base de dados
        /// </summary>
        /// <param name="resultadoModel">Dados do modelo</param>
        /// <returns>Chave identificante na base</returns>
        public int Inserir(ResultadoModel resultadoModel)
        {
            tb_resultado resultadoE = new tb_resultado();
            Atribuir(resultadoModel, resultadoE);
            unitOfWork.RepositorioResultado.Inserir(resultadoE);
            unitOfWork.Commit(shared);
            return resultadoE.Id_Resultado;
        }

        /// <summary>
        /// Altera dados na base de dados
        /// </summary>
        /// <param name="resultadoModel"></param>
        public void Editar(ResultadoModel resultadoModel)
        {
            tb_resultado resultadoE = new tb_resultado(); 
            Atribuir(resultadoModel, resultadoE);
            unitOfWork.RepositorioResultado.Editar(resultadoE);
            unitOfWork.Commit(shared);
        }

        /// <summary>
        /// Remove da base de dados
        /// </summary>
        /// <param name="resultadoModel"></param>
        public void Remover(int idResultado)
        {
            unitOfWork.RepositorioResultado.Remover(user => user.Id_Resultado == idResultado);
            unitOfWork.Commit(shared);
        }


        /// <summary>
        /// Consulta padrão para retornar dados do autor como model
        /// </summary>
        /// <returns></returns>
        private IQueryable<ResultadoModel> GetQuery()
        {
            IQueryable<tb_resultado> tb_resultado = unitOfWork.RepositorioResultado.GetQueryable();
            var query = from result in tb_resultado 
                        select new ResultadoModel
                        {
                            Id_Resultado = result.Id_Resultado,
                            Id_Resposta = result.Id_Resposta,
                            Erros = result.Erros,
                            Comentarios_Prof = result.Comentarios_Prof
                        };
            return query;
        }

        /// <summary>
        /// Obter todos as entidades cadastradas
        /// </summary>
        /// <returns></returns>
        public IEnumerable<ResultadoModel> ObterTodos()
        {
            IEnumerable<ResultadoModel> resp = GetQuery().OrderBy(turma => turma.Id_Resultado);
            
            return resp;
        }

        public ResultadoModel Obter(int idResultado)
        {
            IEnumerable<ResultadoModel> users = GetQuery().Where(resultadoModel => resultadoModel.Id_Resposta == idResultado);
            
            return users.ElementAtOrDefault(0);
        }

        public ResultadoModel ObterPorResposta(int idResposta)
        {
            IEnumerable<ResultadoModel> resps = GetQuery().Where(resp => resp.Id_Resposta == idResposta).OrderBy(quest => quest.Id_Resposta);

            return resps.FirstOrDefault();
        }

        
        private void Atribuir(ResultadoModel resp, tb_resultado resultadoE)
        {
            resultadoE.Id_Resposta = resp.Id_Resposta;
            resultadoE.Id_Resultado = resp.Id_Resultado;
            resultadoE.Erros = resp.Erros;
            resultadoE.Comentarios_Prof = resp.Comentarios_Prof;
        }
    }
}