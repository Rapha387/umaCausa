using prjUmaCausaTcc.Logicas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages
{
    public partial class cadastroOng : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrarOng_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario usuario = new Usuario();

                string nome = txtNome.Text;
                string senha = txtConfirmarSenha.Text;
                string email = txtEmail.Text;
                string telefone = txtTelefone.Text;
                string cnpj = txtIdentificacao.Text;
                string cep = txtCep.Text;
                string uf = txtUF.Text;
                string cidade = txtCidade.Text;
                string lougradouto = txtLogradouro.Text;
                string numero = txtNumero.Text;
                string bairro = txtBairro.Text;
                string complemento = txtComplemento.Text;
                string latitude = "";
                string longitude = "";
                string pix = txtPix.Text;
                string webSite = txtWebSite.Text;
                string categoria = cmbCategorias.SelectedItem.Text;
                string emailContao = txtEmailContato.Text;
                string descricao = txtDescricao.Text;
                List<TipoItem> itemsAceitos = new List<TipoItem>();


                if (selectedItems != null)
                {
                    foreach (Control control in selectedItems.Controls)
                    {
                        if (control is HtmlGenericControl && ((HtmlGenericControl)control).TagName == "LI")
                        {
                            HtmlGenericControl listItem = (HtmlGenericControl)control;
                            string value = listItem.Attributes["value"];

                            // Faça o que você precisa com o valor da <li>
                            Response.Write("Valor da <li>: " + value + "<br>");
                        }
                    }
                }

                string endereco = $"{lougradouto}, {numero}, {cidade}, {uf}";

                CapturarGeolocalizacao capturarGeolocalizacao = new CapturarGeolocalizacao();

                (latitude, longitude) = capturarGeolocalizacao.DefinirCoordenadas(endereco);

                //usuario.CadastrarOng(nome, senha, email, telefone, cnpj, cep, uf, cidade, lougradouto, numero, bairro, complemento, latitude, longitude);
            }
            catch (Exception ex)
            {
                lblErro.Text = ex.Message;
            }
        }
    }
}