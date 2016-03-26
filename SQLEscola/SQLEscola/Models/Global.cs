using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using SQLEscola.Gerenciadores;

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
         * Status para matrícula
         * 
            E - Solicitacao de matricula para professor enviada
            A - Aprovação de matricula
            R - Recusada de matricula
        */
        public const string StatusSolicitacaoEnviada = "E";
        public const string StatusAprovacao = "A";
        public const string StatusRejeicao = "R";
        /*
         * Status para criação da questão
         * 
            C - Criada (Questão criada mas não aparece para o aluno)
            V - Válida (Questão validada)
        */
        public const string StatusQuestaoCriada = "C";
        public const string StatusQuestaoValidada = "V";

        public byte[] ConvertToByte(HttpPostedFileBase file)
        {
            byte[] arq = null;
            BinaryReader rdr = new BinaryReader(file.InputStream);
            arq = rdr.ReadBytes((int)file.ContentLength);
            return arq;
        }

        public string ValidarQuestao(QuestaoModel quest)
        {
            AcessandoSQL acess = new AcessandoSQL();
            if (quest.ScriptCriacao != null)
            {
                if (!quest.ScriptCriacao.ToLower().Contains("alter"))
                {
                    string retorno = acess.AcessandoSQLScript(quest.ScriptCriacao);
                    if (retorno != "OK")
                    {
                        acess.AcessandoSQLScript(DandoDropsTables(quest.ScriptCriacao));
                        return "Houve um problema no Script de Criação. Favor verificar novamente.<br />" + retorno;
                    }
                }
                else
                {
                    acess.AcessandoSQLScript(DandoDropsTables(quest.ScriptCriacao));
                    return "Seu Script de Criação contém um ALTER. Favor inserir todas as tabelas com o comando CREATE.";
                }
            }
            if (quest.ScriptPovoamento != null)
            {
                string retorno = acess.AcessandoSQLScript(quest.ScriptPovoamento);
                if (retorno != "OK")
                {
                    return "Houve um problema no Script de Povoamento. Favor verificar novamente.<br />" + retorno;
                }
            }
            //Testando para saber se o nome do procedimento informado está no script resposta
            if (!quest.ScriptResultado.Contains(quest.NomeProcedimento))
            {
                return "O nome do procedimento informado difere do que está informado no Script de Resolução";
            }
            else
            {
                //exec script de resolução
                string retrnoScriptReso = acess.AcessandoSQLScript(quest.ScriptResultado);
                if (retrnoScriptReso != "OK")
                {
                    return "Houve um problema no Script de Resolução. Favor verificar novamente.<br />" + retrnoScriptReso;
                }
                else
                {
                    //exec casos de teste
                    List<string> casos = quest.CasosTeste.Split(';').ToList<string>();
                    foreach (string item in casos)
                    {
                        if (item.Length > 1)
                        {
                            string retorno = acess.AcessandoSQLScript(item);
                            if (retorno != "OK")
                            {
                                acess.AcessandoSQLScript("DROP PROCEDURE " + quest.NomeProcedimento);
                                return "Houve um problema em algum dos Casos de Teste. Favor verificar novamente.<br />SQL ERRO:" + retorno;
                            }
                        }
                    }
                }
            }
            acess.AcessandoSQLScript("DROP PROCEDURE " + quest.NomeProcedimento);
            acess.AcessandoSQLScript(DandoDropsTables(quest.ScriptCriacao));
            return "OK";
        }

        public string DandoDropsTables(string script)
        {
            string retorno = "";
            List<string> lista = script.Split(new[] { "CREATE TABLE" }, StringSplitOptions.None).ToList();
            foreach (string item in lista)
            {
                if (item.Length > 0)
                {
                    string tb = item.Replace(" ", "");
                    retorno += "DROP TABLE " + tb.Substring(0, tb.IndexOf('(')) + " ";
                }
            }
            return retorno;
        }
    }

}