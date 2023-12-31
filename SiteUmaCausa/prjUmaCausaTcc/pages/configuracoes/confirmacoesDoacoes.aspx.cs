﻿using System;
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

            if (usuario == null)
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

            try
            {
                if (Request["pagina"] == "1")
                {
                    var listaDoacoes = doacoes.ListarDoacoesConfirmadas(codigo);

                    foreach (Doacoes doacao in listaDoacoes)
                    {
                        string estado = "";
                        string classEstado = "";
                        if (doacao.DoacaoConfirmada == true)
                        {
                            estado = "Aceita";
                            classEstado = "aceito";
                        }
                        else
                        {
                            estado = "Recusada";
                            classEstado = "negado";
                        }
                        Confirmacoes.Text +=
                            $@"<div class='confirmacao'>
                                  <div class='infos-confirmacao'>
                                    <p>Doador: {doacao.Doador.Nome}</p>
                                    <p>Item: {doacao.NomeTipoItem}</p>
                                    <p>Quantidade: {doacao.Quantidade}</p>
                                    <p>Data: {doacao.DataDoacao.ToString().Substring(0, 10)}</p>
                                  </div>
                                  <div>
                                    <p class='{classEstado}'>{estado}</p>
                                  </div>
                                </div>";
                    }

                    if (listaDoacoes.Count == 0)
                        Confirmacoes.Text = "Você não tem nenhuma doação para confirmar no momento";

                }
                else
                {
                        pnlBotao.Controls.Clear();
                        pnlDonwload.Controls.Clear();

                        var listaDoacoes = doacoes.ListarDoacoesNaoConfirmadas(codigo);
                        foreach (Doacoes doacao in listaDoacoes)
                        {
                            pnlBotao.Controls.Add(new LiteralControl(
                                $@"<div class='confirmacao'>
                                        <div class='infos-confirmacao'>
                                        <p>Doador: {doacao.Doador.Nome}</p>
                                        <p>Item: {doacao.NomeTipoItem}</p>
                                        <p>Valor:{doacao.Quantidade}</p>
                                        <p>Data: {doacao.DataDoacao.ToString().Substring(0, 10)}</p>
                                        </div>
                                        <div class='botoes-confirmacao'>
                                        <img id='{doacao.TipoDoacao + doacao.Codigo}' onclick=aparecerPopupConfirmacao(this) src = './../../images/icons/recusar.png' alt = ''>
                                        <img id='{doacao.TipoDoacao + doacao.Codigo}' onclick=aceitarDoacao(this) src='./../../images/icons/confirmado.png' alt=''>
                                        "));

                            if (doacao.Monetario == true)
                            {
                                Panel pnlButton = new Panel();
                                Button button = new Button();
                                button.Attributes.Add("comprovante", doacao.Comprovante);
                                pnlButton.Controls.Add(button);
                                pnlDonwload.Controls.Add(pnlButton);

                                button.Text = "Baixar Comprovante";
                                pnlBotao.Controls.Add(pnlButton);
                                doador = doacao.Doador;
                                dataDoacao = doacao.DataDoacao;
                                button.Click += new EventHandler(Button_Click);

                            }
                            pnlBotao.Controls.Add(new LiteralControl("</div></div>"));
                        }

                        if (listaDoacoes.Count == 0)
                            Confirmacoes.Text = "<div class='confirmacao'>Você não tem nenhuma doação para confirmar no momento</div>";
                }
            }
            catch
            {
                Confirmacoes.Text = "<div class='confirmacao'>Não foi possível carregar as confirmações. Por favor tente novamente mais tarde.</div>";
            }

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            string comprovante = button.Attributes["comprovante"];
            FileIo.DonwloadArquivo(comprovante.Replace(@"\", "/"), "comprovante.jpg");
        }

        protected void ImgBtnConfirmar_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImgBtnRecusar_Click(object sender, ImageClickEventArgs e)
        {

        }


    }
    
}    