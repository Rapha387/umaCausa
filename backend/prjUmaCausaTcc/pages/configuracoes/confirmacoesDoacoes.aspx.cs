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
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario usuario = (Usuario)Session["usuario"];

            if (usuario == null)
                Response.Redirect("../index.aspx");

            if (Request["pagina"] == "1")
            {
                PnlConfirmacoes.Visible = false;
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
                foreach (DoacaoCampanha doacao in colaboracoes.ListarDoacoesCampanhasMonetariasNaoConfirmadas(codigo))
                {
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
                foreach (DoacaoCampanha doacao in colaboracoes.ListarDoacoesCampanhasItensNaoConfirmadas(codigo))
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
                foreach (DoacaoMonetaria doacao in colaboracoes.ListarDoacoesMonetariasNaoConfirmadas(codigo))
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
                foreach (DoacaoItem doacao in colaboracoes.ListarDoacoesItensNaoConfirmadas(codigo))
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

        protected void BtnJaConfirmadas_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("confirmacoesDoacoes.aspx?pagina=1");
            
        }

        protected void BtnNaoConfirmadas_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("confirmacoesDoacoes.aspx");
            Response.Redirect("confirmacoesDoacoes.aspx");
        }
    }
    
}    