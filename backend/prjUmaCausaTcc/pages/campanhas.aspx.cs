using Org.BouncyCastle.Asn1.Ocsp;
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
        string c = "";
        string d = "";
        int indiceDePaginacao = 0;
        protected void Page_Load(object sender, EventArgs e)
        { 
            litItemPaginacao.Text = "";
            litCampanhas.Text = "";
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
            if (!String.IsNullOrEmpty(Request["c"]))
                c = Request["c"].ToString();

            if (!String.IsNullOrEmpty(Request["d"]))
                d = Request["d"].ToString();


            if (!String.IsNullOrEmpty(Request["d"]) && d == "0")
            {
                campanhas = listarCampanhas.ListarCampanhasPorData(0, 0);
                GerarCampanhas(campanhas);
            }
            
            if (!String.IsNullOrEmpty(Request["d"]) && d == "1")
            {
                campanhas = listarCampanhas.ListarCampanhasPorData(0, 1);
                GerarCampanhas(campanhas);
            }
            

            

            if (!String.IsNullOrEmpty(Request["c"]) && c == "0")
            {
                campanhas = listarCampanhas.ListarCampanhasMonetarias(0);
                GerarCampanhas(campanhas);
            }
            
            if (!String.IsNullOrEmpty(Request["c"]) && c == "1")
            {
                campanhas = listarCampanhas.ListarCampanhasItens(0);
                GerarCampanhas(campanhas);
            }
            else if (!String.IsNullOrEmpty(Request["t"]))
            {
                campanhas = listarCampanhas.ListarCampanhasPorTipo(0, int.Parse(Request["t"]));
                GerarCampanhas(campanhas);
            }

                campanhas = listarCampanhas.ListarCampanhasASC(0);
                GerarCampanhas(campanhas);
            #endregion

            #region DDLS
            ddlCategoria.Items.Insert(0, new ListItem("Monetário", "0"));
            ddlCategoria.Items.Insert(1, new ListItem("Item", "1"));

            ddlData.Items.Insert(0, new ListItem("Mais Recente", "0"));
            ddlData.Items.Insert(1, new ListItem("Mais Antigo", "1"));

            foreach (TipoItem item in new Itens().ListarTiposItensNaoMonetarios())
            {
                ddlTipo.Items.Insert(item.Codigo - 1, new ListItem(item.Nome, item.Codigo.ToString()));
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

            #region !PostBack
            if (!IsPostBack)
            {
                if (!String.IsNullOrEmpty(Request["c"]))
                    ddlCategoria.SelectedIndex = int.Parse(Request["c"]);

                if (!String.IsNullOrEmpty(Request["d"]))
                    ddlData.SelectedIndex = int.Parse(Request["d"]);

                if (!String.IsNullOrEmpty(Request["t"]))
                    ddlTipo.SelectedValue = Request["t"];
            }
            #endregion

            

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
        protected void ddlTipo_TextChanged(object sender, EventArgs e)
        {


            Response.Redirect($"campanhas.aspx?t={ddlTipo.SelectedValue}");
        }

        protected void ddlData_TextChanged(object sender, EventArgs e)
        {
            Response.Redirect($"campanhas.aspx?d={ddlData.SelectedValue}");
        }
        #endregion

        protected void btnPesquisar_Click(object sender, ImageClickEventArgs e)
        {
            if (txtPesquisa.Text == "")
                Response.Redirect("campanhas.aspx");

            Response.Redirect("campanhas.aspx?s="+ txtPesquisa.Text);
        }

    }
}