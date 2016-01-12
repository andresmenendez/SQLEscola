using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SQLEscola;
using Persistence;
using SQLEscola.Banco;

namespace Persistence
{
    /// <summary>
    /// UnitWork é um padrão de projeto que permite trabalhar 
    /// com vários repositórios compartilhando um mesmo contexto
    /// transacional
    /// </summary>
    public class UnitOfWork : IDisposable, IUnitOfWork
    {
        private sqlescolaEntities _context;
        private IRepositorioGenerico<tb_atividade> _repAtividade;
        private IRepositorioGenerico<tb_ativar_perfil> _repAtivarPerfil;
        private IRepositorioGenerico<tb_matricula> _repMatricula;
        private IRepositorioGenerico<tb_questao> _repQuestao;
        private IRepositorioGenerico<tb_resposta> _repResposta;
        private IRepositorioGenerico<tb_restricao> _repRestricao;
        private IRepositorioGenerico<tb_resultado> _repResultado;
        private IRepositorioGenerico<tb_tecnologia> _repTecnologia;
        private IRepositorioGenerico<tb_turma> _repTurma;
        private IRepositorioGenerico<tb_usuario> _repUsuario;
        
        /// <summary>
        /// Construtor cria contexto transacional
        /// </summary>
        public UnitOfWork()
        {
            _context = new SQLEscola.Banco.sqlescolaEntities();
        }
        
        #region IUnitOfWork Members

        public IRepositorioGenerico<tb_ativar_perfil> RepositorioAtivarPerfil
        {
            get
            {
                if (_repAtivarPerfil == null)
                {
                    _repAtivarPerfil = new RepositorioGenerico<tb_ativar_perfil>(_context);
                }

                return _repAtivarPerfil;
            }
        }

        public IRepositorioGenerico<tb_matricula> RepositorioMatricula
        {
            get
            {
                if (_repMatricula == null)
                {
                    _repMatricula = new RepositorioGenerico<tb_matricula>(_context);
                }

                return _repMatricula;
            }
        }

        public IRepositorioGenerico<tb_usuario> RepositorioUsuario
        {
            get
            {
                if (_repUsuario == null)
                {
                    _repUsuario = new RepositorioGenerico<tb_usuario>(_context);
                }

                return _repUsuario;
            }
        }

        public IRepositorioGenerico<tb_turma> RepositorioTurma
        {
            get
            {
                if (_repTurma == null)
                {
                    _repTurma = new RepositorioGenerico<tb_turma>(_context);
                }

                return _repTurma;
            }
        }

        public IRepositorioGenerico<tb_tecnologia> RepositorioTecnologia
        {
            get
            {
                if (_repTecnologia == null)
                {
                    _repTecnologia = new RepositorioGenerico<tb_tecnologia>(_context);
                }

                return _repTecnologia;
            }
        }

        public IRepositorioGenerico<tb_resultado> RepositorioResultado
        {
            get
            {
                if (_repResultado == null)
                {
                    _repResultado = new RepositorioGenerico<tb_resultado>(_context);
                }

                return _repResultado;
            }
        }

        public IRepositorioGenerico<tb_restricao> RepositorioRestricao
        {
            get
            {
                if (_repRestricao == null)
                {
                    _repRestricao = new RepositorioGenerico<tb_restricao>(_context);
                }

                return _repRestricao;
            }
        }

        public IRepositorioGenerico<tb_resposta> RepositorioResposta
        {
            get
            {
                if (_repResposta == null)
                {
                    _repResposta = new RepositorioGenerico<tb_resposta>(_context);
                }

                return _repResposta;
            }
        }

        public IRepositorioGenerico<tb_questao> RepositorioQuestao
        {
            get
            {
                if (_repQuestao == null)
                {
                    _repQuestao = new RepositorioGenerico<tb_questao>(_context);
                }

                return _repQuestao;
            }
        }

        /// <summary>
        /// Repositório para manipular dados persistidos de Atividades
        /// </summary>
        public IRepositorioGenerico<tb_atividade> RepositorioAtividade
        {
            get
            {
                if (_repAtividade == null)
                {
                    _repAtividade = new RepositorioGenerico<tb_atividade>(_context);
                }

                return _repAtividade;
            }
        }

        /// <summary>
        /// Salva todas as mudanças realizadas no contexto
        /// quando o contexto não for compartilhado
        /// </summary>
        public void Commit(bool shared)
        {
            if (!shared)
                _context.SaveChanges();
        }

        #endregion

        private bool disposed = false;
        /// <summary>
        /// Retira da memória um determinado contexto
        /// </summary>
        /// <param name="disposing"></param>
        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    _context.Dispose();
                }
            }
            this.disposed = true;
        }

        /// <summary>
        /// Limpa contexto da memória
        /// </summary>
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}
