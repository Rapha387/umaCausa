using Org.BouncyCastle.Utilities;
using prjUmaCausaTcc.Logicas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages
{
    public partial class ongs : System.Web.UI.Page
    {
        string c;
        string es;
        int indiceDePaginacao = 1;
        protected void Page_Load(object sender, EventArgs e)
        {

            // TODO: Montar Barra de Busca
            // TODO: Detalhar Animações do Botão e Paginação
            litOngs.Text = "";
            litItemPaginacao.Text = "";


            if (!String.IsNullOrEmpty(Request["c"]))
            {
                c = Request["c"].ToString();
                List<Usuario> ongs = new Ongs().ListarOngsPorCategoria(0, int.Parse(c));
                GerarOngs(ongs);
                if (String.IsNullOrEmpty(litItemPaginacao.Text))
                {
                    btnNext.Visible = false;
                    btnBack.Visible = false;
                }
            }
            else if (!String.IsNullOrEmpty(Request["e"]))
            {
                es = Request["e"].ToString();
                List<Usuario> ongs = new Ongs().ListarOngsPorEstado(0,es);
                GerarOngs(ongs);
                if (String.IsNullOrEmpty(litItemPaginacao.Text))
                {
                    btnNext.Visible = false;
                    btnBack.Visible = false;
                }
            }
            else if(!String.IsNullOrEmpty(Request["s"]))
            { 
                List<Usuario> ongs = new Ongs().ListarOngsPesquisa(Request["s"].ToString());
                GerarOngs(ongs);
                if (String.IsNullOrEmpty(litItemPaginacao.Text))
                {
                    btnNext.Visible = false;
                    btnBack.Visible = false;
                }
            }
            else
            {
                if (String.IsNullOrEmpty(Request["pagina"]))
                {
                    List<Usuario> ongs = new Ongs().ListarOngs(0);
                    GerarOngs(ongs);
                }
                else
                {
                    List<Usuario> ongs = new Ongs().ListarOngs((int.Parse(Request["pagina"]) - 1));
                    GerarOngs(ongs);
                }
                int indice = new Ongs().ListarIndiceOngs();
                for (int i = 0; i < indice; i++)
                {
                    indiceDePaginacao = i + 1;
                    litItemPaginacao.Text += $"<a href='ongs.aspx?pagina={(i + 1)}' class='itemPaginacao'>{(i + 1)}</a> <br />";
                }
                if (String.IsNullOrEmpty(litItemPaginacao.Text))
                {
                    btnNext.Visible = false;
                    btnBack.Visible = false;
                }
            }
            #region DDLS
            foreach (CategoriaOng categoriaOng in new CategoriasOng().ListarCategoriasOng())
            {
                ddlCategoria.Items.Insert(categoriaOng.Codigo, new ListItem(categoriaOng.Nome, categoriaOng.Codigo.ToString()));
            }

            GerarDadosDDLestados();
            #endregion

            #region Gerar Elementos Html
            GerarEmentosHtml gerarHtml = new GerarEmentosHtml();
            litFooter.Text = gerarHtml.GerarFooter();

            if (Session["usuario"] != null)
            {
                Usuario usuario = (Usuario)Session["usuario"];
                litHeader.Text = gerarHtml.MudarNavegacao(usuario);
            }
            else
            {
                litHeader.Text = gerarHtml.MudarNavegacao(null);
            }
            #endregion

            #region !PostBack
            if (!IsPostBack)
            { 
                if (!String.IsNullOrEmpty(Request["c"]))
                    ddlCategoria.SelectedIndex = int.Parse(Request["c"]);

                if (!String.IsNullOrEmpty(Request["e"]))
                    ddlEstado.SelectedValue = Request["e"].ToString();
            }
            #endregion
        }

        private void GerarDadosDDLestados()
        {
            ddlEstado.Items.Add(new ListItem("Acre", "AC"));
            ddlEstado.Items.Add(new ListItem("Alagoas", "AL"));
            ddlEstado.Items.Add(new ListItem("Amapá", "AM"));
            ddlEstado.Items.Add(new ListItem("Bahia", "BA"));
            ddlEstado.Items.Add(new ListItem("Ceará", "CE"));
            ddlEstado.Items.Add(new ListItem("Distrito Federal", "DF"));
            ddlEstado.Items.Add(new ListItem("Espirito Santo", "ES"));
            ddlEstado.Items.Add(new ListItem("Goiás", "GO"));
            ddlEstado.Items.Add(new ListItem("Maranhão", "MA"));
            ddlEstado.Items.Add(new ListItem("Mato Grosso", "MT"));
            ddlEstado.Items.Add(new ListItem("Mato Grosso do Sul", "MS"));
            ddlEstado.Items.Add(new ListItem("Minas Gerais", "MG"));
            ddlEstado.Items.Add(new ListItem("Pará", "PA"));
            ddlEstado.Items.Add(new ListItem("Paraíba", "PB"));
            ddlEstado.Items.Add(new ListItem("Paraná", "PR"));
            ddlEstado.Items.Add(new ListItem("Pernambuco", "PE"));
            ddlEstado.Items.Add(new ListItem("Piauí", "PI"));
            ddlEstado.Items.Add(new ListItem("Rio de Janeiro", "RJ"));
            ddlEstado.Items.Add(new ListItem("Rio Grande do Norte", "RN"));
            ddlEstado.Items.Add(new ListItem("Rio Grande do Sul", "RS"));
            ddlEstado.Items.Add(new ListItem("Rondônia", "RO"));
            ddlEstado.Items.Add(new ListItem("Roraima", "RR"));
            ddlEstado.Items.Add(new ListItem("Santa Catarina", "SC"));
            ddlEstado.Items.Add(new ListItem("São Paulo", "SP"));
            ddlEstado.Items.Add(new ListItem("Sergipe", "SE"));
            ddlEstado.Items.Add(new ListItem("Tocantins", "TO"));
        }

        #region GerarOngs
        private void GerarOngs(List<Usuario> ongs)
        {
            foreach (Usuario ong in ongs)
            {
                string categorias = "";

                foreach (CategoriaOng categoria in ong.CategoriasOng)
                {
                    categorias += $"&nbsp; {categoria.Nome}  &nbsp; -";
                }

                categorias = categorias.Substring(0, categorias.Length - 1);


                litOngs.Text += $@"
                    <a href='ong.aspx?ong={ong.Codigo}'>
                    <div class='ong'>
                      <div class='infos-ong'>
                        <div class='imagem-ong' style='background: url(../{ong.FotoPerfil}); background-position: center;background-repeat: no-repeat;background-size: cover;'></div>
                        <div class='descricao'>  
                          <h3>{ong.Nome}</h3>
                          <p>
                            {ong.Descricao}
                          </p>
                        </div>  
                      </div>
                      <div class='tags'>
                        <div class='tag'>{categorias}</div>
                      </div>
                    </div>
                  </a>";
            }
        }
        #endregion

        #region DDLTextChanged
        protected void ddlCategoria_TextChanged(object sender, EventArgs e)
        {
            Response.Redirect($"ongs.aspx?c={ddlCategoria.SelectedValue}");
        }
        protected void ddlEstado_TextChanged(object sender, EventArgs e)
        {
            Response.Redirect($"ongs.aspx?e={ddlEstado.SelectedValue}");
        }
        #endregion

        #region Botões NextBack
        protected void btnNext_Click(object sender, ImageClickEventArgs e)
        {
            if (!String.IsNullOrEmpty(Request["pagina"]))
            {
                if (indiceDePaginacao > int.Parse(Request["pagina"]))
                    Response.Redirect($"ongs.aspx?pagina={(int.Parse(Request["pagina"]) + 1)}");
            }
            else
                Response.Redirect($"ongs.aspx?pagina={1}");
        }

        protected void btnBack_Click(object sender, ImageClickEventArgs e)
        {
            if (!String.IsNullOrEmpty(Request["pagina"]))
            {
                if (int.Parse(Request["pagina"]) > 1)
                    Response.Redirect($"ongs.aspx?pagina={(int.Parse(Request["pagina"]) - 1)}");
            }
            else
                Response.Redirect($"ongs.aspx?pagina={1}");
        }
        #endregion

        protected void btnPesquisar_Click(object sender, ImageClickEventArgs e)
        {
            if (txtPesquisa.Text == "")
                Response.Redirect("ongs.aspx");

            Response.Redirect("ongs.aspx?s=" + txtPesquisa.Text);
        }

    }
}