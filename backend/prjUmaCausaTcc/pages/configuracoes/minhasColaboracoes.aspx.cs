using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using prjUmaCausaTcc.Logicas;

namespace prjUmaCausaTcc.pages.configuracoes
{
    public partial class minhasColaboracoes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GerarEmentosHtml gerarElementosHtml = new GerarEmentosHtml();
            Usuario usuario = (Usuario)Session["usuario"];
            string nav = gerarElementosHtml.MudarNavegacao(true, 0);
            string footer = gerarElementosHtml.GerarFooter();
            string menu = gerarElementosHtml.GerarMenu(usuario);
            Footer.Text = footer;
            Navegacao.Text = nav;
            Menu.Text = menu;
            Colaboracoes colaboracoes = new Colaboracoes();
            int codigo = usuario.Codigo;
                foreach (DoacaoCampanha doacao in colaboracoes.ListaDoacoesCampanhas(codigo))
                {
                    string item = "";
                    string qtdDoado = "";
                    string estadoConfirmacao = "";
                    if (doacao.Campanha.Categoria.Codigo == 1)
                    {
                        qtdDoado = $@"R${doacao.QuantidadeDoado}";
                        item = "Monetário";
                    }
                    else
                    {
                        item = doacao.Campanha.TipoItemArrecadado.Nome;
                        qtdDoado = doacao.QuantidadeDoado;
                    }
                    if (doacao.DoacaoConfirmada == true)
                    {
                        estadoConfirmacao = "Aceita";
                    }
                    else
                    {
                        if (doacao.RespostaOng == null)
                        {
                            estadoConfirmacao = "Pendente";
                        }
                        else
                        {
                            estadoConfirmacao = "Negada";
                        }
                    }
                    Colaboracoes.Text += $@"<tr>
                <td>{doacao.Campanha.Nome}</td>
                <td>{item}</td>
                <td>{qtdDoado}</td>
                <td>{doacao.DataDoacao.ToString().Substring(0, 10)}</td>
                <td>{estadoConfirmacao}</td>
              </tr>";
                }
        }
    }
}