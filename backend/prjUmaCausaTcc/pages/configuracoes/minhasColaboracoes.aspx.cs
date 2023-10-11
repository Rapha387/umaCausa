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
                    string item = doacao.Campanha.TipoItemArrecadado.Nome;
                    string qtdDoado = "";
                    string estadoConfirmacao = "";
                if (doacao.Campanha.TipoItemArrecadado.Codigo == 0)
                {
                    qtdDoado = "R$" + doacao.QuantidadeDoado;
                }
                else
                {
                    qtdDoado = doacao.QuantidadeDoado;
                }
                    if (doacao.DoacaoConfirmada == true)
                    {
                        estadoConfirmacao = "Aceita";
                    }
                    else
                    {
                        if (doacao.RespostaOng.ToString() == "01/01/0001 00:00:00")
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
                foreach(DoacaoItem doacao in colaboracoes.ListaDoacoesItems(codigo))
                {
                    string item = doacao.NomeItem;
                    string qtdDoado = doacao.Quantidade;
                    string estadoConfirmacao = "";
                    if (doacao.DoacaoConfirmada == true)
                    {
                        estadoConfirmacao = "Aceita";
                    }
                    else
                    {
                        if (doacao.respostaOng.ToString() == "01/01/0001 00:00:00")
                        {
                            estadoConfirmacao = "Pendente";
                        }
                        else
                        {
                            estadoConfirmacao = "Negada";
                        }
                    }
                    Colaboracoes.Text += $@"<tr>
                            <td>{doacao.ONG.Nome}</td>
                            <td>{item}</td>
                            <td>{qtdDoado}</td>
                            <td>{doacao.DataDoacao.ToString().Substring(0, 10)}</td>
                            <td>{estadoConfirmacao}</td>
                          </tr>";
                }
            foreach(DoacaoMonetaria doacao in colaboracoes.ListaDoacoesMonetarias(codigo))
            {
                string item = "Monetário";
                string qtdDoado = $@"R$" + doacao.ValorDoacao.ToString();
                string estadoConfirmacao = "";
                if (doacao.DoacaoConfirmada == true)
                {
                    estadoConfirmacao = "Aceita";
                }
                else
                {
                    if (doacao.respostaOng.ToString() == "01/01/0001 00:00:00")
                    {
                        estadoConfirmacao = "Pendente";
                    }
                    else
                    {
                        estadoConfirmacao = "Negada";
                    }
                }
                Colaboracoes.Text += $@"<tr>
                            <td>{doacao.ONG.Nome}</td>
                            <td>{item}</td>
                            <td>{qtdDoado}</td>
                            <td>{doacao.DataDoacao.ToString().Substring(0, 10)}</td>
                            <td>{estadoConfirmacao}</td>
                          </tr>";
            }
        }
    }
}