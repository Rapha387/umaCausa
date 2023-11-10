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
        int codigo;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(Request["ong"]))
            {
                int codigoOng = 0;

                #region Verificacoes
                Usuario ong = new Usuario();
                try
                {
                    codigoOng = int.Parse(Request["ong"]);
                    this.codigo = codigoOng;

                }
                catch (Exception)
                {
                    Response.Redirect($"erro.aspx?e=pagina não encontrada");
                }
                try
                {
                    ong.BuscarTipoDoUsuario(codigoOng);
                }
                catch
                {
                    Response.Redirect($"erro.aspx?e=pagina não encontrada");
                }
                if(ong.TipoDoUsuario == null || ong.TipoDoUsuario.Codigo == 0)
                {
                    Response.Redirect($"erro.aspx?e=pagina não encontrada");
                }
                #endregion

                #region Exibicoes
                try
                {
                    ExibirDadosMinimosUsuario(codigoOng);

                    ExibirCampanhasAtivas(codigoOng);

                    ExibirCampanhasInativas(codigoOng);
                    
                    ExibirFotosOng(codigoOng);

                    ExibirOpcoesDdlsDoacao(codigoOng);

                    ExibirOpcoesDdlDenuncia();
                }
                catch (Exception ex)
                {
                    Response.Redirect($"erro.aspx?e=" + ex.Message);
                }
                #endregion
            }
            else
            {
                Response.Redirect("erro.aspx?e=Página não encontrada");
            }
            

            #region CarregarElementosHTML
            GerarEmentosHtml gerarHtml = new GerarEmentosHtml();
            litFooter.Text = gerarHtml.GerarFooter();

            if (Session["usuario"] != null)
            {
                Usuario usuario = (Usuario)Session["usuario"];
                if (usuario.Codigo == this.codigo)
                {
                    pnlDoar.Visible = false;
                    btnMeuPerfil.Visible = true;
                }
                litHeader.Text = gerarHtml.MudarNavegacao(usuario);
            }
            else
            {
                litHeader.Text = gerarHtml.MudarNavegacao(null);
            }
            #endregion
        }
        private void ExibirFotosOng(int codigoOng)
        {
            List<FotoOng> fotosOng = new FotosOng().ListarFotosOng(codigoOng);
            litFimFotos.Text = "";
            litInicioFotos.Text = "";
            if (fotosOng.Count > 0)
            {
                litInicioFotos.Text += $@"
                    <div class='fotos'>
                        <h2>fotos</h2>
                   <div class='fotos-flex'>";
            }
            foreach (FotoOng foto in fotosOng)
            {
                litFotos.Text += $"<div style='background: url(../{foto.Foto}); background-position: center;background-repeat: no-repeat;background-size: cover;' class='foto'></div>";
            }
            if (fotosOng.Count > 0)
                litFimFotos.Text = "</div></div>";
        }
        private void ExibirDadosMinimosUsuario(int codigoOng)
        {
            try
            {
                Usuario usuario = new Usuario();
                usuario.BuscarOng(codigoOng);

                if (usuario == null)
                    Response.Redirect("erro.aspx?e=nao foi possivel carregar essa pagina");

                litNomeNavegador.Text = "UmaCausa - " + usuario.Nome;
                litCNPJ.Text = $"<a target='_blank' href='https://cnpj.info/{usuario.Identificacao.Replace(".", "").Replace("/", "").Replace("-", "")}'>" + usuario.Identificacao + "<a/>";
                litDescricao.Text = usuario.Descricao;
                litEmailContato.Text = $"<a target='_blank' target='_blank' href='mailto:{usuario.EmailContato}'>" + usuario.EmailContato + "</a>";
                litEndereco.Text = $"<a target='_blank' href='https://www.google.com/maps/place/{usuario.Latitude},{usuario.Longitude}'>{usuario.Rua}, {usuario.Numero} - {usuario.Bairro}, {usuario.Cidade} - {usuario.Estado}, {usuario.Cep}<a/>";
                litNome.Text = usuario.Nome;
                if (!String.IsNullOrEmpty(usuario.Website))
                    litSite.Text = $"<a target='_blank' href='{usuario.Website}'>" + usuario.Website + "</a>";
                else
                    pnlCardWebSite.Visible = false;

                litTelefone.Text = $"<a target='_blank' href='tel:{usuario.Telefone}'>" + usuario.Telefone + "</a>";

                foreach (CategoriaOng categoria in usuario.CategoriasOng)
                {
                    litCampanha.Text += $"<a href='ongs.aspx?c={categoria.Codigo}'><p>#{categoria.Nome}</p></a>";
                }

                litBanner.Text = $"<div class='banner' style='background: url(../{usuario.Banner}); background-position: center;background-repeat: no-repeat;background-size: cover;'></div>";
                litIcone.Text = $"<div class='logo-ong' style='background: url(../{usuario.FotoPerfil}); background-position: center;background-repeat: no-repeat;background-size: cover;'></div>";
            }
            catch(Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        private void ExibirCampanhasAtivas(int codigoOng)
        {
            litCampanhasAtivas.Text = "";

            try
            {
                List<Campanha> campanhasAtivas = new Campanhas().ListarDadosMinimosCampanhasDaOng(codigoOng);

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
                      <div class=infos-campanha>
                          <div class=info-campanha>Tipo: {campanha.TipoItemArrecadado.Nome}</div>
                          <div class=info-campanha>Finaliza: {campanha.DataPrevistaFim}</div>
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
        private void ExibirCampanhasInativas(int codigoOng)
        {
            litCampanhasInativas.Text = "";

            try
            {
                List<Campanha> campanhasInativas = new Campanhas().ListarDadosMinimosCampanhasFinalizadasDaOng(codigoOng);
                if (campanhasInativas.Count <= 0)
                    litCampanhasInativas.Text = "<p>Não há campanhas inativas</p>";
                foreach (Campanha campanha in campanhasInativas)
                {
                    double porcentagemBarra = campanha.PorcentagemArrecadado;
                    if (campanha.PorcentagemArrecadado > 100)
                        porcentagemBarra = 100;

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
                          <div class='quantidade-progresso' style='width: {porcentagemBarra}%'></div>
                        </div>
                        <div class='porcentagem'>{campanha.PorcentagemArrecadado}%</div>
                      </div>
                      <div class=infos-campanha>
                          <div class=info-campanha>Tipo: {campanha.TipoItemArrecadado.Nome}</div>
                          <div class=info-campanha>Finaliza: {campanha.DataPrevistaFim}</div>
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
        private void ExibirOpcoesDdlsDoacao(int codigoOng)
        {
            try
            {
                cmbTipoEntrega.Items.Clear();
                cmbTipoItem.Items.Clear();

                var ListaTipoItens = new Itens().ListarItensAceitosOng(codigoOng);
                int contador = 1;
                cmbTipoItem.Items.Add("Selecione o Tipo do Item");
                foreach (TipoItem tipoItem in ListaTipoItens)
                {
                    cmbTipoItem.Items.Add(tipoItem.Nome);
                    cmbTipoItem.Items[contador].Value = tipoItem.Codigo.ToString();
                    contador++;
                }

                var ListaTipoEntrega = new TiposEntrega().ListarTiposEntrega();
                contador = 1;
                cmbTipoEntrega.Items.Add("Selecione o Tipo da Entrega");
                foreach (TipoEntrega tipoEntrega in ListaTipoEntrega)
                {
                    cmbTipoEntrega.Items.Add(tipoEntrega.Nome);
                    cmbTipoEntrega.Items[contador].Value = tipoEntrega.Codigo.ToString();
                    contador++;
                }
            }
            catch(Exception ex)
            {
                throw new Exception(ex.Message);
            }
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
            catch(Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        protected void btnMeuPerfil_Click(object sender, EventArgs e)
        {
            Response.Redirect("configuracoes/meuPerfil.aspx");
        }
    }
}