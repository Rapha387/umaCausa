using prjUmaCausaTcc.Logicas;
using prjUmaCausaTcc.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages.configuracoes
{
    public partial class meuPerfil : System.Web.UI.Page
    {
        Usuario usuario;
        protected void Page_Load(object sender, EventArgs e)
        {

            this.usuario = (Usuario)Session["usuario"];
            this.usuario.BuscarOng(this.usuario.Codigo);

            if (usuario == null)
                Response.Redirect("../index.aspx");

            GerarEmentosHtml gerarEmentosHtml = new GerarEmentosHtml();
            string header = gerarEmentosHtml.GerarHeaderConfiguracoes(usuario);
            string footer = gerarEmentosHtml.GerarFooterConfiguracoes();
            string menu = gerarEmentosHtml.GerarMenu(usuario);

            LitHeader.Text = header;
            LitFooter.Text = footer;
            Litmenu.Text = menu;

            if (usuario.TipoDoUsuario.Codigo == 1)
            {
                if(!IsPostBack)
                { 
                    #region Declarar Textboxs
                usuario.BuscarOng(usuario.Codigo);
                txtNome.Text = usuario.Nome.ToString();
                txtBairro.Text = usuario.Bairro.ToString();
                txtCep.Text = usuario.Cep.ToString();
                txtCidade.Text = usuario.Cidade.ToString();
                txtCnpj.Text = usuario.Identificacao.ToString();
                txtEmail.Text = usuario.Email.ToString();
                txtEmailContato.Text = usuario.EmailContato;
                txtLogradouro.Text = usuario.Rua.ToString();
                txtPix.Text = usuario.NumeroPix.ToString();
                txtTelefone.Text = usuario.Telefone.ToString();
                txtWebSite.Text = usuario.Website.ToString();
                txtComplemento.Text = usuario.Complemento.ToString();
                txtNumero.Text = usuario.Numero;
                txtUF.SelectedValue = usuario.Estado;
                txtDescricao.Text = usuario.Descricao.ToString();
                chkConfirmaoBuscaDoacoes.Checked = false;
                if (usuario.PosssibilidadeBusca == true)
                    chkConfirmaoBuscaDoacoes.Checked = true;
                #endregion
                }

                #region Cetegoria Ong
                var listaCategoriasOng = new CategoriasOng().ListarCategoriasOng();
                var listaCategoriasOngsAtivas = new CategoriasOng().ListarIDCategoriaDaOng(usuario.Codigo);
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

                foreach (CategoriaOng categoriaong in listaCategoriasOngsAtivas)
                {
                        Panel painel = (Panel)pnlCategorias.FindControl("pnlCategoria" + categoriaong.Codigo.ToString());
                        CheckBox chk = (CheckBox)painel.FindControl("chkCategoria" + categoriaong.Codigo.ToString());
                        chk.Checked = true;
                }
                #endregion

                #region Dias
                var listaDias = new Dias().ListarDias();
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
                    txtComecoDia.EnableViewState = true;
                    Label lblFimDia = new Label();
                    lblFimDia.ID = "lblFimDia" + codigo;
                    lblFimDia.Text = "Até:";

                    TextBox txtFimDia = new TextBox();
                    txtFimDia.ID = "txtFimDia" + codigo;
                    txtFimDia.TextMode = TextBoxMode.Time;
                    txtFimDia.Enabled = true;


                    pnlInputsDia.Controls.Add(lblInputInicio);
                    pnlInputsDia.Controls.Add(txtComecoDia);
                    pnlInputsDia.Controls.Add(lblFimDia);
                    pnlInputsDia.Controls.Add(txtFimDia);
                    pnlDia.Controls.Add(pnlCheckBox);
                    pnlDia.Controls.Add(pnlInputsDia);

                    pnlDiasDisponiveis.Controls.Add(pnlDia);

                    foreach (DiaUsuario diaUsuario in new Dias().ListarDiasDisponiveisOng(usuario.Codigo))
                    {
                        if (diaUsuario.Dia.Codigo.ToString() == codigo.ToString())
                        {
                            checkBoxDia.Checked = true;
                            string horario = diaUsuario.HorarioInicio.ToString().Substring(11, 5);
                            txtComecoDia.Text = horario;
                            txtComecoDia.Enabled = false;

                            string horariofim = diaUsuario.HorarioFim.ToString().Substring(11, 5);
                            txtFimDia.Text = horariofim;
                            txtFimDia.Enabled = false;
                        }
                    }
                }


                #endregion

                #region Itens
                var listaTiposItens = new Itens().ListarTiposItens();
                var listaItens = new Itens().ListarItensAceitosOng(usuario.Codigo);
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

                foreach (TipoItem tipoitens in listaItens)
                {
                    Panel painel = (Panel)pnlItensAceitos.FindControl("pnlItem" + tipoitens.Codigo.ToString());
                    CheckBox chk = (CheckBox)painel.FindControl("chkItem" + tipoitens.Codigo.ToString());
                    chk.Checked = true;
                }
                #endregion
            }
            else
            {
                #region Declarar Texboxs
                usuario.BuscarDoador(usuario.Codigo);
                PnlItensOngs.Visible = false;
                txtNome.Text = usuario.Nome.ToString();
                txtBairro.Text = usuario.Bairro.ToString();
                txtCep.Text = usuario.Cep.ToString();
                txtCidade.Text = usuario.Cidade.ToString();
                txtCnpj.Text = usuario.Identificacao.ToString();
                txtEmail.Text = usuario.Email.ToString();
                txtLogradouro.Text = usuario.Rua.ToString();
                txtTelefone.Text = usuario.Telefone.ToString();
                txtComplemento.Text = usuario.Complemento.ToString();
                txtNumero.Text = usuario.Numero;
                #endregion
            }
        }
        protected void BtnSalvarAlteraçoes_Click(object sender, EventArgs e)
        {
            Usuario user = (Usuario)Session["usuario"];
            try
            {
                if (user.TipoDoUsuario.Codigo == 1)
                {
                    #region Váriaveis
                    int codigo = user.Codigo;
                    int tipo = user.TipoDoUsuario.Codigo;
                    string nome = txtNome.Text;
                    string telefone = txtTelefone.Text;
                    string email = txtEmail.Text;
                    string emailcontato = txtEmailContato.Text;
                    string descricao = txtDescricao.Text;
                    string bairro = txtBairro.Text;
                    string cidade = txtCidade.Text;
                    string rua = txtLogradouro.Text;
                    string numero = txtNumero.Text;
                    string cep = txtCep.Text;
                    string complemento = txtComplemento.Text;
                    string endereco = $"{rua}, {numero}, {cidade}, {user.Estado}";
                    string latitude = "";
                    string longitude = "";
                    string website = txtWebSite.Text;
                    string pix = txtPix.Text;
                    bool podebuscar = chkConfirmaoBuscaDoacoes.Checked;
                    #endregion

                    CapturarGeolocalizacao capturarGeolocalizacao = new CapturarGeolocalizacao();
                    (latitude, longitude) = capturarGeolocalizacao.DefinirCoordenadas(endereco);

                    usuario.AlterarDadosOng(codigo, nome, email, emailcontato, telefone, descricao, cep, cidade, rua, numero, bairro, complemento, latitude, longitude, website, pix, podebuscar);

                    List<CategoriaOng> categoriasChecadas = new List<CategoriaOng>();
                    List<CategoriaOng> categoriasNaoChecadas = new List<CategoriaOng>();
                    for (int i = 1; i <= pnlCategorias.Controls.Count; i++)
                    {
                        Panel painel = (Panel)pnlCategorias.FindControl("pnlCategoria" + i.ToString());

                        CheckBox chk1 = (CheckBox)painel.FindControl("chkCategoria" + i.ToString());

                        if (chk1.Checked)
                        {
                            CategoriaOng categoriaOng = new CategoriaOng();
                            categoriaOng.Nome = chk1.Text;
                            categoriaOng.Codigo = i;
                            categoriasChecadas.Add(categoriaOng);
                        }
                        else
                        {
                            CategoriaOng categoriaOng = new CategoriaOng();
                            categoriaOng.Nome = chk1.Text;
                            categoriaOng.Codigo = i;
                            categoriasNaoChecadas.Add(categoriaOng);
                        }
                    }

                    foreach(CategoriaOng categoria in categoriasChecadas)
                    {
                        new Ong_CategoiraOng().CadastrarOngCategoriaOng(user.Codigo, categoria.Codigo);
                    }
                    foreach (CategoriaOng categoria in categoriasNaoChecadas)
                    {
                        new Ong_CategoiraOng().DeletarOngCategoriaOng(user.Codigo, categoria.Codigo);
                    }

                    List<TipoItemOng> itemsChecados = new List<TipoItemOng>();
                    List<TipoItemOng> itemsNaoChecados = new List<TipoItemOng>();
                    for (int i = 1; i <= pnlItensAceitos.Controls.Count; i++)
                    {
                        Panel painel = (Panel)pnlItensAceitos.FindControl("pnlItem" + i.ToString());

                        CheckBox chk = (CheckBox)painel.FindControl("chkItem" + i.ToString());

                        if (chk.Checked)
                        {
                            TipoItem item = new TipoItem();
                            item.Nome = chk.Text;
                            item.Codigo = i;
                            TipoItemOng tipoItemOng = new TipoItemOng();
                            tipoItemOng.TipoItem = item;
                            itemsChecados.Add(tipoItemOng);
                        }
                        else
                        {
                            TipoItem item = new TipoItem();
                            item.Nome = chk.Text;
                            item.Codigo = i;
                            TipoItemOng tipoItemOng = new TipoItemOng();
                            tipoItemOng.TipoItem = item;
                            itemsNaoChecados.Add(tipoItemOng);
                        }
                    }

                    foreach (TipoItemOng item in itemsChecados)
                    {
                        new TipoItemOng().CadastrarTipoItemOng(item.TipoItem.Codigo, user.Codigo);
                    }
                    foreach (TipoItemOng item in itemsChecados)
                    {
                        new TipoItemOng().DeletarTipoItemOng(item.TipoItem.Codigo, user.Codigo);
                    }

                    //List<DiaUsuario> diasDisponiveis = new List<DiaUsuario>();
                    //for (int i = 1; i <= pnlDiasDisponiveis.Controls.Count; i++)
                    //{
                    //    if (i > 7)
                    //        break;

                    //    int codigo1 = i;

                    //    Panel painel = (Panel)pnlDiasDisponiveis.FindControl("pnlDia" + codigo1);

                    //    Panel pnlCheckBox = (Panel)painel.FindControl("pnlCheckBoxDia" + codigo1);
                    //    CheckBox chkDia = (CheckBox)pnlCheckBox.FindControl("chkDia" + codigo1);

                    //    if (chkDia.Checked)
                    //    {
                    //        Panel pnlInputsDia = (Panel)painel.FindControl("pnlInputsDia" + codigo1);
                    //        TextBox txtIncioDia = (TextBox)pnlInputsDia.FindControl("txtComecoDia" + codigo1);
                    //        TextBox txtFimDia = (TextBox)pnlInputsDia.FindControl("txtFimDia" + codigo1);

                    //        Dia dia = new Dia();
                    //        dia.Codigo = codigo1;

                    //        DateTime hrIncioDia = DateTime.Parse(txtIncioDia.Text);
                    //        DateTime hrFimDia = DateTime.Parse(txtFimDia.Text);

                    //        if (hrFimDia < hrIncioDia)
                    //        {
                    //            erroDias.Text = $"O horário de fim do {chkDia.Text} não pode ser menor que o de início";
                    //            return;
                    //        }

                    //        DiaUsuario diaDisponivel = new DiaUsuario();

                    //        diaDisponivel.Dia = dia;
                    //        diaDisponivel.HorarioFim = hrFimDia;
                    //        diaDisponivel.HorarioInicio = hrIncioDia;

                    //        diasDisponiveis.Add(diaDisponivel);
                    //    }
                    //}

                    //erroDias.Text = "";
                    //if (diasDisponiveis.Count == 0)
                    //{
                    //    erroDias.Text = "Selecione pelo menos um dia";
                    //    return;
                    //}

                }
                else
                {
                    int codigo = usuario.Codigo;
                    int tipo = usuario.TipoDoUsuario.Codigo;
                    string nome = txtNome.Text;
                    string telefone = txtTelefone.Text;
                    string email = txtEmail.Text;
                    string descricao = txtDescricao.Text;
                    string bairro = txtBairro.Text;
                    string cidade = txtCidade.Text;
                    string rua = txtLogradouro.Text;
                    string numero = txtNumero.Text;
                    string cep = txtCep.Text;
                    string complemento = txtComplemento.Text;
                    string endereco = $"{rua}, {numero}, {cidade}, {usuario.Estado}";
                    string latitude = "";
                    string longitude = "";
                    CapturarGeolocalizacao capturarGeolocalizacao = new CapturarGeolocalizacao();
                    (latitude, longitude) = capturarGeolocalizacao.DefinirCoordenadas(endereco);
                    usuario.AlterarDadosdoador(codigo, nome, email, telefone, cep, cidade, rua, numero, bairro, complemento, latitude, longitude);
                }
            }
            catch
            {
                Response.Redirect("../erro.aspx");
            }
        }

        
    }
}