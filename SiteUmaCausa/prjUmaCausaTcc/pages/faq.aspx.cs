using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages
{
    public partial class faq : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GerarEmentosHtml gerarHtml = new GerarEmentosHtml();
            litFooter.Text = gerarHtml.GerarFooter();

            if (Session["usuario"] != null)
            {
                try
                {
                    Usuario usuario = (Usuario)Session["usuario"];
                    litHeader.Text = gerarHtml.MudarNavegacao(usuario);
                }
                catch (Exception ex)
                {
                    Response.Redirect("erro.aspx?e=" + ex.Message);
                }
            }
            else
            {
                litHeader.Text = gerarHtml.MudarNavegacao(null);
            }
        }
    }
}