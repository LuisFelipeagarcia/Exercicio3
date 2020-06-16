using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exercicio3
{
    public partial class Inserir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {

            MySqlCommand cmd = new MySqlCommand();

            try
            {
                cmd.Connection = Conexao.Connection;
                cmd.CommandText = @"insert into aluno (ra, nome, sexo, datanasc, email, log, num, bairro, complemento, cidade, uf, curso, ano_ingress) 
                                    values (@ra, @nome, @sex, @dat, @email, @log, @num, @bair, @complemento, @cidade, @uf, @curso, @ingress);";

                cmd.Parameters.AddWithValue("nome", txtNome.Text);
                cmd.Parameters.AddWithValue("sex", ddlSexo.SelectedValue);
                cmd.Parameters.AddWithValue("dat", txtDataNasc.Text);
                cmd.Parameters.AddWithValue("ra", txtRA.Text);
                cmd.Parameters.AddWithValue("curso", txtCurso.Text);
                cmd.Parameters.AddWithValue("ingress", txtIngress.Text);
                cmd.Parameters.AddWithValue("email", txtEmail.Text);
                cmd.Parameters.AddWithValue("log", txtLog.Text);
                cmd.Parameters.AddWithValue("num", txtNum.Text);
                cmd.Parameters.AddWithValue("bair", txtBairro.Text);
                cmd.Parameters.AddWithValue("cidade", txtCidade.Text);
                cmd.Parameters.AddWithValue("uf", txtUF.Text);
                cmd.Parameters.AddWithValue("complemento", txtComp.Text);

                Conexao.Conectar();

                cmd.ExecuteNonQuery();
                lblResultado.Text = "Inserido!";
            }
            catch (Exception ex)
            {
                lblResultado.Text = $"Falha: {ex.Message}";
            }
            finally
            {
                Conexao.Desconectar();
            }
        }
    }
}