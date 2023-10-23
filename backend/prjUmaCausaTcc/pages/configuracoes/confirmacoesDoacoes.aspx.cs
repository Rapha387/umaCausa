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

            Colaboracoes colaboracoes = new Colaboracoes();
            int codigo = usuario.Codigo;

            if (Request["pagina"] == "1")
            {
                foreach (DoacaoCampanha doacao in colaboracoes.ListarDoacoesCampanhasMonetariasConfirmadasOuNao(codigo, true))
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
                    Confirmacoes.Text += $@"<div class='confirmacao'>
                      <div class='infos-confirmacao'>
                            <p>Doador: {doacao.Doador.Nome}</p>
                            <p>Item: Monetário</p>
                            <p>Valor: R${doacao.QuantidadeDoado}</p>
                            <p>Data: {doacao.DataDoacao.ToString().Substring(0, 10)} - Horário: HH:mm</p>
                      </div>
                      <div class='botoes-confirmacao'>
                            <img src = './../../images/icons/confirmado.png' alt=''>
                            <img src = './../../images/icons/recusar.png' alt=''>
                      </div>
                    </div>";
                }
                foreach (DoacaoCampanha doacao in colaboracoes.ListarDoacoesCampanhasItensConfirmadasOuNao(codigo, true))
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
                    Confirmacoes.Text += $@"<div class='confirmacao'>
              <div class='infos-confirmacao'>
                    <p>Doador: {doacao.Doador.Nome}</p>
                    <p>Item: {doacao.TipoItem.Nome}</p>
                    <p>Quantidade: {doacao.QuantidadeDoado}</p>
                    <p>Data: {doacao.DataDoacao.ToString().Substring(0, 10)}</p>
                    <p>Estado: {estado}</p>
              </div>
            </div>";
                }
                foreach (DoacaoMonetaria doacao in colaboracoes.ListarDoacoesMonetariasConfirmadasOuNao(codigo, true))
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
                    Confirmacoes.Text += $@"<div class='confirmacao'>
              <div class='infos-confirmacao'>
                    <p>Doador: {doacao.Doador.Nome}</p>
                    <p>Item: Monetário</p>
                    <p>Quantidade: R${doacao.ValorDoacao}</p>
                    <p>Data: {doacao.DataDoacao.ToString().Substring(0, 10)}</p>
                    <p>Estado: {estado}</p>
              </div>
            </div>";
                }
                foreach (DoacaoItem doacao in colaboracoes.ListarDoacoesItensConfirmadasOuNao(codigo, true))
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
                    Confirmacoes.Text += $@"<div class='confirmacao'>
              <div class='infos-confirmacao'>
                    <p>Doador: {doacao.Doador.Nome}</p>
                    <p>Item: {doacao.NomeItem}</p>
                    <p>Quantidade: {doacao.Quantidade}</p>
                    <p>Data: {doacao.DataDesejada.ToString().Substring(0, 10)} - Horário: {doacao.HorarioDesejado.ToString().Substring(0, 5)}</p>
                    <p>Estado: {estado}</p>
              </div>
            </div>";
                }
            }
            else
            {
                foreach (DoacaoCampanha doacao in colaboracoes.ListarDoacoesCampanhasMonetariasConfirmadasOuNao(codigo, false))
                {
                    //Panel pnlBotoes = new Panel();
                    //ImageButton imagebuttonConfirmar = new ImageButton();
                    //ImageButton imagebuttonRecusar = new ImageButton();

                    //pnlBotoes.CssClass = "botoes-confirmacao";
                    //imagebuttonConfirmar.ImageUrl = "./../../images/icons/confirmado.png";
                    //imagebuttonRecusar.ImageUrl = "./../../images/icons/recusar.png";
                    //imagebuttonConfirmar.ID =

                    Confirmacoes.Text = "";
                    Confirmacoes.Text += $@"<div class='confirmacao'>
              <div class='infos-confirmacao'>
                    <p>Doador: {doacao.Doador.Nome}</p>
                    <p>Item: Monetário</p>
                    <p>Valor: R${doacao.QuantidadeDoado}</p>
                    <p>Data: {doacao.DataDoacao.ToString().Substring(0, 10)}</p>
              </div>
              <div class='botoes-confirmacao'>
                    <asp:ImageButton ID='ImgBtnConfirmar' runat='server' src='./../../images/icons/confirmado.png'/>           
                    <asp:ImageButton ID='ImgBtnRecusar' runat='server' src='./../../images/icons/recusar.png' OnClick='ImgBtnRecusar_Click'/>
                       </ div>
                </div>";
                }
                foreach (DoacaoCampanha doacao in colaboracoes.ListarDoacoesCampanhasItensConfirmadasOuNao(codigo, false))
                {
                    Confirmacoes.Text += $@"<div class='confirmacao'>
                      <div class='infos-confirmacao'>
                            <p>Doador: {doacao.Doador.Nome}</p>
                            <p>Item: {doacao.TipoItem.Nome}</p>
                            <p>Quantidader: {doacao.QuantidadeDoado}</p>
                            <p>Data: {doacao.DataDoacao.ToString().Substring(0, 10)} - Horário: HH:mm</p>
                      </div>
                      <div class='botoes-confirmacao'>
                            <img src = './../../images/icons/confirmado.png' alt=''>
                            <img src = './../../images/icons/recusar.png' alt=''>
                      </div>
                    </div>";
                }
                foreach (DoacaoMonetaria doacao in colaboracoes.ListarDoacoesMonetariasConfirmadasOuNao(codigo, false))
                {
                    Confirmacoes.Text += $@"<div class='confirmacao'>
                      <div class='infos-confirmacao'>
                            <p>Doador: {doacao.Doador.Nome}</p>
                            <p>Item: Monetário</p>
                            <p>Quantidader: R${doacao.ValorDoacao}</p>
                            <p>Data: {doacao.DataDoacao.ToString().Substring(0, 10)} - Horário: HH:mm</p>
                      </div>
                      <div class='botoes-confirmacao'>
                            <img src = './../../images/icons/confirmado.png' alt=''>
                            <img src = './../../images/icons/recusar.png' alt=''>
                      </div>
                    </div>";
                }
                foreach (DoacaoItem doacao in colaboracoes.ListarDoacoesItensConfirmadasOuNao(codigo, false))
                {
                    Confirmacoes.Text += $@"<div class='confirmacao'>
                      <div class='infos-confirmacao'>
                            <p>Doador: {doacao.Doador.Nome}</p>
                            <p>Item: {doacao.NomeItem}</p>
                            <p>Quantidader: {doacao.Quantidade}</p>
                            <p>Data: {doacao.DataDesejada.ToString().Substring(0, 10)} - Horário: {doacao.HorarioDesejado.ToString().Substring(0, 5)}</p>
                      </div>
                      <div class='botoes-confirmacao'>
                            <img src = './../../images/icons/confirmado.png' alt=''>
                            <img src = './../../images/icons/recusar.png' alt=''>
                      </div>
                    </div>";
                }
            }  
        }

        protected void ImgBtnConfirmar_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImgBtnRecusar_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
    
}    