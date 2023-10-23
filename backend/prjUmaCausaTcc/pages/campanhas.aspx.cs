﻿using Org.BouncyCastle.Asn1.Ocsp;
using prjUmaCausaTcc.Logicas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages
{
    public partial class campanhas : System.Web.UI.Page
    {
        int indiceDePaginacao = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            litItemPaginacao.Text = "";
            

            List<Campanha> campanhas = new List<Campanha>();
            Campanhas listarCampanhas = new Campanhas();

            #region Gerar Elementos Html
            GerarEmentosHtml gerarHtml = new GerarEmentosHtml();
            litFooter.Text = gerarHtml.GerarFooter();

            if (Session["usuario"] != null)
            {
                try
                {
                    Usuario usuario = (Usuario)Session["usuario"];
                    litHeader.Text = gerarHtml.MudarNavegacao(usuario);
                }
                catch (Exception ex)
                {
                    Response.Redirect("erro.aspx?e=" + ex.Message);
                }
            }
            else
            {
                litHeader.Text = gerarHtml.MudarNavegacao(null);
            }
            #endregion

            #region GerarCampanhas

            #endregion

            #region DDLS
            ddlCategoria.Items.Insert(0, new ListItem("Monetário", "0"));
            ddlCategoria.Items.Insert(1, new ListItem("Item", "1"));

            foreach (TipoItem item in new Itens().ListarTiposItens())
            {
                ddlTipo.Items.Insert(item.Codigo - 1, new ListItem(item.Nome, item.Codigo.ToString()));
            }
            #endregion

            #region !PostBack
            if (!IsPostBack)
            {
                if (!String.IsNullOrEmpty(Request["c"]))
                    ddlCategoria.SelectedIndex = int.Parse(Request["c"]);
            }
            #endregion

            int indice = new Campanhas().ListarIndiceCampanhas();
            for (int i = 0; i < indice; i++)
            {
                indiceDePaginacao = i + 1;
                litItemPaginacao.Text += $"<a href='campanhas.aspx?pagina={(i + 1)}' class='itemPaginacao'>{(i + 1)}</a> <br />";
            }
            if (String.IsNullOrEmpty(litItemPaginacao.Text))
            {
                btnNext.Visible = false;
                btnBack.Visible = false;
            }

            if (!String.IsNullOrEmpty(Request["pagina"]))
            {
                campanhas = listarCampanhas.ListarCampanhasASC((int.Parse(Request["pagina"]) - 1));
                GerarCampanhas(campanhas);
                return;
            }

            if (!String.IsNullOrEmpty(Request["s"]))
            {
                campanhas = listarCampanhas.ListarCampanhasPesquisa(Request["s"].ToString());
                GerarCampanhas(campanhas);
                return;
            }

            if (!String.IsNullOrEmpty(Request["c"]) && ddlCategoria.SelectedIndex == 0)
            {
                campanhas = listarCampanhas.ListarCampanhasMonetarias();
                GerarCampanhas(campanhas);
                return;
            }

            campanhas = listarCampanhas.ListarCampanhasASC(0);
            GerarCampanhas(campanhas);

        }

        private void GerarCampanhas(List<Campanha> campanhas)
        {
            foreach (Campanha campanha in campanhas)
            {
                litCampanhas.Text += $@"
                <a href='./campanha.aspx?c={campanha.Codigo}'>
                  <div class='campanha'>
                    <div style='background-image: url(../{campanha.Banner});'class='imagem-campanha'></div>
                    <div class='sobre-campanha'>
                      <div class='nome-campanha'>
                        {campanha.Nome}
                      </div>
                      <div class='progresso'>
                        <div class='barra-progresso'>
                          <div class='quantidade-progresso' style='width: {campanha.PorcentagemArrecadado}%;'></div>
                        </div>
                        <div class='porcentagem' >{campanha.PorcentagemArrecadado}%</div>
                      </div>
                      <div class=infos-campanha>
                          <div class=info-campanha>Tipo: {campanha.TipoItemArrecadado.Nome}</div>
                          <div class=info-campanha>Finaliza: {campanha.DataPrevistaFim}</div>
                      </div>
                    </div>
                  </div>
                </a>";
            }
        }

        #region Botões NextBack
        protected void btnNext_Click(object sender, ImageClickEventArgs e)
        {
            if (String.IsNullOrEmpty(Request["pagina"]))
                Response.Redirect($"campanhas.aspx?pagina=2");
            
            if (indiceDePaginacao > int.Parse(Request["pagina"]))
                Response.Redirect($"campanhas.aspx?pagina={(int.Parse(Request["pagina"]) + 1)}");
        }

        protected void btnBack_Click(object sender, ImageClickEventArgs e)
        {
            if (String.IsNullOrEmpty(Request["pagina"]))
                Response.Redirect($"campanhas.aspx?pagina={1}");
                
            if (int.Parse(Request["pagina"]) > 1)
                Response.Redirect($"campanhas.aspx?pagina={(int.Parse(Request["pagina"]) - 1)}");
        }
        #endregion

        #region DDLTextChanged
        protected void ddlCategoria_TextChanged(object sender, EventArgs e)
        {
            Response.Redirect($"campanhas.aspx?c={ddlCategoria.SelectedValue}");
        }
        #endregion

        protected void btnPesquisar_Click(object sender, ImageClickEventArgs e)
        {
            if (txtPesquisa.Text == "")
                Response.Redirect("campanhas.aspx");

            Response.Redirect("campanhas.aspx?s="+ txtPesquisa.Text);
        }

        protected void ddlTipo_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddlData_TextChanged(object sender, EventArgs e)
        {

        }
    }
}