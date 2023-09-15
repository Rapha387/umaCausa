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
                int codigoUsuario = int.Parse(Request["ong"]);
                ExibirDadosMinimosUsuario(codigoUsuario);

                ExibirCampanhasAtivas(codigoUsuario);

                ExibirCampanhasInativas(codigoUsuario);
            }
        }

        private void ExibirDadosMinimosUsuario(int codigoUsuario)
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

        private void ExibirCampanhasAtivas(int codigoUsuario)
        {
            List<Campanha> campanhasAtivas = new Campanhas().ListarDadosMinimosCampanhasDaOng(codigoUsuario);
            if (campanhasAtivas.Count <= 0)
                litCampanhasAtivas.Text = "<p>Não temos campanhas ainda :/</p>";

            foreach (Campanha campanha in campanhasAtivas)
            {
                litCampanhasAtivas.Text += $@"
                <div class='campanha swiper-slide'>
                    <a href='camapanha.aspx?campanha={campanha.Codigo}'>
                     <div style='background: url(../{campanha.Banner}); background-position: center;background-repeat: no-repeat;background-size: cover;'class='imagem-campanha'></div>
                <div class='sobre-campanha'>
                  <div class='nome-campanha'>
                    {campanha.Nome}
                  </div>
                  <div class='progresso'>
                    <div class='barra-progresso'>
                      <div class='quantidade-progresso'></div>
                    </div>
                    <div class='porcentagem'>{campanha.PorcentagemArrecadado}%</div>
                  </div>
                </div>
              </a>
            </div>";
            }
        }

        private void ExibirCampanhasInativas(int codigoUsuario)
        {
            List<Campanha> campanhasInativas = new Campanhas().ListarDadosMinimosCampanhasFinalizadasDaOng(codigoUsuario);
            if (campanhasInativas.Count <= 0)
                litCampanhasInativas.Text = "<p>Não há campanhas inativas</p>";
            foreach (Campanha campanha in campanhasInativas)
            {
                litCampanhasInativas.Text += $@"
                <div class='campanha swiper-slide'>
                    <a href='camapanha.aspx?campanha={campanha.Codigo}'>
                     <div style='background: url(../{campanha.Banner}); background-position: center;background-repeat: no-repeat;background-size: cover;' class='imagem-campanha'></div>
                <div class='sobre-campanha'>
                  <div class='nome-campanha'>
                    {campanha.Nome}
                  </div>
                  <div class='progresso'>
                    <div class='barra-progresso'>
                      <div class='quantidade-progresso'></div>
                    </div>
                    <div class='porcentagem'>{campanha.PorcentagemArrecadado}%</div>
                  </div>
                </div>
                </a>
                </div>";
            }
        }
    }
}