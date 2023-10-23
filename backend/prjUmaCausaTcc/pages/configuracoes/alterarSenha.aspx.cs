using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages.configuracoes
{
    public partial class alterarSenha : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario usuario = (Usuario)Session["usuario"];

            if (usuario == null)
                Response.Redirect("../index.aspx");
            GerarEmentosHtml gerarEmentosHtml = new GerarEmentosHtml();
            string header = gerarEmentosHtml.GerarHeaderConfiguracoes(usuario);
            string footer = gerarEmentosHtml.GerarFooterConfiguracoes();
            string menu = gerarEmentosHtml.GerarMenu(usuario);

            LitHeader.Text = header;
            LitFooter.Text = footer;
            LitMenu.Text = menu;
        }
    }
}