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

            GerarEmentosHtml gerarElementosHtml = new GerarEmentosHtml();
            Usuario usuario = (Usuario)Session["usuario"];
            string nav = gerarElementosHtml.MudarNavegacao(true, 1);
            string footer = gerarElementosHtml.GerarFooter();
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
                    <p>Data: {doacao.DataDoacao.ToString().Substring(0, 10)}</p>
                    <p>Estado: {estado}</p>
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
                    <p>Quantidader: {doacao.QuantidadeDoado}</p>
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
                    <p>Quantidader: R${doacao.ValorDoacao}</p>
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
                    <p>Quantidader: {doacao.Quantidade}</p>
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
                    Confirmacoes.Text = "";
                    Confirmacoes.Text += $@"<div class='confirmacao'>
              <div class='infos-confirmacao'>
                    <p>Doador: {doacao.Doador.Nome}</p>
                    <p>Item: Monetário</p>
                    <p>Valor: R${doacao.QuantidadeDoado}</p>
                    <p>Data: {doacao.DataDoacao.ToString().Substring(0, 10)}</p>
              </div>
              <div class='botoes-confirmacao'>
                    <img src = './../../images/icons/confirmado.png' alt=''>
                    <img src = './../../images/icons/recusar.png' alt=''>
              </div>
            </div>";
                }
                foreach (DoacaoCampanha doacao in colaboracoes.ListarDoacoesCampanhasItensConfirmadasOuNao(codigo, false))
                {
                    Confirmacoes.Text += $@"<div class='confirmacao'>
              <div class='infos-confirmacao'>
                    <p>Doador: {doacao.Doador.Nome}</p>
                    <p>Item: {doacao.TipoItem.Nome}</p>
                    <p>Quantidader: {doacao.QuantidadeDoado}</p>
                    <p>Data: {doacao.DataDoacao.ToString().Substring(0, 10)}</p>
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
                    <p>Data: {doacao.DataDoacao.ToString().Substring(0, 10)}</p>
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
    }
    
}    