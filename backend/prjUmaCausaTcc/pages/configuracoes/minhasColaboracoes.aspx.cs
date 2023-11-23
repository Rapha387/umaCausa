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
            Usuario usuario = (Usuario)Session["usuario"];

            if (usuario == null)
                Response.Redirect("../index.aspx");

            GerarEmentosHtml gerarElementosHtml = new GerarEmentosHtml();

            string nav = gerarElementosHtml.GerarHeaderConfiguracoes(usuario);
            string footer = gerarElementosHtml.GerarFooterConfiguracoes();
            string menu = gerarElementosHtml.GerarMenu(usuario);

            Footer.Text = footer;
            Navegacao.Text = nav;
            Menu.Text = menu;

            int codigo = usuario.Codigo;
            Doacoes doacoes = new Doacoes();

            var listaDoacoes = doacoes.ListarDoacoes(codigo);

            if (listaDoacoes.Count == 0)
            {
                pnlTabela.Visible = false;
                litErro.Text = "Não foi possível encontrar nenhumna colaboração";
                return;
            }

            foreach (Doacoes doacao in listaDoacoes)
            {
                string estadoConfirmacao = "";
                string nomeOng = "";
                string classEstadoConfirmacao = "";
                if (doacao.DoacaoConfirmada == true)
                {
                    estadoConfirmacao = "Aceita";
                    classEstadoConfirmacao = "aceito";
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
                        classEstadoConfirmacao = "negado";
                    }
                }
                if(doacao.Nome != null)
                {
                    nomeOng = doacao.ONG.Nome + ": ";
                }
                else
                {
                    nomeOng = doacao.ONG.Nome;
                }
                Colaboracoes.Text += $@"<tr>
                        <td>{nomeOng}{doacao.Nome}</td>
                        <td>{doacao.NomeTipoItem}</td>
                        <td>{doacao.Quantidade}</td>
                        <td>{doacao.DataDoacao.ToString().Substring(0, 10)}</td>
                        <td class='{classEstadoConfirmacao}'>{estadoConfirmacao}</td>
                      </tr>";
            }
        }

        protected void ImgPesquisar_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                string pesquisa = TxtPesquisa.Text;
                Colaboracoes.Text = "";
                Doacoes doacoes = new Doacoes();
                Usuario usuario = (Usuario)Session["usuario"];
                int codigo = usuario.Codigo;
                foreach (Doacoes doacao in doacoes.ListarDoacoesPesquisa(codigo, pesquisa))
                {
                    string estadoConfirmacao = "";
                    string nomeOng = "";
                    string classEstadoConfirmacao = "";

                    if (doacao.DoacaoConfirmada == true)
                    {
                        classEstadoConfirmacao = "aceito";
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
                            classEstadoConfirmacao = "negado";
                        } 
                    }

                    if (doacao.Nome != null)
                        nomeOng = doacao.ONG.Nome + ": ";
                    else
                        nomeOng = doacao.ONG.Nome;


                    Colaboracoes.Text += $@"<tr>
                        <td>{nomeOng}{doacao.Nome}</td>
                        <td>{doacao.NomeTipoItem}</td>
                        <td>{doacao.Quantidade}</td>
                        <td>{doacao.DataDoacao.ToString().Substring(0, 10)}</td>
                        <td class='{classEstadoConfirmacao}'>{estadoConfirmacao}</td>
                      </tr>";
                }
            }
            catch
            {
                litErro.Text = "colaboração não encontrada";
            }

        }
    }
}