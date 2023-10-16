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
            GerarEmentosHtml gerarElementosHtml = new GerarEmentosHtml();
            Usuario usuario = (Usuario)Session["usuario"];
            string nav = gerarElementosHtml.MudarNavegacao(true, 1);
            string footer = gerarElementosHtml.GerarFooter();
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