using prjUmaCausaTcc.Logicas;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages
{
    public partial class cadastroDoador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] != null)
                Response.Redirect("index.aspx");

            GerarEmentosHtml gerarHtml = new GerarEmentosHtml();
            litFooter.Text = gerarHtml.GerarFooter();
            litHeader.Text = gerarHtml.MudarNavegacao(null);
        }

        protected void btnCadastrarDoador_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario usuario = new Usuario();

                string nome = txtNome.Text;
                string email = txtEmail.Text;
                string cpf = txtCpf.Text;

                if (usuario.VerificarEmailIdentificacao(txtEmail.Text, txtCpf.Text))
                {
                    lblErro.Text = "O email ou cpg já estão sendo utilizados";
                    return;
                }

                string senha = txtConfirmarSenha.Text;
                string telefone = txtTelefone.Text;
                string cep = txtCep.Text;
                string uf = txtUF.Text;
                string cidade = txtCidade.Text;
                string lougradouto = txtLogradouro.Text;
                string numero = txtNumero.Text;
                string bairro = txtBairro.Text;
                string complemento = txtComplemento.Text;
                string latitude = "";
                string longitude = "";

                string endereco = $"{lougradouto}, {numero}, {cidade}, {uf}";

                CapturarGeolocalizacao capturarGeolocalizacao = new CapturarGeolocalizacao();

                (latitude, longitude) = capturarGeolocalizacao.DefinirCoordenadas(endereco);

                usuario.CadastrarDoador(nome, senha, email, telefone, cpf, cep, uf, cidade, lougradouto, numero, bairro, complemento, latitude, longitude);

                usuario.BuscarUsuarioPeloEmail(email);
                Session["usuario"] = usuario;
                Response.Redirect("index.aspx", false);
            }
            catch (Exception ex)
            {
                lblErro.Text = ex.Message;
            }
        }
    }
}