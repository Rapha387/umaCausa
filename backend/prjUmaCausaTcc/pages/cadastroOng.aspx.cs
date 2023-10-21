using Google.Protobuf.WellKnownTypes;
using prjUmaCausaTcc.Logicas;
using System;
using System.Collections.Generic;
using System.Diagnostics;
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
            if (Session["usuario"] != null)
                Response.Redirect("index.aspx");

            GerarEmentosHtml gerarHtml = new GerarEmentosHtml();
            litFooter.Text = gerarHtml.GerarFooter();
            litHeader.Text = gerarHtml.MudarNavegacao(null);

            try
            {
                CategoriasOng categoriasOng = new CategoriasOng();

                var listaCategoriasOng = categoriasOng.ListarCategoriasOng();

                foreach (CategoriaOng categoria in listaCategoriasOng)
                {
                    Panel pnlCheck = new Panel();
                    CheckBox chk = new CheckBox();
                    chk.ID = "chkCategoria" + categoria.Codigo.ToString();
                    chk.Text = categoria.Nome;

                    pnlCheck.CssClass = "pnlCheckBox";

                    pnlCheck.ID = "pnlCategoria" + categoria.Codigo.ToString();
                    pnlCheck.Controls.Add(chk);

                    pnlCategorias.Controls.Add(pnlCheck);
                }

                Itens tiposItens = new Itens();

                var listaTiposItens = tiposItens.ListarTiposItens();

                foreach (TipoItem item in listaTiposItens)
                {
                    if (item.Codigo != 0)
                    {
                        Panel pnlCheck = new Panel();
                        CheckBox chk = new CheckBox();
                        chk.ID = "chkItem" + item.Codigo.ToString();
                        chk.Text = item.Nome;

                        pnlCheck.CssClass = "pnlCheckBox";

                        pnlCheck.ID = "pnlItem" + item.Codigo.ToString();
                        pnlCheck.Controls.Add(chk);

                        pnlItensAceitos.Controls.Add(pnlCheck);
                    }
                }

            }
            catch(Exception ex)
            {
                Response.Redirect("erro.aspx?"+ex.Message);
            }
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
                string cnpj = txtCnpj.Text;
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
                string emailContao = txtEmailContato.Text;
                string descricao = txtDescricao.Text;


                List<CategoriaOng> categorias = new List<CategoriaOng>();
                for (int i = 1; i < pnlCategorias.Controls.Count; i++)
                {
                    Panel painel = (Panel)pnlCategorias.FindControl("pnlCategoria" + i.ToString());

                    CheckBox chk = (CheckBox)painel.FindControl("chkCategoria" + i.ToString());

                    if (chk.Checked)
                    {
                        CategoriaOng categoria = new CategoriaOng();
                        categoria.Nome = chk.Text;
                        categoria.Codigo = i;

                        categorias.Add(categoria);
                    }
                }


                List<TipoItem> itemsAceitos = new List<TipoItem>();
                for(int i = 1; i < pnlItensAceitos.Controls.Count; i++)
                {
                    Panel painel = (Panel)pnlItensAceitos.FindControl("pnlItem" + i.ToString());

                    CheckBox chk = (CheckBox)painel.FindControl("chkItem" + i.ToString());

                    if (chk.Checked)
                    {
                        TipoItem item = new TipoItem();
                        item.Nome = chk.Text;
                        item.Codigo = i;

                        itemsAceitos.Add(item);
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