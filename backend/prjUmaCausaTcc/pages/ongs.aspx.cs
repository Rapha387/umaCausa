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
                litHeader.Text = gerarHtml.MudarNavegacao(true, usuario.TipoDoUsuario.Codigo);
            }
            else
            {
                litHeader.Text = gerarHtml.MudarNavegacao(false, 0);
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
            ddlEstado.Items.Add(new ListItem("Acre", "ac"));
            ddlEstado.Items.Add(new ListItem("Alagoas", "al"));
            ddlEstado.Items.Add(new ListItem("Amapá", "am"));
            ddlEstado.Items.Add(new ListItem("Bahia", "ba"));
            ddlEstado.Items.Add(new ListItem("Ceará", "ce"));
            ddlEstado.Items.Add(new ListItem("Distrito Federal", "df"));
            ddlEstado.Items.Add(new ListItem("Espirito Santo", "es"));
            ddlEstado.Items.Add(new ListItem("Goiás", "go"));
            ddlEstado.Items.Add(new ListItem("Maranhão", "ma"));
            ddlEstado.Items.Add(new ListItem("Mato Grosso", "mt"));
            ddlEstado.Items.Add(new ListItem("Mato Grosso do Sul", "ms"));
            ddlEstado.Items.Add(new ListItem("Minas Gerais", "mg"));
            ddlEstado.Items.Add(new ListItem("Pará", "pa"));
            ddlEstado.Items.Add(new ListItem("Paraíba", "pb"));
            ddlEstado.Items.Add(new ListItem("Paraná", "pr"));
            ddlEstado.Items.Add(new ListItem("Pernambuco", "pe"));
            ddlEstado.Items.Add(new ListItem("Piauí", "pi"));
            ddlEstado.Items.Add(new ListItem("Rio de Janeiro", "rj"));
            ddlEstado.Items.Add(new ListItem("Rio Grande do Norte", "rn"));
            ddlEstado.Items.Add(new ListItem("Rio Grande do Sul", "rs"));
            ddlEstado.Items.Add(new ListItem("Rondônia", "ro"));
            ddlEstado.Items.Add(new ListItem("Roraima", "rr"));
            ddlEstado.Items.Add(new ListItem("Santa Catarina", "sc"));
            ddlEstado.Items.Add(new ListItem("São Paulo", "sp"));
            ddlEstado.Items.Add(new ListItem("Sergipe", "se"));
            ddlEstado.Items.Add(new ListItem("Tocantins", "to"));
        }

        #region GerarOngs
        private void GerarOngs(List<Usuario> ongs)
        {
            foreach (Usuario ong in ongs)
            {
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
                        <div class='tag'></div>
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

    }
}