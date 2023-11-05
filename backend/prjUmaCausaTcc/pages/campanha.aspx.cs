﻿using prjUmaCausaTcc.Logicas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages
{
	public partial class campanha : System.Web.UI.Page
	{
        Usuario Usuario {  get; set; }
        Campanha Campanha { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            litOds.Text = "";
            btnEditarCampanha.Visible = false;

            #region gerarHTML

            GerarEmentosHtml gerarHtml = new GerarEmentosHtml();
            litFooter.Text = gerarHtml.GerarFooter();

            if (Session["usuario"] != null)
            {
                try
                {
                    this.Usuario = (Usuario)Session["usuario"];
                    litHeader.Text = gerarHtml.MudarNavegacao(Usuario);
                }
                catch (Exception ex)
                {
                    Response.Redirect("erro.aspx?e=" + ex.Message); ;
                }
            }
            else
            {
                litHeader.Text = gerarHtml.MudarNavegacao(null);
            }
            #endregion

            if (!String.IsNullOrEmpty(Request["c"]))
            {
                pnlDoacaoItem.Visible = false;
                pnlDoacaoMonetaria.Visible = false;

                int cd_campanha = 0;
                try
                {
                    cd_campanha = int.Parse(Request["c"]);

                    this.Campanha = new Campanha();

                    this.Campanha.BuscarCampanha(cd_campanha);
                    BuscarCampanha(this.Campanha);
                    BuscarONG(this.Campanha);
                    if (this.Usuario != null && this.Usuario.TipoDoUsuario.Codigo == 1 && this.Usuario.Codigo == this.Campanha.ONG.Codigo)
                    {
                        btnEditarCampanha.Visible = true;
                    }
                    Odesses odesses = new Odesses();

                    foreach (ODS ods in odesses.BuscarOdsCampanha(cd_campanha))
                    {
                        litOds.Text += $"<img src='../{ods.Foto}'' alt=''>";
                    }


                    if (this.Campanha.TipoItemArrecadado.Codigo == 0)
                        pnlDoacaoMonetaria.Visible = true;
                    else
                        pnlDoacaoItem.Visible = true;

                    ExibirOpcoesDdlDenuncia();

                    ExibirOpcoesDllTipoEntrega();

                }
                catch (Exception)
                {
                    Response.Redirect($"erro.aspx?e=não foi possível carregar essa página");
                }
            }
            else
            {
                Response.Redirect("erro.aspx?e=Página não encontrada");
            }

            litDoar.Text = "<button id='btnDoar'>DOAR</button>";
            if (this.Campanha.DataFim != null && this.Campanha.DataFim.ToString() != "01/01/0001 00:00:00")
            {
                litDoar.Text = "<button id='btnDoar' class='disabled' disabled>ENCERRADA</button>";
            }
        }

        private void BuscarCampanha(Campanha campanha)
        {
            try
            {
                double porcentagemBarra = campanha.PorcentagemArrecadado;
                if (campanha.PorcentagemArrecadado > 100)
                    porcentagemBarra = 100;

                litMeta.Text = "Meta: R$" + campanha.QuantidadeMeta.ToString().Replace(".", ",");
                litArrecadado.Text = "Quantidade Arrecadado: R$" + campanha.QuantidadeArrecadada.ToString().Replace(".", ",");

                if (campanha.TipoItemArrecadado.Codigo != 0)
                {
                    litArrecadado.Text = "Quantidade Arrecadado: " + campanha.QuantidadeArrecadada.ToString().Replace(".", ",") +" "+ campanha.TipoItemArrecadado.Nome;
                    litMeta.Text = campanha.QuantidadeMeta.ToString().Replace(".", ",") +" "+ campanha.TipoItemArrecadado.Nome;
                }

                litDescricao.Text = campanha.Descricao;
                litWebNome.Text = "umaCausa - " + campanha.Nome;
                litNome.Text = campanha.Nome;
                litProgresso.Text = $"<div class='progresso' style='width: {porcentagemBarra}%;'></div>";
                litImagem.Text = $"<div style='background-image: url(../{campanha.Banner});'class='imagem-campanha'></div>";

            }
            catch
            {
                Response.Redirect($"erro.aspx?e=pagina não encontrada");
            }
        }
        private void BuscarONG(Campanha campanha)
        {
            Usuario ong = new Usuario();
            ong.BuscarDadosMinimosOng(campanha.ONG.Codigo);
            litONG.Text = 
                $@"<a href='ong.aspx?ong={ong.Codigo}' style='color: #000;'>
                    <div class='infos-realizador'>
                        <img src = '../{ong.FotoPerfil}'>
                          <div>
                          <h3>{ong.Nome}</h3>
                          <p>{ong.Descricao}</p>
                        </div>
                    </div>
                  </a>";
        }
        private void ExibirOpcoesDdlDenuncia()
        {
            try
            {
                cmbMotivoDenuncia.Items.Clear();

                var listaMotivos = new MotivosDenunciaUsuario().ListarMotivosDenunciaUsuario();
                int contador = 1;
                cmbMotivoDenuncia.Items.Add("Selcione o motivo da Denuncia");
                foreach (MotivoDenunciaUsuario motivo in listaMotivos)
                {
                    cmbMotivoDenuncia.Items.Add(motivo.Nome);
                    cmbMotivoDenuncia.Items[contador].Value = motivo.Codigo.ToString();
                    contador++;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        private void ExibirOpcoesDllTipoEntrega()
        {
            var ListaTipoEntrega = new TiposEntrega().ListarTiposEntrega();
            int contador = 1;
            cmbTipoEntrega.Items.Add("Selecione o Tipo da Entrega");
            foreach (TipoEntrega tipoEntrega in ListaTipoEntrega)
            {
                cmbTipoEntrega.Items.Add(tipoEntrega.Nome);
                cmbTipoEntrega.Items[contador].Value = tipoEntrega.Codigo.ToString();
                contador++;
            }
        }

        protected void btnEditarCampanha_Click(object sender, EventArgs e)
        {
            Session["Campanha"] = this.Campanha;
            Response.Redirect("configuracoes/editarCampanha.aspx");
        }
    }
}