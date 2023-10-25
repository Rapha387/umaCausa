using Google.Protobuf.WellKnownTypes;
using prjUmaCausaTcc.Logicas;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages
{
    public partial class cadastroOng : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] != null)
                Response.Redirect("index.aspx");

            GerarEmentosHtml gerarHtml = new GerarEmentosHtml();
            litFooter.Text = gerarHtml.GerarFooter();
            litHeader.Text = gerarHtml.MudarNavegacao(null);

            try
            {
                CategoriasOng categoriasOng = new CategoriasOng();

                var listaCategoriasOng = categoriasOng.ListarCategoriasOng();

                foreach (CategoriaOng categoria in listaCategoriasOng)
                {
                    Panel pnlCheck = new Panel();
                    CheckBox chk = new CheckBox();
                    chk.ID = "chkCategoria" + categoria.Codigo.ToString();
                    chk.Text = categoria.Nome;

                    pnlCheck.CssClass = "pnlCheckBox";

                    pnlCheck.ID = "pnlCategoria" + categoria.Codigo.ToString();
                    pnlCheck.Controls.Add(chk);

                    pnlCategorias.Controls.Add(pnlCheck);
                }

                Itens tiposItens = new Itens();

                var listaTiposItens = tiposItens.ListarTiposItens();

                foreach (TipoItem item in listaTiposItens)
                {
                    if (item.Codigo != 0)
                    {
                        Panel pnlCheck = new Panel();
                        CheckBox chk = new CheckBox();
                        chk.ID = "chkItem" + item.Codigo.ToString();
                        chk.Text = item.Nome;

                        pnlCheck.CssClass = "pnlCheckBox";

                        pnlCheck.ID = "pnlItem" + item.Codigo.ToString();
                        pnlCheck.Controls.Add(chk);

                        pnlItensAceitos.Controls.Add(pnlCheck);
                    }
                }

                Dias dias = new Dias();

                var listaDias = dias.ListarDias();

                foreach (Dia dia in listaDias)
                {
                    int codigo = dia.Codigo;

                    Panel pnlDia = new Panel();
                    pnlDia.ID = "pnlDia" + codigo;
                    pnlDia.CssClass = "inputsDia";

                    Panel pnlCheckBox = new Panel();
                    pnlCheckBox.ID = "pnlCheckBoxDia" + codigo;
                    pnlCheckBox.CssClass = "pnlCheckBoxDia";

                    CheckBox checkBoxDia = new CheckBox();
                    checkBoxDia.ID = "chkDia" + codigo;
                    checkBoxDia.Text = dia.Nome;

                    pnlCheckBox.Controls.Add(checkBoxDia);

                    Panel pnlInputsDia = new Panel();
                    pnlInputsDia.ID = "pnlInputsDia" + codigo;
                    pnlInputsDia.CssClass = "pnlInputsDia";

                    Label lblInputInicio = new Label();
                    lblInputInicio.ID = "lblInputInicio" + codigo;
                    lblInputInicio.Text = "De:";

                    TextBox txtComecoDia = new TextBox();
                    txtComecoDia.ID = "txtComecoDia" + codigo;
                    txtComecoDia.TextMode = TextBoxMode.Time;
                    txtComecoDia.Enabled = false;

                    Label lblFimDia = new Label();
                    lblFimDia.ID = "lblFimDia" + codigo;
                    lblFimDia.Text = "Até:";

                    TextBox txtFimDia = new TextBox();
                    txtFimDia.ID = "txtFimDia" + codigo;
                    txtFimDia.TextMode = TextBoxMode.Time;
                    txtFimDia.Enabled = false;

                    pnlInputsDia.Controls.Add(lblInputInicio);
                    pnlInputsDia.Controls.Add(txtComecoDia);
                    pnlInputsDia.Controls.Add(lblFimDia);
                    pnlInputsDia.Controls.Add(txtFimDia);

                    pnlDia.Controls.Add(pnlCheckBox);
                    pnlDia.Controls.Add(pnlInputsDia);

                    pnlDiasDisponiveis.Controls.Add(pnlDia);
                }
            }

            catch (Exception ex)
            {
                Response.Redirect("erro.aspx?" + ex.Message);
            }
        }

        protected void btnCadastrarOng_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario usuario = new Usuario();

                string nome = txtNome.Text;
                string cnpj = txtCnpj.Text;
                string email = txtEmail.Text;
                string telefone = txtTelefone.Text;
                string senha = txtConfirmarSenha.Text;
                string cep = txtCep.Text;
                string uf = txtUF.Text;
                string cidade = txtCidade.Text;
                string bairro = txtBairro.Text;
                string logradouro = txtLogradouro.Text;
                string numero = txtNumero.Text;
                string complemento = txtComplemento.Text;
                string latitude = "";
                string longitude = "";
                string pix = txtPix.Text;
                string webSite = txtWebSite.Text;
                string emailContato = txtEmailContato.Text;
                string descricao = txtDescricao.Text;
                bool buscaDoacoes = chkConfirmaoBuscaDoacoes.Checked;

                string endereco = $"{logradouro}, {numero}, {cidade}, {uf}";

                int novoCodigo;
                novoCodigo = usuario.BuscarNovoCodigoUsuario();

                Directory.CreateDirectory(Request.PhysicalApplicationPath + $@"uploads\ongs\{novoCodigo}");
                Directory.CreateDirectory(Request.PhysicalApplicationPath + $@"uploads\ongs\{novoCodigo}\banner");
                Directory.CreateDirectory(Request.PhysicalApplicationPath + $@"uploads\ongs\{novoCodigo}\icone");
                Directory.CreateDirectory(Request.PhysicalApplicationPath + $@"uploads\ongs\{novoCodigo}\fotos");


                if (fileInputLogo.PostedFile != null)
                {
                    HttpPostedFile fotoPerfil = fileInputLogo.PostedFile;
                    fotoPerfil.SaveAs(Request.PhysicalApplicationPath + $@"uploads\ongs\{novoCodigo}\icone\{novoCodigo}.jpg");
                }
                else
                {
                    
                }

                if (fileInputBanner.PostedFile != null)
                {
                    HttpPostedFile fotoBanner = fileInputLogo.PostedFile;
                    fotoBanner.SaveAs(Request.PhysicalApplicationPath + $@"uploads\ongs\{novoCodigo}\banner\{novoCodigo}.jpg");
                }
                else
                {
                    
                }

                CapturarGeolocalizacao capturarGeolocalizacao = new CapturarGeolocalizacao();
                (latitude, longitude) = capturarGeolocalizacao.DefinirCoordenadas(endereco);

                string imgPerfil = $@"uploads\ongs\{novoCodigo}\icone\{novoCodigo}.jpg";
                string imgBanner = $@"uploads\ongs\{novoCodigo}\banner\{novoCodigo}.jpg";


                usuario.CadastrarOng(nome, senha, email, telefone, cnpj, cep, uf, cidade, logradouro, numero, bairro, complemento, latitude, longitude, imgPerfil, webSite, imgBanner, pix, descricao, emailContato, buscaDoacoes);


                List<CategoriaOng> categorias = new List<CategoriaOng>();
                for (int i = 1; i < pnlCategorias.Controls.Count; i++)
                {
                    Panel painel = (Panel)pnlCategorias.FindControl("pnlCategoria" + i.ToString());

                    CheckBox chk = (CheckBox)painel.FindControl("chkCategoria" + i.ToString());

                    if (chk.Checked)
                    {
                        CategoriaOng categoria = new CategoriaOng();
                        categoria.Nome = chk.Text;
                        categoria.Codigo = i;

                        categorias.Add(categoria);
                    }
                }


                List<TipoItem> itemsAceitos = new List<TipoItem>();
                for(int i = 1; i < pnlItensAceitos.Controls.Count; i++)
                {
                    Panel painel = (Panel)pnlItensAceitos.FindControl("pnlItem" + i.ToString());

                    CheckBox chk = (CheckBox)painel.FindControl("chkItem" + i.ToString());

                    if (chk.Checked)
                    {
                        TipoItem item = new TipoItem();
                        item.Nome = chk.Text;
                        item.Codigo = i;

                        itemsAceitos.Add(item);
                    }
                }


                List<DiaUsuario> diasDisponiveis = new List<DiaUsuario>();
                for (int i = 1; i <= pnlDiasDisponiveis.Controls.Count; i++)
                {
                    if (i > 7)
                        break;

                    int codigo = i;

                    Panel painel = (Panel)pnlDiasDisponiveis.FindControl("pnlDia" + codigo);
                    
                    Panel pnlCheckBox = (Panel)painel.FindControl("pnlCheckBoxDia" + codigo);
                    CheckBox chkDia = (CheckBox)pnlCheckBox.FindControl("chkDia" + codigo);

                    if (chkDia.Checked)
                    {
                        Panel pnlInputsDia = (Panel)painel.FindControl("pnlInputsDia" + codigo);
                        TextBox txtIncioDia = (TextBox)pnlInputsDia.FindControl("txtComecoDia" + codigo);
                        TextBox txtFimDia = (TextBox)pnlInputsDia.FindControl("txtFimDia" + codigo);

                        Dia dia = new Dia();
                        dia.Codigo = codigo;

                        DateTime hrIncioDia = DateTime.Parse(txtIncioDia.Text);
                        DateTime hrFimDia = DateTime.Parse(txtFimDia.Text);

                        DiaUsuario diaDisponivel = new DiaUsuario();

                        //diaDisponivel.CadastrarDiaUsuario(codigoOng, dia, hrIncioDia, hrFimDia);
                    }
                }


                //Response.Redirect("index.aspx");

            }
            catch (Exception ex)
            {
                lblErro.Text = ex.Message;  
            }
        }
    }
}