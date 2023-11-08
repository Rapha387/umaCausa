using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages
{
    public partial class criarCampanha : System.Web.UI.Page
    {
        Usuario usuario { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            #region Gerar Elementos Html
            GerarEmentosHtml gerarHtml = new GerarEmentosHtml();
            litFooter.Text = gerarHtml.GerarFooter();
            
            if (Session["usuario"] != null)
            {
                this.usuario = (Usuario)Session["usuario"];
                litHeader.Text = gerarHtml.MudarNavegacao(this.usuario);
                
            }
            else
            {
                litHeader.Text = gerarHtml.MudarNavegacao(null);
            }
            if (usuario != null && usuario.TipoDoUsuario.Codigo == 1)
                this.usuario = usuario;
            else
                Response.Redirect($"erro.aspx?e=pagina não encontrada");
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
        }

        protected void btnCriarDivulgacao_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(txtDescricao.Text) && !String.IsNullOrEmpty(txtNome.Text) && !String.IsNullOrEmpty(txtQuantidade.Text) && !String.IsNullOrEmpty(txtDia.Text))
            {
                try
                {
                    string nome = txtNome.Text;
                    double quantidade = double.Parse(txtQuantidade.Text);
                    DateTime dataHoraOriginal = DateTime.ParseExact(txtDia.Text, "yyyy-MM-dd", null);
                    dataHoraOriginal = new DateTime(dataHoraOriginal.Year, dataHoraOriginal.Month, dataHoraOriginal.Day, 0, 0, 0);
                    DateTime dia = dataHoraOriginal;
                    string descricao = txtDescricao.Text;
                    int CodigoTipo = int.Parse(ddlTipoCampanha.SelectedValue);
                    Campanha campanha = new Campanha();
                    campanha.CriarCampanha(nome, descricao, dia, quantidade, "", this.usuario, CodigoTipo);
                    campanha.BuscarUltimaCampanhaAdcionada();
                    int codigoCampanha = campanha.Codigo;
                    string imgBanner = $@"images/fotoPadrao/bannerOngPadrao.png";

                    List<ODS> odsses = new List<ODS>();
                    for (int i = 1; i < pnlODS.Controls.Count; i++)
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
                    }                        

                    foreach (ODS ods in odsses)
                    {
                        CampanhaODS campanhaODS = new CampanhaODS();
                        campanhaODS.CadastrarCampanhaOds(codigoCampanha, ods.Codigo);
                    }

                    if (fileInputBanner.HasFile)
                    {
                        HttpPostedFile fotoBanner = fileInputBanner.PostedFile;
                        imgBanner = $@"uploads/campanhas/banners/{codigoCampanha}.jpg";
                        campanha.AdicionarBannerCampanha(codigoCampanha, imgBanner);
                        fotoBanner.SaveAs(Request.PhysicalApplicationPath + imgBanner.Replace("/", @"\"));
                    }

                }
                catch (Exception ex)
                {
                    Response.Redirect("erro.aspx?e"+ex.Message);
                }
            }
            else
            {
                literro.Text = "Campos em branco!";
            }
        }
    }
}