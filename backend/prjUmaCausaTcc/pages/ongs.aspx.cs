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
        protected void Page_Load(object sender, EventArgs e)
        {
            litOngs.Text = "";

            if (!String.IsNullOrEmpty(Request["c"]))
            {
                c = Request["c"].ToString();
                List<Usuario> ongs = new Ongs().ListarOngsPorCategoria(0, int.Parse(c));
                GerarOngs(ongs);
            }
            else
            {
                List<Usuario> ongs = new Ongs().ListarOngs(1);
                GerarOngs(ongs);
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
    }
}