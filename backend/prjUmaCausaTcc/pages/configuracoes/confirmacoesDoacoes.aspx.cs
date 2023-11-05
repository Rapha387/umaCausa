using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using prjUmaCausaTcc.Logicas;

namespace prjUmaCausaTcc.pages.configuracoes
{
    public partial class confirmacoesDoacoes : System.Web.UI.Page
    {
        Usuario usuario;
        Usuario doador;
        DateTime dataDoacao;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = (Usuario)Session["usuario"];
            Doacoes doacoes = new Doacoes();

            if (usuario == null || usuario.TipoDoUsuario.Codigo != 1)
                Response.Redirect("../index.aspx");

            if (Request["pagina"] == "1")
            {
                pnlBotao.Controls.Clear();
                pnlDonwload.Controls.Clear();
            }

            GerarEmentosHtml gerarElementosHtml = new GerarEmentosHtml();

            string nav = gerarElementosHtml.GerarHeaderConfiguracoes(usuario);
            string footer = gerarElementosHtml.GerarFooterConfiguracoes();
            string menu = gerarElementosHtml.GerarMenu(usuario);

            Footer.Text = footer;
            Navegacao.Text = nav;
            Menu.Text = menu;

            int codigo = usuario.Codigo;

            if (Request["pagina"] == "1")
            {
                Confirmacoes.Text = "";

                foreach (Doacoes doacao in doacoes.ListarDoacoesConfirmadas(codigo))
                {
                    string estado = "";
                    if (doacao.DoacaoConfirmada == true)
                    {
                        estado = "Aceita";
                    }
                    else
                    {
                        estado = "Recusada";
                    }
                    Confirmacoes.Text +=
                        $@"<div class='confirmacao'>
                              <div class='infos-confirmacao'>
                                <p>Doador: {doacao.NomeDoador}</p>
                                <p>Item: {doacao.NomeTipoItem}</p>
                                <p>Quantidade:{doacao.Quantidade}</p>
                                <p>Data: {doacao.DataDoacao.ToString().Substring(0, 10)}</p>
                                <p>Estado: {estado}</p>
                              </div>
                            </div>";
                }
            }
            else
            {
                pnlBotao.Controls.Clear();
                pnlDonwload.Controls.Clear();
                foreach(Doacoes doacao in doacoes.ListarDoacoesNaoConfirmadas(codigo))
                {
                    pnlBotao.Controls.Add(new LiteralControl(
                        $@"<div class='confirmacao'>
                              <div class='infos-confirmacao'>
                                <p>Doador: {doacao.NomeDoador}</p>
                                <p>Tipo: {doacao.NomeTipoItem}</p>
                                <p>Valor:{doacao.Quantidade}</p>
                                <p>Data: {doacao.DataDoacao.ToString().Substring(0, 10)}</p>
                              </div>
                              <div class='botoes-confirmacao'>
                                <img id='{doacao.TipoDoacao + doacao.Codigo}' onclick=aceitarDoacao(this) src='./../../images/icons/confirmado.png' alt=''>
                                <img id='{doacao.TipoDoacao + doacao.Codigo}' onclick=aparecerPopupConfirmacao(this) src = './../../images/icons/recusar.png' alt = ''>
                              </div>
                            </div>"));
                }
            }  
        }
    }
    
}    