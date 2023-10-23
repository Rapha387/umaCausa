using prjUmaCausaTcc.Logicas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages.configuracoes
{
    public partial class minhasCampanhas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario usuario = (Usuario)Session["usuario"];

            if (usuario == null)
                Response.Redirect("../index.aspx");

            GerarEmentosHtml gerarElementosHtml = new GerarEmentosHtml();
            string nav = gerarElementosHtml.GerarHeaderConfiguracoes(usuario);
            string footer = gerarElementosHtml.GerarFooterConfiguracoes();
            string menu = gerarElementosHtml.GerarMenu(usuario);

            LitFooter.Text = footer;
            LitHeader.Text = nav;
            LitMenu.Text = menu;

            Campanhas campanhas = new Campanhas();
            int codigo = usuario.Codigo;

            foreach (Campanha campanha in campanhas.ListarDadosMinimosCampanhas(codigo))
            {
                LitCampanhas.Text += $@"<tr>
                       <td> {campanha.Nome} </td>
                       <td> {campanha.QuantidadeMeta} </td>
                       <td> {campanha.DataInicio.ToString().Substring(0, 10)} </td>
                       <td> {campanha.DataPrevistaFim.ToString().Substring(0, 10)} </td>
                       <td><a href = './../editarItem.html'><img src = './../ .. /images/icons/editar.png' alt = '' ></a></td>
                       <td><img src = './../../images/icons/excluir.png' alt = '' ></ td >
                     </tr> ";
            }
        }
    }
}