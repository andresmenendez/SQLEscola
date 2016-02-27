using System;
using Persistence;
using SQLEscola.Banco;
namespace Persistence
{
    public interface IUnitOfWork
    {
        void Commit(bool shared);
        IRepositorioGenerico<tb_arquivo> RepositorioArquivo { get; }
        IRepositorioGenerico<tb_atividade> RepositorioAtividade { get; }
        IRepositorioGenerico<tb_ativar_perfil> RepositorioAtivarPerfil { get; }
        IRepositorioGenerico<tb_matricula> RepositorioMatricula { get; }
        IRepositorioGenerico<tb_questao> RepositorioQuestao { get; }
        IRepositorioGenerico<tb_resposta> RepositorioResposta { get; }
        IRepositorioGenerico<tb_restricao> RepositorioRestricao { get; }
        IRepositorioGenerico<tb_resultado> RepositorioResultado { get; }
        IRepositorioGenerico<tb_tecnologia> RepositorioTecnologia { get; }
        IRepositorioGenerico<tb_turma> RepositorioTurma { get; }
        IRepositorioGenerico<tb_usuario> RepositorioUsuario { get; }
    }
}
