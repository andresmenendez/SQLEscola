using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Persistence;
using SQLEscola.Models;
using SQLEscola.Banco;

namespace SQLEscola.Gerenciadores
{
    public class GerenciadorAtivarPerfil
    {
        private IUnitOfWork unitOfWork;
        private bool shared;

        private static GerenciadorAtivarPerfil gAtivarPerfil;

        private GerenciadorAtivarPerfil()
        {
            this.unitOfWork = new UnitOfWork();
            shared = false;
        }

        public static GerenciadorAtivarPerfil GetInstance()
        {
            if (gAtivarPerfil == null)
            {
                gAtivarPerfil = new GerenciadorAtivarPerfil();
            }
            return gAtivarPerfil;
        }

        /// <summary>
        /// Construtor acessado apenas dentro do componentes service e permite compartilhar
        /// contexto com outras classes de negócio
        /// </summary>
        /// <param name="unitOfWork"></param>
        internal GerenciadorAtivarPerfil(IUnitOfWork unitOfWork)
        {
            this.unitOfWork = unitOfWork;
            shared = true;
        }

        /// <summary>
        /// Insere um novo na base de dados
        /// </summary>
        /// <param name="ativar_perfilModel">Dados do modelo</param>
        /// <returns>Chave identificante na base</returns>
        public int Inserir(PerfilModel ativar_perfilModel)
        {
            tb_ativar_perfil perfilE = new tb_ativar_perfil();
            Atribuir(ativar_perfilModel, perfilE);
            unitOfWork.RepositorioAtivarPerfil.Inserir(perfilE);
            unitOfWork.Commit(shared);
            return perfilE.Id_Ativar_Perfil;
        }

        /// <summary>
        /// Altera dados na base de dados
        /// </summary>
        /// <param name="ativar_perfilModel"></param>
        public void Editar(PerfilModel ativar_perfilModel)
        {
            tb_ativar_perfil perfilE = new tb_ativar_perfil(); 
            Atribuir(ativar_perfilModel, perfilE);
            unitOfWork.RepositorioAtivarPerfil.Editar(perfilE);
            unitOfWork.Commit(shared);
        }

        /// <summary>
        /// Remove da base de dados
        /// </summary>
        /// <param name="ativar_perfilModel"></param>
        public void Remover(int idAtivarPerfil)
        {
            unitOfWork.RepositorioAtivarPerfil.Remover(user => user.Id_Ativar_Perfil == idAtivarPerfil);
            unitOfWork.Commit(shared);
        }


        /// <summary>
        /// Consulta padrão para retornar dados do autor como model
        /// </summary>
        /// <returns></returns>
        private IQueryable<PerfilModel> GetQuery()
        {
            IQueryable<tb_ativar_perfil> tb_ativar_perfil = unitOfWork.RepositorioAtivarPerfil.GetQueryable();
            var query = from user in tb_ativar_perfil 
                        select new PerfilModel
                        {
                            Id_Usuario = user.Id_Usuario,
                            Id_Ativar_Perfil = user.Id_Ativar_Perfil,
                            Status = user.Status
                        };
            return query;
        }

        /// <summary>
        /// Obter todos as entidades cadastradas
        /// </summary>
        /// <returns></returns>
        public IEnumerable<PerfilModel> ObterTodos()
        {
            return GetQuery();
        }

        public IEnumerable<PerfilModel> ObterPorUser(int idUsuario)
        {
            return GetQuery().Where(ativar => ativar.Id_Usuario == idUsuario);
        }

        public bool SolicitacaoFeita(int idUsuario)
        {
            IEnumerable<PerfilModel> lista = GetQuery().Where(ativar_perfilModel => ativar_perfilModel.Id_Usuario == idUsuario);
            PerfilModel perfil = lista.ElementAtOrDefault(0);
            if (perfil == null)
            {

                return false;
            }
            else
            {
                return true;
            }
        }

        
        /// <summary>
        /// Obtém um autor
        /// </summary>
        /// <param name="idUsuario">Identificador do autor na base de dados</param>
        /// <returns>Usuario model</returns>
        public PerfilModel Obter(int idAtivar)
        {
            IEnumerable<PerfilModel> users = GetQuery().Where(ativar_perfilModel => ativar_perfilModel.Id_Ativar_Perfil == idAtivar);

            return users.ElementAtOrDefault(0);
        }


        /// <summary>
        /// Atribui dados do Usuario Model para o Usuario Entity
        /// </summary>
        /// <param name="ativar_perfilModel">Objeto do modelo</param>
        /// <param name="perfilE">Entity mapeada da base de dados</param>
        private void Atribuir(PerfilModel ativar_perfilModel, tb_ativar_perfil perfilE)
        {
            perfilE.Id_Usuario = ativar_perfilModel.Id_Usuario;
            perfilE.Id_Ativar_Perfil = ativar_perfilModel.Id_Ativar_Perfil;
            perfilE.Status = ativar_perfilModel.Status;
            
        }
    }
}