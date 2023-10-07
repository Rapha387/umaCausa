using prjUmaCausaTcc.Logicas;
using System;
using System.Collections.Generic;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages
{
    public partial class home : System.Web.UI.Page
    {
        string latideUsuario = "";
        string longitudeUsuario = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            ExibirCampanhasPertoDeAcabar();

            ExibirOngsAleatorias();

            ExibirCampanhasAleatorias();

            GerarEmentosHtml gerarHtml = new GerarEmentosHtml();
            litFooter.Text = gerarHtml.GerarFooter();

            Usuario usuario = (Usuario)Session["usuario"];

            if (Session["usuario"] != null)
            {
                try
                {
                    litHeader.Text = gerarHtml.MudarNavegacao(usuario);

                    usuario.BuscarLocalizacaoUsuario(usuario.Codigo);

                    latideUsuario = usuario.Latitude;
                    longitudeUsuario = usuario.Longitude;

                    ExibirOngProximas();
                }
                catch(Exception ex)
                {
                    Response.Redirect("erro.aspx?e="+ex.Message);
                }
            }
            else
            {
                litHeader.Text = gerarHtml.MudarNavegacao(usuario);
            }
        }

        public void ExibirOngProximas()
        {
            List<Usuario> ongsProximas = new Ongs().ListarOngsProximas(latideUsuario, longitudeUsuario);
            if (ongsProximas.Count <= 0)
            {
                pnlOngsProximas.Visible = false;
                return;
            }
            pnlOngsProximas.Visible = true;

            foreach (Usuario ong in ongsProximas)
            {
                litOngsProximas.Text += $@"
                <div class='ong swiper-slide'>
                  <a href='ong.aspx?ong={ong.Codigo}'>
                    <div class='imagem-ong' style='background-image:url(../{ong.FotoPerfil})'></div>
                    <div class='nome-ong'>
                        {ong.Nome}
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
                pnlCampanhasAcabando.Visible = false;
                return;
            }

            pnlCampanhasAcabando.Visible = true;

            foreach (Campanha campanha in campanhasAtivas)
            {
                litCampanhasPertoAcabar.Text += $@"
                <div class='campanha swiper-slide'>
                    <a href='campanha.aspx?c={campanha.Codigo}'>
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
                    </a>
                </div>";
            }
        }

        public void ExibirOngsAleatorias()
        {
            List<Usuario> ongs = new Ongs().ListarOngsAleatorias();
            //if (ongsProximas.Count <= 0)
            //{
            //    return;
            //}

            foreach (Usuario ong in ongs)
            {
                litOngsAleatorias.Text += $@"
                <div class='ong swiper-slide'>
                  <a href='ong.aspx?ong={ong.Codigo}'>
                    <div class='imagem-ong' style='background-image:url(../{ong.FotoPerfil})'></div>
                    <div class='nome-ong'>
                        {ong.Nome}
                    </div>
                  </a>
                </div>";
            }
        }

        public void ExibirCampanhasAleatorias()
        {
            List<Campanha> campanhas = new Campanhas().ListarCampanhasAleatorias();
            //if (campanhasAtivas.Count <= 0)
            //{
            //    pnlCampanhasAcabando.Visible = false;
            //    return;
            //}

            //pnlCampanhasAcabando.Visible = true;

            foreach (Campanha campanha in campanhas)
            {
                litCampanhasAleatorias.Text += $@"
                <div class='campanha swiper-slide'>
                    <a href='campanha.aspx?c={campanha.Codigo}'>
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
                    </a>
                </div>";
            }
        }
    }
}