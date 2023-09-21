using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages
{
	public partial class campanha : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            GerarEmentosHtml gerarHtml = new GerarEmentosHtml();
            litFooter.Text = gerarHtml.GerarFooter();

            if (Session["email"] != null)
            {
                try
                {
                    Usuario usuario = new Usuario();
                    usuario.BuscarUsuarioPeloEmail(Session["email"].ToString());
                    litHeader.Text = gerarHtml.MudarNavegacao(true, usuario.TipoDoUsuario.Codigo);
                }
                catch (Exception ex)
                {
                    return;
                }
            }
            else
            {
                litHeader.Text = gerarHtml.MudarNavegacao(false, 0);
            }

            Campanha campanha = new Campanha();
            campanha.BuscarCampanha(int.Parse(Request["campanha"]));
            litArrecadado.Text = campanha.QuantidadeArrecadada.ToString().Replace(".",",");
            litMeta.Text = campanha.QuantidadeMeta.ToString().Replace(".", ",");
            litDescricao.Text = campanha.Descricao;
            litWebNome.Text = campanha.Nome;
            litNome.Text = campanha.Nome + " - umaCausa";
        }
	}
}