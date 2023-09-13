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
            litCNPJ.Text = usuario.Identificacao;
            litDescricao.Text = usuario.Descricao;
            litEmailContato.Text = usuario.EmailContato;
            litEndereco.Text = $"{usuario.Rua}, {usuario.Numero} - {usuario.Bairro}, {usuario.Cidade} - {usuario.Estado}, {usuario.Cep}";
            litNome.Text = usuario.Nome;
            litSite.Text = usuario.Website;
            litTelefone.Text = usuario.Telefone;
            litCampanha.Text = $"<a src='#/{usuario.CategoriaOng.Codigo}'><p>#{usuario.CategoriaOng.Nome}</p></a>";
        }

        private void ExibirCampanhasAtivas(int codigoUsuario)
        {
            List<Campanha> campanhasAtivas = new Campanhas().ListarDadosMinimosCampanhasDaOng(codigoUsuario);
            if (campanhasAtivas.Count <= 0)
            {
                litCampanhasAtivas.Text = "<p>Não temos campanhas ainda :/</p>";
                return;
            }

            foreach (Campanha campanha in campanhasAtivas)
            {
                litCampanhasAtivas.Text += $@"
                <div class='campanha swiper-slide'>
                    <a href='{campanha.Codigo}'>
                     <div style='background: url({campanha.Banner});'class='imagem-campanha'></div>
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
                    <a href='{campanha.Codigo}'>
                     <div style='background: url({campanha.Banner});' class='imagem-campanha'></div>
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