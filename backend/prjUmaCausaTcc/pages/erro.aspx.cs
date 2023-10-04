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

            if (!String.IsNullOrEmpty(Request["e"]))
                litErro.Text = Request.QueryString["e"];
        }
    }
}