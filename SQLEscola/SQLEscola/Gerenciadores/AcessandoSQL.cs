using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace SQLEscola.Gerenciadores
{
    public class AcessandoSQL
    {
        public AcessandoSQL(string script)
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
            }
            catch (Exception ex)
            {
                string e = ex.Message;
                //fecha a conexao
                conn.Close();
            }
            finally
            {
                conn.Close();
            }

        }
    }
}