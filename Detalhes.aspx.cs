using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exercicio3
{
    public partial class Detalhes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (CapturaID())
            {
                DadosConsulta();
            }
        }

        private bool CapturaID()
        {
            return Request.QueryString.AllKeys.Contains("id");
        }

        private void DadosConsulta()
        {
            var id = ObterID();
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = Conexao.Connection;
                cmd.CommandText = @"select * from aluno
                                    where id =@id";

                cmd.Parameters.AddWithValue("@id", id);
                Conexao.Conectar();

                var reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    txtID.Text = reader["id"].ToString();
                    txtRA.Text = reader["ra"].ToString();
                    txtNome.Text = reader["nome"].ToString();
                    ddlSexo.SelectedValue = reader["sexo"].ToString();
                    txtDataNasc.Text = reader["datanasc"].ToString();
                    txtEmail.Text = reader["email"].ToString();
                    txtLog.Text = reader["log"].ToString();
                    txtNum.Text = reader["num"].ToString();
                    txtBairro.Text = reader["num"].ToString();
                    txtComp.Text = reader["complemento"].ToString();
                    txtCidade.Text = reader["cidade"].ToString();
                    txtUF.Text = reader["uf"].ToString();
                    txtCurso.Text = reader["curso"].ToString();
                    txtIngress.Text = reader["ano_ingress"].ToString();
                    txtCurso.Text = reader["curso"].ToString();
                }
            }
            catch (Exception ex)
            {
                string erro = ex.Message;
            }
            finally
            {
                Conexao.Desconectar();
            }
        }

        private int ObterID()
        {
            var id = 0;
            var idURL = Request.QueryString["id"];

            if (!int.TryParse(idURL, out id))
            {
                throw new Exception("ID inválido");
            }
            if (id <= 0)
            {
                throw new Exception("ID inválido");
            }
            return id;
        }
    }
}