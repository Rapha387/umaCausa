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
        bool mudar = false;
        int indiceDePaginacao = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
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

            ddlCategoria.Items.Add("Categoria");
            foreach (CategoriaOng categoriaOng in new CategoriasOng().ListarCategoriasOng())
            {
                ddlCategoria.Items.Insert(categoriaOng.Codigo, new ListItem(categoriaOng.Nome, categoriaOng.Codigo.ToString()));
            }

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

        }             

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

        protected void ddlCategoria_TextChanged(object sender, EventArgs e)
        {
            Response.Redirect($"ongs.aspx?c={ddlCategoria.SelectedValue}");
        }

        protected void btnNext_Click(object sender, ImageClickEventArgs e)
        {
            if (!String.IsNullOrEmpty(Request["pagina"]))
            {
                if (indiceDePaginacao > int.Parse(Request["pagina"]))
                    Response.Redirect($"ongs.aspx?pagina={(int.Parse(Request["pagina"]) + 1)}");
                //else
                    //btnNext.Visible = false;
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
                //else
                    //btnBack.Visible = false;
            }
            else
                Response.Redirect($"ongs.aspx?pagina={1}");
        }
    }
}