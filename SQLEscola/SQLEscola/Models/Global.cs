using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

namespace SQLEscola.Models
{
    public class Global
    {
        public Global()
        {
        }

        public const string RoleAdm = "administrador";
        public const string RoleUser = "usuario";
        public const string RoleProf = "professor";
        public const string NomeUsuario = "NomeUsuario";
        public const string NomeCompletoUsuario = "NomeCompletoUsuario";
        public const string PerfilUsuario = "Usuário";
        public const string PerfilProfessor = "Professor";
        public const string PerfilAdm = "Administrador";
        public const int IdTecnologiaSQLServer = 1;
        /*
            E - Solicitacao de matricula para professor enviada
            A - Aprovação de matricula
            R - Recusada de matricula
        */
        public const string StatusSolicitacaoEnviada = "E";
        public const string StatusAprovacao = "A";
        public const string StatusRejeicao = "R";

        public byte[] ConvertToByte(HttpPostedFileBase file)
        {
            byte[] arq = null;
            BinaryReader rdr = new BinaryReader(file.InputStream);
            arq = rdr.ReadBytes((int)file.ContentLength);
            return arq;
        }
    }

}