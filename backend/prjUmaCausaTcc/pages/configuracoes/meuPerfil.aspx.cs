using prjUmaCausaTcc.Logicas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages.configuracoes
{
    public partial class meuPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario usuario = (Usuario)Session["usuario"];
            if (TxtNome.Text != "")
            {
                BtnSalvarAlteraçoes_Click(sender, new EventArgs());
            }
            GerarEmentosHtml gerarEmentosHtml = new GerarEmentosHtml();
            // gerarEmentosHtml.MudarNavegacao(true,usuario)
            string header = gerarEmentosHtml.MudarNavegacao(true, 1);
            string footer = gerarEmentosHtml.GerarFooter();
            LitHeader.Text = header;
            LitFooter.Text = footer;
            string menu = gerarEmentosHtml.GerarMenu(usuario);
            Litmenu.Text = menu;
            try
            {
                if (usuario.TipoDoUsuario.Codigo == 1)
                {
                    usuario.BuscarOng(usuario.Codigo);
                    TxtNome.Text = usuario.Nome.ToString();
                    TxtBairro.Text = usuario.Bairro.ToString();
                    TxtCep.Text = usuario.Cep.ToString();
                    TxtCidade.Text = usuario.Cidade.ToString();
                    TxtCnpj.Text = usuario.Identificacao.ToString();
                    TxtEmail.Text = usuario.Email.ToString();
                    TxtLogadouro.Text = usuario.Rua.ToString();
                    TxtPix.Text = usuario.NumeroPix.ToString();
                    TxtTelefone.Text = usuario.Telefone.ToString();
                    TxtWebsite.Text = usuario.Website.ToString();
                    txtComplemento.Text = usuario.Complemento.ToString();
                    txtNumero.Text = usuario.Numero;
                    txtDescricao.Text = usuario.Descricao.ToString();
                    CategoriasOng categoriasOng = new CategoriasOng();
                    var listaCategoriasOng = categoriasOng.ListarCategoriasOng();
                    foreach (var categoria in listaCategoriasOng)
                    {
                        cmbCategorias.Items.Add(categoria.Nome);
                    }
                }
                else
                {
                    PnlItensOngs.Visible = false;
                    usuario.BuscarDoador(usuario.Codigo);
                    TxtNome.Text = usuario.Nome.ToString();
                    TxtBairro.Text = usuario.Bairro.ToString();
                    TxtCep.Text = usuario.Cep.ToString();
                    TxtCidade.Text = usuario.Cidade.ToString();
                    TxtCnpj.Text = usuario.Identificacao.ToString();
                    TxtEmail.Text = usuario.Email.ToString();
                    TxtLogadouro.Text = usuario.Rua.ToString();
                    TxtTelefone.Text = usuario.Telefone.ToString();
                    txtComplemento.Text = usuario.Complemento.ToString();
                    txtNumero.Text = usuario.Numero;
                }



            }
            catch
            {
                Response.Redirect("erro.aspx");
            }
        }



        protected void BtnSalvarAlteraçoes_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario usuario = (Usuario)Session["usuario"];
                if (usuario.TipoDoUsuario.Codigo == 1)
                {

                }
                else
                {
                    int codigo = usuario.Codigo;
                    int tipo = usuario.TipoDoUsuario.Codigo;
                    string nome = TxtNome.Text;
                    string telefone = TxtTelefone.Text;
                    string email = TxtEmail.Text;
                    string descricao = txtDescricao.Text;
                    string bairro = TxtBairro.Text;
                    string cidade = TxtCidade.Text;
                    string rua = TxtLogadouro.Text;
                    string numero = txtNumero.Text;
                    string cep = TxtCep.Text;
                    string complemento = txtComplemento.Text;
                    string endereco = $"{rua}, {numero}, {cidade}, {usuario.Estado}";
                    string latitude = "";
                    string longitude = "";



                    CapturarGeolocalizacao capturarGeolocalizacao = new CapturarGeolocalizacao();



                    (latitude, longitude) = capturarGeolocalizacao.DefinirCoordenadas(endereco);



                    usuario.AlterarDadosdoador(codigo, nome, email, telefone, cep, cidade, rua, numero, bairro, complemento, latitude, longitude);
                }
            }
            catch
            {
                Response.Redirect("erro.aspx");
            }


        }
    }
}