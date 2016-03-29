using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.Common;

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

        public DataTable AcessandoSQLScriptObtendoDados(string script)
        {
            DataTable tab = new DataTable();
            //definição da string de conexão
            SqlConnection conn = new SqlConnection(@"Data Source=pc-trabalho\SQLEXPRESS;Initial Catalog=TESTE;Integrated Security=True;Pooling=False");
            
            try
            {
                //abre a conexao
                conn.Open();
                //executa o comando com os parametros que foram adicionados acima
                SqlCommand cmd = new SqlCommand(script, conn);

                tab = ObterTabela(cmd.ExecuteReader());

                // Percorrendo todas as linhas
                foreach (DataRow dtRow in tab.Rows)
                {
                    // Percorrendo toda as colunas
                    foreach (DataColumn dc in tab.Columns)
                    {
                        var field1 = dtRow[dc].ToString();
                    }
                }

                //fecha a conexao
                conn.Close();
                return tab;
            }
            catch (Exception ex)
            {
                //fecha a conexao
                conn.Close();
                return tab;
            }
            finally
            {
                conn.Close();

            }
        }

        public DataTable ObterTabela(DbDataReader reader)
        { 
            DataTable tbEsquema = reader.GetSchemaTable(); 
            DataTable tbRetorno = new DataTable();
            foreach (DataRow r in tbEsquema.Rows) 
            { 
                if(!tbRetorno.Columns.Contains(r["ColumnName"].ToString())) 
                { 
                    DataColumn col = new DataColumn(){ 
                        ColumnName = r["ColumnName"].ToString(), 
                        Unique = Convert.ToBoolean(r["IsUnique"]), 
                        AllowDBNull = Convert.ToBoolean(r["AllowDBNull"]), 
                        ReadOnly = Convert.ToBoolean(r["IsReadOnly"]) }; 
                    tbRetorno.Columns.Add(col); 
                } 
            } 
            while(reader.Read()) 
            { 
                DataRow novaLinha = tbRetorno.NewRow(); 
                for(int i = 0; i<tbRetorno.Columns.Count;i++) { 
                    novaLinha[i] = reader.GetValue(i); 
                } 
                tbRetorno.Rows.Add(novaLinha); 
            } 
            return tbRetorno; 
        }

    }
}