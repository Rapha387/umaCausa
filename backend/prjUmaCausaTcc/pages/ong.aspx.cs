using prjUmaCausaTcc.Logicas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages
{
    public partial class ong : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(Request["ong"]))
            {
                try
                {
                    cmbTipoEntrega.Items.Clear();
                    cmbTipoItem.Items.Clear();

                    int codigoOng = int.Parse(Request["ong"]);
                    ExibirDadosMinimosUsuario(codigoOng);

                    ExibirCampanhasAtivas(codigoOng);

                    ExibirCampanhasInativas(codigoOng);

                    var ListaTipoItens = new Itens().ListarItensAceitosOng(codigoOng);

                    cmbTipoItem.Items.Add("Selcione o Tipo do Item");
                    foreach (TipoItem tipoItem in ListaTipoItens)
                    {
                        int contador = 0;
                        cmbTipoItem.Items.Add(tipoItem.Nome);
                        cmbTipoItem.Items[contador].Value = tipoItem.Codigo.ToString();
                        contador++;
                    }

                    var ListaTipoEntrega = new TiposEntrega().ListarTiposEntrega();

                    cmbTipoEntrega.Items.Add("Selcione o Tipo da Entrega");
                    foreach (TipoEntrega tipoEntrega in ListaTipoEntrega)
                    {
                        cmbTipoEntrega.Items.Add(tipoEntrega.Nome);
                        cmbTipoEntrega.Items[tipoEntrega.Codigo].Value = tipoEntrega.Codigo.ToString();
                    }

                }
                catch(Exception ex)
                {
                    Response.Redirect($"erro.aspx?e=");
                }
            }
            else
            {
                Response.Redirect("erro.aspx?e=Página não encontrada");
            }

            GerarEmentosHtml gerarHtml = new GerarEmentosHtml();
            litFooter.Text = gerarHtml.GerarFooter();

            if (Session["email"] != null)
            {
                Usuario usuario = new Usuario();

                usuario.BuscarUsuarioPeloEmail(Session["email"].ToString());

                litHeader.Text = gerarHtml.MudarNavegacao(true, usuario.TipoDoUsuario.Codigo);
                
                pnlBtnDoar.Visible = true;
            }
            else
            {
                litHeader.Text = gerarHtml.MudarNavegacao(false, 0);
                pnlBtnDoar.Visible = false;
            }
        }

        private void ExibirDadosMinimosUsuario(int codigoUsuario)
        {
            try
            {
                Usuario usuario = new Usuario();
                usuario.BuscarOng(codigoUsuario);
                litNomeNavegador.Text = usuario.Nome + " - umaCausa";
                litCNPJ.Text = $"<a href='https://cnpj.info/{usuario.Identificacao.Replace(".", "").Replace("/", "").Replace("-", "")}'>" + usuario.Identificacao + "<a/>";
                litDescricao.Text = usuario.Descricao;
                litEmailContato.Text = $"<a href='mailto:{usuario.EmailContato}'>" + usuario.EmailContato + "</a>";
                litEndereco.Text = $"{usuario.Rua}, {usuario.Numero} - {usuario.Bairro}, {usuario.Cidade} - {usuario.Estado}, {usuario.Cep}";
                litNome.Text = usuario.Nome;
                litSite.Text = $"<a href='{usuario.Website}'>" + usuario.Website + "</a>";
                litTelefone.Text = $"<a href='tel:{usuario.Telefone}'>" + usuario.Telefone + "</a>";
                litCampanha.Text = $"<a src='ongs.aspx?categoria{usuario.CategoriaOng.Codigo}'><p>#{usuario.CategoriaOng.Nome}</p></a>";
                litBanner.Text = $"<div class='banner' style='background: url(../{usuario.Banner}); background-position: center;background-repeat: no-repeat;background-size: cover;'></div>";
                litIcone.Text = $"<div class='logo-ong' style='background: url(../{usuario.FotoPerfil}); background-position: center;background-repeat: no-repeat;background-size: cover;'></div>";
            }
            catch(Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        private void ExibirCampanhasAtivas(int codigoUsuario)
        {
            litCampanhasAtivas.Text = "";

            try
            {
                List<Campanha> campanhasAtivas = new Campanhas().ListarDadosMinimosCampanhasDaOng(codigoUsuario);

                if (campanhasAtivas.Count <= 0)
                    litCampanhasAtivas.Text = "<p>Não temos campanhas ainda :/</p>";

                foreach (Campanha campanha in campanhasAtivas)
                {
                    litCampanhasAtivas.Text += $@"
                    <div class='campanha swiper-slide'>
                        <a href='campanha.aspx?c={campanha.Codigo}'>
                         <div style='background: url(../{campanha.Banner}); background-position: center;background-repeat: no-repeat;background-size: cover;'class='imagem-campanha'></div>
                    <div class='sobre-campanha'>
                      <div class='nome-campanha'>
                        {campanha.Nome}
                      </div>
                      <div class='progresso'>
                        <div class='barra-progresso'>
                          <div class='quantidade-progresso' style='width: {campanha.PorcentagemArrecadado}%'></div>
                        </div>
                        <div class='porcentagem'>{campanha.PorcentagemArrecadado}%</div>
                      </div>
                    </div>
                    </a>
                    </div>";
                }
            }
            catch(Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        private void ExibirCampanhasInativas(int codigoUsuario)
        {
            litCampanhasInativas.Text = "";

            try
            {
                List<Campanha> campanhasInativas = new Campanhas().ListarDadosMinimosCampanhasFinalizadasDaOng(codigoUsuario);
                if (campanhasInativas.Count <= 0)
                    litCampanhasInativas.Text = "<p>Não há campanhas inativas</p>";
                foreach (Campanha campanha in campanhasInativas)
                {
                    litCampanhasInativas.Text += $@"
                    <div class='campanha swiper-slide'>
                        <a href='campanha.aspx?c={campanha.Codigo}'>
                         <div style='background: url(../{campanha.Banner}); background-position: center;background-repeat: no-repeat;background-size: cover;' class='imagem-campanha'></div>
                    <div class='sobre-campanha'>
                      <div class='nome-campanha'>
                        {campanha.Nome}
                      </div>
                      <div class='progresso'>
                        <div class='barra-progresso'>
                          <div class='quantidade-progresso' style='width: {campanha.PorcentagemArrecadado}%'></div>
                        </div>
                        <div class='porcentagem'>{campanha.PorcentagemArrecadado}%</div>
                      </div>
                    </div>
                    </a>
                    </div>";
                }
            }
            catch(Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}