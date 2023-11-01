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
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario usuario = (Usuario)Session["usuario"];
            Doacoes doacoes = new Doacoes();

            if (usuario == null)
                Response.Redirect("../index.aspx");

            if (Request["pagina"] == "1")
            {
                Confirmacoes.Text = "";
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
                foreach (Doacoes doacao in doacoes.ListarDoacoesNaoConfirmadas(codigo))
                {
                    Confirmacoes.Text = "";
                    string estado = "";
                    if (doacao.DoacaoConfirmada == true)
                    {
                        estado = "Aceita";
                    }
                    else
                    {
                        estado = "Recusada";
                    }
                }
                foreach (Doacoes doacao in doacoes.ListarDoacoesNaoConfirmadas(codigo))
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
                                <p>Tipo: {doacao.TipoDoacao}</p>
                                <p>Quantidade: {doacao.Quantidade}</p>
                                <p>Data: {doacao.DataDoacao.ToString().Substring(0, 10)}</p>
                                <p>Estado: {estado}</p>
                              </div>
                           </div>";
                }
            }
            else
            {
                Confirmacoes.Text = "";
                foreach(Doacoes doacao in doacoes.ListarDoacoesNaoConfirmadas(codigo))
                {
                    Panel1.Controls.Add(new LiteralControl(
                        $@"<div class='confirmacao'>
                              <div class='infos-confirmacao'>
                                <p>Doador: {doacao.NomeDoador}</p>
                                <p>Tipo: {doacao.NomeTipoItem}</p>
                                <p>Valor:{doacao.Quantidade}</p>
                                <p>Data: {doacao.DataDoacao.ToString().Substring(0, 10)}</p>
                              </div>
                              <div class='botoes-confirmacao'>
                                <img id='' onclick=confirmarDoacao() src='./../../images/icons/confirmado.png' alt=''>
                                <img id='' onclick=recusarDoacao() src = './../../images/icons/recusar.png' alt = ''>
                              "));
                    if (doacao.TipoDoacao == "dm")
                    {
                        Panel pnlButton = new Panel();
                        Button button = new Button();
                        pnlButton.Controls.Add(button);
                        pnlDonwload.Controls.Add(pnlButton);
                        button.Text = "Donwload";
                        Panel1.Controls.Add(pnlButton);
                    }
                    Panel1.Controls.Add(new LiteralControl("</div></div>"));

                }
            }  
        }
    }
    
}    