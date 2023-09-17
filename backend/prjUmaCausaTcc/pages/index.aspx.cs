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
        string latideUsuario = "";
        string longitudeUsuario = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            ExibirCampanhasPertoDeAcabar();

            ExibirOngsAleatorias();

            GerarEmentosHtml gerarHtml = new GerarEmentosHtml();
            litFooter.Text = gerarHtml.GerarFooter();

            if (Session["email"] != null)
            {
                try
                {
                    Usuario usuario = new Usuario();

                    usuario.BuscarUsuarioPeloEmail(Session["email"].ToString());

                    litHeader.Text = gerarHtml.MudarNavegacao(true, usuario.TipoDoUsuario.Codigo);

                    usuario.BuscarLocalizacaoUsuario(usuario.Codigo);

                    latideUsuario = usuario.Latitude;
                    longitudeUsuario = usuario.Longitude;

                    ExibirOngProximas();
                }
                catch(Exception ex)
                {
                    return;
                }
            }
            else
            {
                litHeader.Text = gerarHtml.MudarNavegacao(false, 0);
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
                litCampanhasPertoAcabar.Text = "<p>Não temos campanhas ainda :/</p>";
                return;
            }
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
                                <div class='quantidade-progresso'></div>
                            </div>
                            <div class='porcentagem'>{campanha.PorcentagemArrecadado}%</div>
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
    }
}