using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Persistence;
using SQLEscola.Models;
using SQLEscola.Banco;

namespace SQLEscola.Gerenciadores
{
    public class GerenciadorArquivo
    {
        private IUnitOfWork unitOfWork;
        private bool shared;

        private static GerenciadorArquivo gArquivo;

        private GerenciadorArquivo()
        {
            this.unitOfWork = new UnitOfWork();
            shared = false;
        }

        public static GerenciadorArquivo GetInstance()
        {
            if (gArquivo == null)
            {
                gArquivo = new GerenciadorArquivo();
            }
            return gArquivo;
        }

        /// <summary>
        /// Construtor acessado apenas dentro do componentes service e permite compartilhar
        /// contexto com outras classes de negócio
        /// </summary>
        /// <param name="unitOfWork"></param>
        internal GerenciadorArquivo(IUnitOfWork unitOfWork)
        {
            this.unitOfWork = unitOfWork;
            shared = true;
        }

        /// <summary>
        /// Insere um novo na base de dados
        /// </summary>
        /// <param name="arquivoModel">Dados do modelo</param>
        /// <returns>Chave identificante na base</returns>
        public int Inserir(ArquivoModel arquivoModel)
        {
            tb_arquivo arquivoE = new tb_arquivo();
            Atribuir(arquivoModel, arquivoE);
            unitOfWork.RepositorioArquivo.Inserir(arquivoE);
            unitOfWork.Commit(shared);
            return arquivoE.Id_Arquivo;
        }

        /// <summary>
        /// Altera dados na base de dados
        /// </summary>
        /// <param name="arquivoModel"></param>
        public void Editar(ArquivoModel arquivoModel)
        {
            tb_arquivo arquivoE = new tb_arquivo(); 
            Atribuir(arquivoModel, arquivoE);
            unitOfWork.RepositorioArquivo.Editar(arquivoE);
            unitOfWork.Commit(shared);
        }

        /// <summary>
        /// Remove da base de dados
        /// </summary>
        /// <param name="arquivoModel"></param>
        public void Remover(int idArquivo)
        {
            unitOfWork.RepositorioArquivo.Remover(mat => mat.Id_Arquivo == idArquivo);
            unitOfWork.Commit(shared);
        }


        /// <summary>
        /// Consulta padrão para retornar dados do autor como model
        /// </summary>
        /// <returns></returns>
        private IQueryable<ArquivoModel> GetQuery()
        {
            IQueryable<tb_arquivo> tb_arquivo = unitOfWork.RepositorioArquivo.GetQueryable();
            var query = from arq in tb_arquivo 
                        select new ArquivoModel
                        {
                            Id_Arquivo = arq.Id_Arquivo,
                            Id_Questao = arq.Id_Questao,
                            Nome = arq.Nome,
                            Tipo = arq.Tipo,
                            ArrayBytes = arq.Arquivo
                        };
            return query;
        }

        /// <summary>
        /// Obter todos as entidades cadastradas
        /// </summary>
        /// <returns></returns>
        public IEnumerable<ArquivoModel> ObterTodos()
        {
            IEnumerable<ArquivoModel> arquivos = GetQuery();
            return arquivos;
        }

        public ArquivoModel Obter(int idArquivo)
        {
            IEnumerable<ArquivoModel> arqs = GetQuery().Where(mat => mat.Id_Arquivo == idArquivo);

            return arqs.ElementAtOrDefault(0);
        }


        public ArquivoModel ObterPorQuestao(int idQuestao)
        {
            IEnumerable<ArquivoModel> arqs = GetQuery().Where(mat => mat.Id_Questao == idQuestao);

            return arqs.ElementAtOrDefault(0);
        }

        /// <summary>
        /// Atribui dados do Usuario Model para o Usuario Entity
        /// </summary>
        /// <param name="arquivoModel">Objeto do modelo</param>
        /// <param name="arquivoE">Entity mapeada da base de dados</param>
        private void Atribuir(ArquivoModel arquivoModel, tb_arquivo arquivoE)
        {
            arquivoE.Id_Arquivo = arquivoModel.Id_Arquivo;
            arquivoE.Id_Questao = arquivoModel.Id_Questao;
            arquivoE.Nome = arquivoModel.Nome;
            arquivoE.Tipo = arquivoModel.Tipo;
            Global global = new Global();
            arquivoE.Arquivo = global.ConvertToByte(arquivoModel.Arquivo);
        }
    }
}