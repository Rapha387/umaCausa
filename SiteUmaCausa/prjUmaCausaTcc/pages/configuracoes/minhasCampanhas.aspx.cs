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
            litErro.Text = "";
            pnlCampanhas.Visible = true;

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

            var listaCampanhas = campanhas.ListarDadosMinimosCampanhas(codigo);

            if (listaCampanhas.Count == 0)
            {
                pnlCampanhas.Visible = false;
                litErro.Text = "Não foi possível encontrar nenhuma campanha";
                return;
            }

            foreach (Campanha campanha in campanhas.ListarDadosMinimosCampanhas(codigo))
            {
                string botoesCampanha = "<td><a href='../campanha.aspx?c={campanha.Codigo}'>Finalizada</a></td>";

                if (campanha.DataFim.ToString() == "01/01/0001 00:00:00")
                {
                    botoesCampanha = $@"
                       <td style='display:flex; justify-content:space-around; text-align: center; padding: 0.6rem;'><a style='padding: 0;width: auto !important;' href = './editarCampanha.aspx?id={campanha.Codigo}'><img src = './../../images/icons/editar.png' alt=''></a>
                       <img id='{campanha.Codigo}' onclick='aparecerPopupConfirmacao(this)' src = './../../images/icons/excluir.png' alt=''>";
                }
                    

                LitCampanhas.Text += $@"<tr>
                       <td><a href='../campanha.aspx?c={campanha.Codigo}'> {campanha.Nome}</a></td>
                       <td><a href='../campanha.aspx?c={campanha.Codigo}'> {campanha.QuantidadeArrecadada}</a></td>
                       <td><a href='../campanha.aspx?c={campanha.Codigo}'> {campanha.DataInicio.ToString().Substring(0, 10)}</a></td>
                       <td><a href='../campanha.aspx?c={campanha.Codigo}'> {campanha.DataPrevistaFim.ToString().Substring(0, 10)}</a></td>
                       {botoesCampanha}
                     </tr>";
            }
        }

        protected void ImgPesquisar_Click(object sender, ImageClickEventArgs e)
        {

            try
            {
                LitCampanhas.Text = "";
                Campanhas campanhas = new Campanhas();
                Usuario usuario = (Usuario)Session["usuario"];

                string pesquisa = TxtPesquisa.Text;
                int user = usuario.Codigo;

                var listaCampanhas = campanhas.ListarMinhasCampanhasPesquisa(pesquisa, user);

                if (listaCampanhas.Count == 0)
                {
                    pnlCampanhas.Visible = false;
                    litErro.Text = "Não foi possível encontrar nenhuma campanha";
                    return;
                }

                foreach (Campanha campanha in listaCampanhas)
                {
                    string botoesCampanha = "<td><a href='../campanha.aspx?c={campanha.Codigo}'>Finalizada</a></td>";

                    if (campanha.DataFim.ToString() == "01/01/0001 00:00:00")
                    {
                        botoesCampanha = $@"
                           <td style='display:flex; justify-content:space-around; text-align: center; padding: 0.6rem;'><a style='padding: 0;width: auto !important;' href = './editarCampanha.aspx?id={campanha.Codigo}'><img src = './../../images/icons/editar.png' alt=''></a>
                           <img id='{campanha.Codigo}' onclick='aparecerPopupConfirmacao(this)' src = './../../images/icons/excluir.png' alt=''>";
                    }

                    LitCampanhas.Text += $@"<tr>
                           <td><a href='../campanha.aspx?c={campanha.Codigo}'> {campanha.Nome}</a></td>
                           <td><a href='../campanha.aspx?c={campanha.Codigo}'> {campanha.QuantidadeArrecadada}</a></td>
                           <td><a href='../campanha.aspx?c={campanha.Codigo}'> {campanha.DataInicio.ToString().Substring(0, 10)}</a></td>
                           <td><a href='../campanha.aspx?c={campanha.Codigo}'> {campanha.DataPrevistaFim.ToString().Substring(0, 10)}</a></td>
                           {botoesCampanha}
                         </tr>";
                }
            }
            catch
            {
                pnlCampanhas.Visible = false;
                litErro.Text = "Não foi possível carregar suas campanhas";   
            }
        }
    }
}