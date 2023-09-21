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
        protected void Page_Load(object sender, EventArgs e)
        {
            litOngs.Text = "";
            GerarEmentosHtml gerarHtml = new GerarEmentosHtml();
            litFooter.Text = gerarHtml.GerarFooter();

            if (Session["email"] != null)
            {
                Usuario usuario = new Usuario();

                usuario.BuscarUsuarioPeloEmail(Session["email"].ToString());

                litHeader.Text = gerarHtml.MudarNavegacao(true, usuario.TipoDoUsuario.Codigo);
            }
            else
            {
                litHeader.Text = gerarHtml.MudarNavegacao(false, 0);
            }

            Ongs ongs = new Ongs(); 
            foreach (Usuario ong in ongs.ListarOngs(1))
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
    }
}