using prjUmaCausaTcc.Logicas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages
{
    public partial class erro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                Usuario usuario = new Usuario();

                usuario.BuscarUsuarioPeloEmail(Session["email"].ToString());

                GerarHeader gerarHeader = new GerarHeader();

                litHeader.Text = gerarHeader.MudarNavegacao(true, usuario.TipoDoUsuario.Codigo);
            }
            else
            {
                GerarHeader gerarHeader = new GerarHeader();
                litHeader.Text = gerarHeader.MudarNavegacao(false, 0);
            }

            if (!String.IsNullOrEmpty(Request["e"]))
                litErro.Text = Request.QueryString["e"];
        }
    }
}