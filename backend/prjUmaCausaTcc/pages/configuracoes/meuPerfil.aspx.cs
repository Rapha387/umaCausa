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
            if (IsPostBack)
                return;

            Usuario usuario = (Usuario)Session["usuario"];

            if (usuario == null)
                Response.Redirect("../index.aspx");

            GerarEmentosHtml gerarEmentosHtml = new GerarEmentosHtml();
            string header = gerarEmentosHtml.GerarHeaderConfiguracoes(usuario);
            string footer = gerarEmentosHtml.GerarFooterConfiguracoes();
            string menu = gerarEmentosHtml.GerarMenu(usuario);

            LitHeader.Text = header;
            LitFooter.Text = footer;
            Litmenu.Text = menu;

            try
            {
                if (usuario.TipoDoUsuario.Codigo == 1)
                {
                    usuario.BuscarOng(usuario.Codigo);
                    txtNome.Text = usuario.Nome.ToString();
                    txtBairro.Text = usuario.Bairro.ToString();
                    txtCep.Text = usuario.Cep.ToString();
                    txtCidade.Text = usuario.Cidade.ToString();
                    txtCnpj.Text = usuario.Identificacao.ToString();
                    txtEmail.Text = usuario.Email.ToString();
                    txtEmailContato.Text = usuario.EmailContato.ToString();
                    txtLogradouro.Text = usuario.Rua.ToString();
                    txtPix.Text = usuario.NumeroPix.ToString();
                    txtTelefone.Text = usuario.Telefone.ToString();
                    txtWebsite.Text = usuario.Website.ToString();
                    txtComplemento.Text = usuario.Complemento.ToString();
                    txtNumero.Text = usuario.Numero;
                    txtDescricao.Text = usuario.Descricao.ToString();
                    CategoriasOng categoriasOng = new CategoriasOng();
                    var listaCategoriasOng = categoriasOng.ListarCategoriasOng();
                    foreach (var categoria in listaCategoriasOng)
                    {
                        cmbCategorias.Items.Add(categoria.Nome);
                    }
                    if (usuario.PosssibilidadeBusca == true)
                    {
                        ckbPodeBuscar.Checked = true;
                    }
                    else
                    {
                        ckbPodeBuscar.Checked = false;
                    }
                }
                else
                {
                    usuario.BuscarDoador(usuario.Codigo);
                    PnlItensOngs.Visible = false;
                    txtNome.Text = usuario.Nome.ToString();
                    txtBairro.Text = usuario.Bairro.ToString();
                    txtCep.Text = usuario.Cep.ToString();
                    txtCidade.Text = usuario.Cidade.ToString();
                    txtCnpj.Text = usuario.Identificacao.ToString();
                    txtEmail.Text = usuario.Email.ToString();
                    txtLogradouro.Text = usuario.Rua.ToString();
                    txtTelefone.Text = usuario.Telefone.ToString();
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
                    int codigo = usuario.Codigo;
                    int tipo = usuario.TipoDoUsuario.Codigo;
                    string nome = txtNome.Text;
                    string telefone = txtTelefone.Text;
                    string email = txtEmail.Text;
                    string emailcontato = txtEmailContato.Text;
                    string descricao = txtDescricao.Text;
                    string bairro = txtBairro.Text;
                    string cidade = txtCidade.Text;
                    string rua = txtLogradouro.Text;
                    string numero = txtNumero.Text;
                    string cep = txtCep.Text;
                    string complemento = txtComplemento.Text;
                    string endereco = $"{rua}, {numero}, {cidade}, {usuario.Estado}";
                    string latitude = "";
                    string longitude = "";
                    string website = txtWebsite.Text;
                    string pix = txtPix.Text;
                    object podebuscar = false;
                    if (ckbPodeBuscar.Checked == true)
                    {
                        podebuscar = true;
                        podebuscar = 1;
                    }
                    else
                    {
                        podebuscar = false;
                        podebuscar = 0;
                    }

                    CapturarGeolocalizacao capturarGeolocalizacao = new CapturarGeolocalizacao();
                    (latitude, longitude) = capturarGeolocalizacao.DefinirCoordenadas(endereco);

                    usuario.AlterarDadosOng(codigo, nome, email, emailcontato, telefone, descricao, cep, cidade, rua, numero, bairro, complemento, latitude, longitude, website, pix, podebuscar);
                }
                else
                {
                    int codigo = usuario.Codigo;
                    int tipo = usuario.TipoDoUsuario.Codigo;
                    string nome = txtNome.Text;
                    string telefone = txtTelefone.Text;
                    string email = txtEmail.Text;
                    string descricao = txtDescricao.Text;
                    string bairro = txtBairro.Text;
                    string cidade = txtCidade.Text;
                    string rua = txtLogradouro.Text;
                    string numero = txtNumero.Text;
                    string cep = txtCep.Text;
                    string complemento = txtComplemento.Text;
                    string endereco = $"{rua}, {numero}, {cidade}, {usuario.Estado}";
                    string latitude = "";
                    string longitude = "";
                    CapturarGeolocalizacao capturarGeolocalizacao = new CapturarGeolocalizacao();
                    (latitude, longitude) = capturarGeolocalizacao.DefinirCoordenadas(endereco);
                    usuario.AlterarDadosdoador(codigo, nome, email, telefone, cep, cidade, rua, numero, bairro, complemento, latitude, longitude);
                }

                Usuario atualizarUsuario = new Usuario();

                atualizarUsuario.BuscarUsuarioPeloEmail(txtEmail.Text);
                Session["usuario"] = atualizarUsuario;
                Response.Redirect("meuPerfil.aspx", false);
            }
            catch
            {
                Response.Redirect("../erro.aspx");
            }
        }
    }
}