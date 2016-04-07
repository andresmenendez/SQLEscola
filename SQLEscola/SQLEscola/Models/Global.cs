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
            Global go = new Global();
            //Pegando HORA
            string hora = DateTime.Now.ToShortTimeString().Replace(":", "");

            List<string> listaNomeTables = new List<string>();
            if (quest.ScriptCriacao != null)
            {
                if (!quest.ScriptCriacao.ToLower().Contains("alter"))
                {
                    //Alterar o Nome do Script para não haver problemas de duplicidade
                    listaNomeTables = go.RetornarNomesTablesCriacao(quest.ScriptCriacao);
                    quest.ScriptCriacao = quest.ScriptCriacao.ToLower();
                    foreach (string tb in listaNomeTables)
                    {
                        quest.ScriptCriacao = quest.ScriptCriacao.Replace(tb, tb + "_T_" + hora);
                    }
                    string retorno = acess.AcessandoSQLScript(quest.ScriptCriacao);
                    if (retorno != "OK")
                    {
                        acess.AcessandoSQLScript(DandoDropsTables(quest.ScriptCriacao));
                        return "Houve um problema no Script de Criação. Favor verificar novamente.<br />" + retorno;
                    }
                }
                else
                {
                    return "Seu Script de Criação contém um ALTER. Favor inserir todas as tabelas com o comando CREATE.";
                }
            }
            if (quest.ScriptPovoamento != null)
            {
                quest.ScriptPovoamento = quest.ScriptPovoamento.ToLower();
                foreach (string tb in listaNomeTables)
                {
                    quest.ScriptPovoamento = quest.ScriptPovoamento.Replace(tb, tb + "_T_" + hora);
                }
                string retorno = acess.AcessandoSQLScript(quest.ScriptPovoamento);
                if (retorno != "OK")
                {
                    acess.AcessandoSQLScript(DandoDropsTables(quest.ScriptCriacao));
                    return "Houve um problema no Script de Povoamento. Favor verificar novamente.<br />" + retorno;
                }
            }
            //Testando para saber se o nome do procedimento informado está no script resposta
            if (quest.NomeProcedimento.ToLower() != go.RetornaNomeProcedimento(quest.ScriptResultado))
            {
                return "O nome do procedimento informado difere do que está informado no Script de Resolução";
            }
            else
            {
                quest.ScriptResultado = quest.ScriptResultado.ToLower();
                foreach (string tb in listaNomeTables)
                {
                    quest.ScriptResultado = quest.ScriptResultado.Replace(tb, tb + "_T_" + hora);
                }
                //Altera o nome do script a ser validado
                string nome = go.RetornaNomeProcedimento(quest.ScriptResultado);
                quest.ScriptResultado = quest.ScriptResultado.Replace(nome, nome + "_T_" + hora);
                //exec script de resolução
                string retrnoScriptReso = acess.AcessandoSQLScript(quest.ScriptResultado);
                if (retrnoScriptReso != "OK")
                {
                    acess.AcessandoSQLScript(DandoDropsTables(quest.ScriptCriacao));
                    return "Houve um problema no Script de Resolução. Favor verificar novamente.<br />" + retrnoScriptReso;
                }
                else
                {
                    if (quest.CasosTeste.Trim().LastOrDefault() == ';')
                    {
                        //exec casos de teste
                        List<string> casos = quest.CasosTeste.Split(';').ToList<string>();
                        foreach (string item in casos)
                        {
                            if (item.Length > 1)
                            {
                                //Alterando os nomes das tabelas dentro dos casos de teste
                                string caso = item.ToLower();
                                foreach (string tb in listaNomeTables)
                                {
                                    caso = caso.Replace(tb, tb + "_T_" + hora);
                                }
                                //alterando o nome do procedimento
                                caso = caso.Replace(nome, nome + "_T_" + hora);
                                string retorno = acess.AcessandoSQLScript(caso);
                                if (retorno != "OK")
                                {
                                    acess.AcessandoSQLScript("DROP PROCEDURE " + nome + "_T_" + hora);
                                    return "Houve um problema em algum dos Casos de Teste. Favor verificar novamente.<br />SQL ERRO:" + retorno;
                                }
                            }
                        }
                    }
                    else
                    {
                        return "Todos os casos de teste devem ser separdos por ';'(ponto e vígula).</br>O último caso de teste também deve conter ponto e vígula.";
                    }
                }
            }
            acess.AcessandoSQLScript("DROP PROCEDURE " + quest.NomeProcedimento.ToLower() + "_T_" + hora);
            acess.AcessandoSQLScript(DandoDropsTables(quest.ScriptCriacao));
            return "OK";
        }

        public string SubmeterResposta(string scCriacao, string scPovoa, string NomeSCProf, string scProf, 
            string NomeSCAluno, string scAluno, string scCasosTeste)
        {
            AcessandoSQL acesso = new AcessandoSQL();
            Global go = new Global();
            //Guardando o nome do procedimento dos casos de teste
            string NomeExecCasosTeste = NomeSCProf;

            //Pegando HORA
            string hora = DateTime.Now.ToShortTimeString().Replace(":", "");
            //Alterando o nome no script do prof para NOME_PROCEDIMENTO_P_HORA
            string nomeProc = go.RetornaNomeProcedimento(scProf).ToLower()  + "_P_" + hora;
            scProf = scProf.ToLower().Replace(NomeSCProf.ToLower().Trim(), nomeProc.ToLower());
            NomeSCProf = nomeProc;

            //Alterando o nome no script do aluno para NOME_PROCEDIMENTO_A_HORA
            nomeProc = go.RetornaNomeProcedimento(scAluno).ToLower() + "_A_" + hora;
            scAluno = scAluno.ToLower().Replace(NomeSCAluno.ToLower().Trim(), nomeProc.ToLower());
            NomeSCAluno = nomeProc;

            //criando lista com nomes tables para serem usadas caso haja script de Criação
            List<string> listaNomeTables = new List<string>();
            List<string> listaNomeTablesProf = new List<string>();
            List<string> listaNomeTablesAluno = new List<string>();
            if (scCriacao != null)
            {
                //pegando nome das tabelas do script criação original
                listaNomeTables = go.RetornarNomesTablesCriacao(scCriacao);

                //Alterando scripts de criação e executando para o Prof e Aluno
                string scCriacaoProf = scCriacao;
                string scCriacaoAluno = scCriacao;
                foreach (string tb in listaNomeTables)
                {
                    listaNomeTablesProf.Add(tb + "_P_"+ hora);
                    scCriacaoProf = scCriacaoProf.ToLower().Replace(tb, tb + "_P_" + hora);
                    listaNomeTablesAluno.Add(tb + "_A_" + hora);
                    scCriacaoAluno = scCriacaoAluno.ToLower().Replace(tb, tb + "_A_" + hora);
                }
                
                //exec scripts de criação
                acesso.AcessandoSQLScript(scCriacaoProf);
                acesso.AcessandoSQLScript(scCriacaoAluno);

                //altera os nomes das tables dentro do script de povoamento
                string scPovoaProf = scPovoa;
                string scPovoaAluno = scPovoa;
                for (int i = 0; i < listaNomeTables.Count; i++)
                {
                    scPovoaProf = scPovoaProf.ToLower().Replace(listaNomeTables.ElementAt(i), listaNomeTablesProf.ElementAt(i));
                    scPovoaAluno = scPovoaAluno.ToLower().Replace(listaNomeTables.ElementAt(i), listaNomeTablesAluno.ElementAt(i));
                }
                //executando os scripts de povoamento alterados para Prof e Aluno
                acesso.AcessandoSQLScript(scPovoaProf);
                acesso.AcessandoSQLScript(scPovoaAluno);

                //altera os nomes das tabelas no script de resposta do prof e aluno
                string scRespProf = scProf;
                string scRespAluno = scAluno;
                for (int i = 0; i < listaNomeTables.Count; i++)
                {
                    scRespProf = scRespProf.ToLower().Replace(listaNomeTables.ElementAt(i), listaNomeTablesProf.ElementAt(i));
                    scRespAluno = scRespAluno.ToLower().Replace(listaNomeTables.ElementAt(i), listaNomeTablesAluno.ElementAt(i));
                }

                //executando os scripts de resposta alterados para Prof e Aluno
                acesso.AcessandoSQLScript(scRespProf);
                acesso.AcessandoSQLScript(scRespAluno);
            }

            if (scCriacao == null)
            {
                //exec script do prof e do aluno com nomes já alterados para evitar duplicidades
                acesso.AcessandoSQLScript(scProf);
                acesso.AcessandoSQLScript(scAluno);
            }
            

            //Listando casos de teste e fazendo a exec
            List<string> casos = scCasosTeste.Split(';').ToList<string>();
            int cont = 1;
            string retorno = "";
            foreach (string item in casos)
            {
                if (item.Length > 1)
                {
                    retorno += "Caso de Teste " + cont++ + "\n";
                    retorno += item + "\n";

                    //Alterando o nome dos casos de teste para os do professor atual
                    string scriptDeCasosDeTeste = item.Replace(NomeExecCasosTeste, NomeSCProf);
                    for (int i = 0; i < listaNomeTables.Count; i++)
                    {
                        scriptDeCasosDeTeste = scriptDeCasosDeTeste.ToLower().Replace(listaNomeTables.ElementAt(i), listaNomeTablesProf.ElementAt(i));
                    }
                    List<string> resultadosProf = acesso.AcessandoSQLScriptObtendoDados(scriptDeCasosDeTeste);
                    //Alterando o nome dos casos de teste para os do aluno atual
                    scriptDeCasosDeTeste = item.Replace(NomeExecCasosTeste, NomeSCAluno);
                    for (int i = 0; i < listaNomeTables.Count; i++)
                    {
                        scriptDeCasosDeTeste = scriptDeCasosDeTeste.ToLower().Replace(listaNomeTables.ElementAt(i), listaNomeTablesAluno.ElementAt(i));
                    }
                    List<string> resultadosAluno = acesso.AcessandoSQLScriptObtendoDados(scriptDeCasosDeTeste);
                    //Comparando as respostas
                    if (CompararResposta(resultadosProf, resultadosAluno))
                    {
                        retorno += "Resultado Correto: \n";

                    }
                    else
                    {
                        retorno += "Resultado Difere do Professor: \n";
                    }

                    //exibindo os resultados
                    foreach (string linhas in resultadosAluno)
                    {
                        retorno += linhas.Substring(0, linhas.Length-2) + "\n";
                    }
                    retorno += "\n";
                }
            }
            if (scCriacao != null)
            {
                for (int x = 0; x < listaNomeTables.Count; x++)
                {
                    acesso.AcessandoSQLScript("DROP TABLE " + listaNomeTablesAluno.ElementAt(x));
                    acesso.AcessandoSQLScript("DROP TABLE " + listaNomeTablesProf.ElementAt(x));
                }
            }
            acesso.AcessandoSQLScript("DROP PROCEDURE " + NomeSCProf);
            acesso.AcessandoSQLScript("DROP PROCEDURE " + NomeSCAluno);
            return retorno;
        }


        public bool CompararResposta(List<string> listaProf, List<string> listaAluno)
        {
            if (listaProf.Count != listaAluno.Count)
            {
                return false;
            }
            for (int i = 0; i < listaProf.Count; i++)
            {
                if (listaProf.ElementAt(i) != listaAluno.ElementAt(i))
                {
                    return false;
                }
            }
            return true;
        }

        public string RetornaNomeProcedimento(string script)
        {
            string sc = script;
            string auxiliar = sc.Replace("\r", "");
            auxiliar = auxiliar.Replace("\n", "");
            auxiliar = auxiliar.Replace(" ", "");

            int NtemProcedure = auxiliar.ToLower().IndexOf("procedure");
            if (NtemProcedure == -1)
            {
                auxiliar = auxiliar.ToLower().Replace("proc", "procedure");
            }

            string nome = "";
            string busca = "asbegin";
            int encontrouBusca = auxiliar.IndexOf(busca);
            nome = auxiliar.Substring(0, auxiliar.ToLower().IndexOf(busca));
            nome = nome.ToLower().Replace("(", "");
            int temArroba = nome.ToLower().IndexOf("@");
            if (temArroba > 0)
            {
                nome = nome.Substring(0, auxiliar.IndexOf("@"));
                nome = nome.ToLower().Replace("createprocedure", "").Trim();
            }
            else
            {
                nome = nome.ToLower().Replace("createprocedure", "").Trim();
            }
            nome = nome.Replace("@", "").Trim();
            return nome;

        }

        public List<string> RetornarNomesTablesCriacao(string scriptCriacao)
        {
            List<string> retorno = new List<string>();
            string guardaScript = scriptCriacao;
            scriptCriacao = scriptCriacao.ToLower();
            List<string> lista = scriptCriacao.Split(new string[] { "create table" }, StringSplitOptions.None).ToList<string>();
            foreach (var item in lista)
            {
                if (item.Length > 0)
                {
                    retorno.Add(item.Substring(0, item.IndexOf("(")).Trim());
                }
            }

            return retorno;
        }

        public string DandoDropsTables(string script)
        {
            string retorno = "";
            if (script != null)
            {
                script = script.ToUpper();
                List<string> lista = script.Split(new[] { "CREATE TABLE" }, StringSplitOptions.None).ToList();
                foreach (string item in lista)
                {
                    if (item.Length > 0)
                    {
                        string tb = item.Replace(" ", "");
                        retorno += "DROP TABLE " + tb.Substring(0, tb.IndexOf('(')) + " ";
                    }
                }
            }
            return retorno;
        }
    }
}