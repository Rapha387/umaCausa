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
                       <td> {campanha.QuantidadeArrecadada} </td>
                       <td> {campanha.DataInicio.ToString().Substring(0, 10)} </td>
                       <td> {campanha.DataPrevistaFim.ToString().Substring(0, 10)} </td>
                       <td><a href = './../editarCampanha.aspx'><img src = './../../images/icons/editar.png' alt = ''></a></td>
                       <td><img src = './../../images/icons/excluir.png' alt = '' ></td>
                     </tr> ";
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
                LitCampanhas.Text += $@"<tr>
                       <td> {campanha.Nome} </td>
                       <td> {campanha.QuantidadeArrecadada} </td>
                       <td> {campanha.DataInicio.ToString().Substring(0, 10)} </td>
                       <td> {campanha.DataPrevistaFim.ToString().Substring(0, 10)} </td>
                       <td><a href = './../editarCampanha.aspx'><img src = './../ .. /images/icons/editar.png' alt = '' ></a></td>
                       <td><img src = './../../images/icons/excluir.png' alt = '' ></ td >
                     </tr> ";
            }
        }
    }
}