using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages.configuracoes
{
    public partial class editarCampanha : System.Web.UI.Page
    {
        Usuario Usuario { get; set; }
        Campanha Campanha { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            #region Gerar Elementos Html
            GerarEmentosHtml gerarHtml = new GerarEmentosHtml();
            litFooter.Text = gerarHtml.GerarFooterConfiguracoes();

            if (Session["usuario"] != null)
            {
                Usuario usuario = (Usuario)Session["usuario"];
                litHeader.Text = gerarHtml.GerarHeaderConfiguracoes(usuario);
                if (usuario.TipoDoUsuario.Codigo == 1)
                    this.Usuario = usuario;
                else
                    Response.Redirect($"../erro.aspx?e=pagina não encontrada");
            }
            else
            {
                litHeader.Text = gerarHtml.MudarNavegacao(null);
            }
            #endregion

            #region Verificar Campanha
            if (Session["Campanha"] != null)
            {
                this.Campanha = (Campanha)Session["Campanha"];
            }
            else if (Request["id"] != null)
            {
                this.Campanha = new Campanha();
                this.Campanha.BuscarCampanha(int.Parse(Request["id"]));
                if (this.Campanha.ONG.Codigo != this.Usuario.Codigo)
                    Response.Redirect($"../erro.aspx?e=pagina não encontrada");
            }
            else
            {
                Response.Redirect($"../erro.aspx?e=pagina não encontrada");
            }
            #endregion

            foreach (TipoItem item in new Itens().ListarTiposItens())
            {
                ddlTipoCampanha.Items.Insert(item.Codigo, new ListItem(item.Nome, item.Codigo.ToString()));
            }


            List<ODS> ODS = new Odesses().ListarOds();

            foreach (ODS ods in ODS)
            {

                Panel pnlCheck = new Panel();
                CheckBox chk = new CheckBox();
                chk.ID = "chkOds" + ods.Codigo.ToString();
                chk.Text = ods.Nome;

                pnlCheck.CssClass = "pnlCheckBox";

                pnlCheck.ID = "pnlOds" + ods.Codigo.ToString();
                pnlCheck.Controls.Add(chk);

                pnlODS.Controls.Add(pnlCheck);
            }
            if (!IsPostBack)
            {

                txtNome.Text = this.Campanha.Nome;
                txtQuantidade.Enabled = true;
                txtQuantidade.Text = this.Campanha.QuantidadeMeta.ToString();
                txtDescricao.Text = this.Campanha.Descricao;
                DateTime dataHoraOriginal = DateTime.ParseExact(this.Campanha.DataPrevistaFim, "MM/dd/yyyy HH:mm:ss", null);
                ddlTipoCampanha.SelectedValue = this.Campanha.TipoItemArrecadado.Codigo.ToString();
                txtDia.Text = dataHoraOriginal.ToString("yyyy-MM-dd");
                txtDia.Enabled = true;
                ddlTipoCampanha.Enabled = true;
            }
            Odesses odesses = new Odesses();

            foreach (ODS ods in odesses.BuscarOdsCampanha(this.Campanha.Codigo))
            {
                Panel painel = (Panel)pnlODS.FindControl("pnlOds" + ods.Codigo.ToString());
                CheckBox chk = (CheckBox)painel.FindControl("chkOds" + ods.Codigo.ToString());
                chk.Checked = true;
            }


        }
        protected void btnAlterar_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(txtDescricao.Text) && !String.IsNullOrEmpty(txtNome.Text) && !String.IsNullOrEmpty(txtQuantidade.Text) && !String.IsNullOrEmpty(txtDia.Text))
            {
                try
                {
                    string nome = txtNome.Text;
                    double quantidade = double.Parse(txtQuantidade.Text);
                    DateTime dataHoraOriginal = DateTime.ParseExact(txtDia.Text, "yyyy-MM-dd", null);
                    dataHoraOriginal = new DateTime(dataHoraOriginal.Year, dataHoraOriginal.Month, dataHoraOriginal.Day, 0,0,0);
                    DateTime dia = dataHoraOriginal;
                    string descricao = txtDescricao.Text;
                    int CodigoTipo = int.Parse(ddlTipoCampanha.SelectedValue);
                    this.Campanha.EditarCampanha(this.Campanha.Codigo, nome, descricao, quantidade,dia);
                    int codigoCampanha = this.Campanha.Codigo;
                    string imgBanner = $@"images/campanhas/campanha1.png";

                    if (fileInputBanner.HasFile)
                    {
                        HttpPostedFile fotoBanner = fileInputBanner.PostedFile;
                        imgBanner = $@"uploads/campanhas/banners/{codigoCampanha}.jpg";
                        this.Campanha.AdicionarBannerCampanha(codigoCampanha, imgBanner);
                        fotoBanner.SaveAs(Request.PhysicalApplicationPath + imgBanner.Replace("/", @"\"));
                    }
                    List<ODS> odsses = new List<ODS>();
                    List<ODS> odssesInativas = new List<ODS>();
                    for (int i = 1; i <= pnlODS.Controls.Count; i++)
                    {
                        Panel painel = (Panel)pnlODS.FindControl("pnlOds" + i.ToString());

                        CheckBox chk = (CheckBox)painel.FindControl("chkOds" + i.ToString());

                        if (chk.Checked)
                        {
                            ODS ods = new ODS();
                            ods.Nome = chk.Text;
                            ods.Codigo = i;
                            odsses.Add(ods);
                        }
                        else
                        {
                            ODS ods = new ODS();
                            ods.Nome = chk.Text;
                            ods.Codigo = i;
                            odssesInativas.Add(ods);
                        }
                    }
                    foreach (ODS ods in odssesInativas)
                    {
                        CampanhaODS campanhaODS = new CampanhaODS();
                        campanhaODS.DeletarCampanhaOds(codigoCampanha, ods.Codigo);
                    }
                    foreach (ODS ods in odsses)
                    {
                        CampanhaODS campanhaODS = new CampanhaODS();
                        campanhaODS.CadastrarCampanhaOds(codigoCampanha, ods.Codigo);
                    }
                }
                catch (Exception ex)
                {
                    throw new Exception(ex.Message);
                }

            };
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("editarCampanha.aspx");
        }
    }
}