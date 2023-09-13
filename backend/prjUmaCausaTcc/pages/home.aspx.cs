using prjUmaCausaTcc.Logicas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ExibirCampanhasPertoDeAcabar();
        }

        public void ExibirOngProximas()
        {
            List<Usuario> ongsProximas = new Usuario().ListarOngProximas();
            if (ongsProximas.Count <= 0)
            {
                litOngProximas.Text = "<p>Não temos ongs ainda :/</p>";
                return;
            }

            foreach (Campanha ong in ongsProximas)
            {
                litOngProximas.Text += $@"
                <div class='ong swiper-slide'>
                  <a href=''>
                    <div class='imagem-ong'></div>
                    <div class='nome-ong'>
                        Instituto Viva Bichos
                    </div>
                  </a>
                </div>";
            }

            
        }

        public void ExibirCampanhasPertoDeAcabar()
        {
            List<Campanha> campanhasAtivas = new Campanhas().ListarCampanhasPertoDeAcabar();
            if (campanhasAtivas.Count <= 0)
            {
                litCampanhasPertoAcabar.Text = "<p>Não temos campanhas ainda :/</p>";
                return;
            }
            foreach (Campanha campanha in campanhasAtivas)
            {
                litCampanhasPertoAcabar.Text += $@"
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
    }
}