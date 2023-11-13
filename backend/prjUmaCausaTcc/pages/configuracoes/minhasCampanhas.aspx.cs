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

            if (usuario == null || usuario.TipoDoUsuario.Codigo != 1)
                Response.Redirect("../index.aspx");

            GerarEmentosHtml gerarElementosHtml = new GerarEmentosHtml();
            string nav = gerarElementosHtml.GerarHeaderConfiguracoes(usuario);
            string footer = gerarElementosHtml.GerarFooterConfiguracoes();
            string menu = gerarElementosHtml.GerarMenu(usuario);

            LitFooter.Text = footer;
            LitHeader.Text = nav;
            LitMenu.Text = menu;

            LitCampanhas.Text = "";

            Campanhas campanhas = new Campanhas();
            int codigo = usuario.Codigo;

            foreach (Campanha campanha in campanhas.ListarDadosMinimosCampanhas(codigo))
            {
                string botoesCampanha = "<td>Finalizada</td>";

                if (campanha.DataFim.ToString() == "01/01/0001 00:00:00")
                {
                    botoesCampanha = $@"
                       <td style='display:flex; justify-content:space-around'><a href = './editarCampanha.aspx?id={campanha.Codigo}'><img src = './../../images/icons/editar.png' alt=''></a>
                       <img id='{campanha.Codigo}' onclick='aparecerPopupConfirmacao(this)' src = './../../images/icons/excluir.png' alt=''>";
                }
                    

                LitCampanhas.Text += $@"<tr>
                       <td> {campanha.Nome} </td>
                       <td> {campanha.QuantidadeArrecadada} </td>
                       <td> {campanha.DataInicio.ToString().Substring(0, 10)} </td>
                       <td> {campanha.DataPrevistaFim.ToString().Substring(0, 10)} </td>
                       {botoesCampanha}
                     </tr>";
            }
        }

        protected void ImgPesquisar_Click(object sender, ImageClickEventArgs e)
        {
            LitCampanhas.Text = "";
            Campanhas campanhas = new Campanhas();
            Usuario usuario = (Usuario)Session["usuario"];

            string pesquisa = TxtPesquisa.Text;
            int user = usuario.Codigo;
            foreach (Campanha campanha in campanhas.ListarMinhasCampanhasPesquisa(pesquisa, user))
            {
                Session["Campanha"] = campanha;
                LitCampanhas.Text += $@"<tr>
                       <td> {campanha.Nome} </td>
                       <td> {campanha.QuantidadeArrecadada} </td>
                       <td> {campanha.DataInicio.ToString().Substring(0, 10)} </td>
                       <td> {campanha.DataPrevistaFim.ToString().Substring(0, 10)} </td>
                       <td><a hrer='./../editarCampanha.aspx?id={campanha.Codigo}'><img src = './../../images/icons/editar.png' alt = '' ></a></td>
                       <td><img src = './../../images/icons/excluir.png' alt = '' ></ td >
                     </tr> ";
            }
        }
    }
}