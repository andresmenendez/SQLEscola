﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace SQLEscola.Gerenciadores
{
    public class AcessandoSQL
    {
        public AcessandoSQL()
        {
        }

        public string AcessandoSQLScript(string script)
        {
            //definição da string de conexão
            SqlConnection conn = new SqlConnection(@"Data Source=pc-trabalho\SQLEXPRESS;Initial Catalog=TESTE;Integrated Security=True;Pooling=False");
            //definição do comando sql
            string sql = script;

            try
            {
                //Cria uma objeto do tipo comando passando como parametro a string sql e a string de conexão
                SqlCommand comando = new SqlCommand(sql, conn);
                //Adicionando o valor das textBox nos parametros do comando
                /*comando.Parameters.Add(new SqlParameter("@nome", this.txtNome.Text));
                comando.Parameters.Add(new SqlParameter("@endereco", this.txtEndereco.Text));
                comando.Parameters.Add(new SqlParameter("@numero", this.txtNumero.Text));
                comando.Parameters.Add(new SqlParameter("@RG", this.txtRG.Text));*/
                //abre a conexao
                conn.Open();
                //executa o comando com os parametros que foram adicionados acima
                comando.ExecuteNonQuery();
                //fecha a conexao
                conn.Close();
                //Abaixo temos a ultlização de javascript para apresentar ao usuário um alert
                return "OK";
            }
            catch (Exception ex)
            {
                string e = ex.Message;
                //fecha a conexao
                conn.Close();
                return e;
            }
            finally
            {
                conn.Close();
                
            }
        }

        public List<string> AcessandoSQLScriptObtendoDados(string script)
        {
            List<string> listaRetorno = new List<string>();
            //definição da string de conexão
            SqlConnection conn = new SqlConnection(@"Data Source=pc-trabalho\SQLEXPRESS;Initial Catalog=TESTE;Integrated Security=True;Pooling=False");
            
            try
            {
                //abre a conexao
                conn.Open();
                //executa o comando com os parametros que foram adicionados acima
                SqlCommand cmd = new SqlCommand(script, conn);

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    listaRetorno.Add(dr[0].ToString());
                }

                //fecha a conexao
                conn.Close();
                return listaRetorno;
            }
            catch (Exception ex)
            {
                listaRetorno.Add(ex.Message);
                //fecha a conexao
                conn.Close();
                return listaRetorno;
            }
            finally
            {
                conn.Close();

            }
        }
    }
}