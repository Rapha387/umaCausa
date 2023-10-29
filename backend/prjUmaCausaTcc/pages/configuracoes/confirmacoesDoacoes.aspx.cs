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
                    Confirmacoes.Text += 
                        $@"<div class='confirmacao'>
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
                    Confirmacoes.Text += 
                         $@"<div class='confirmacao'>
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
                    Confirmacoes.Text += 
                         $@"<div class='confirmacao'>
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
                Confirmacoes.Text = "";
                foreach(Doacoes doacao in doacoes.ListarDoacoesNaoConfirmadas(codigo))
                {
                    Confirmacoes.Text += 
                        $@"<div class='confirmacao'>
                              <div class='infos-confirmacao'>
                                <p>Doador: {doacao.NomeDoador}</p>
                                <p>Item: {doacao.NomeTipoItem}</p>
                                <p>Valor:{doacao.Quantidade}</p>
                                <p>Data: {doacao.DataDoacao.ToString().Substring(0, 10)}</p>
                              </div>
                              <div class='botoes-confirmacao'>
                                <img id='' onclick=confirmarDoacao() src='./../../images/icons/confirmado.png' alt=''>
                                <img id='' onclick=recusarDoacao() src = './../../images/icons/recusar.png' alt = ''>
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