using prjUmaCausaTcc.Logicas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages
{
    public partial class campanhas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GerarHeaderFooter();

            Campanhas campanhas= new Campanhas();
            foreach (Campanha campanha in campanhas.ListarCampanhasASC(0))
            {
                litCampanhas.Text += $@"
                <a href='./campanha.aspx?c={campanha.Codigo}'>
                  <div class='campanha'>
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
                    </div>
                  </div>
                </a>";
            }

        }

        private void GerarHeaderFooter()
        {
            GerarEmentosHtml gerarHtml = new GerarEmentosHtml();
            litFooter.Text = gerarHtml.GerarFooter();

            if (Session["email"] != null)
            {
                try
                {
                    Usuario usuario = new Usuario();

                    usuario.BuscarUsuarioPeloEmail(Session["email"].ToString());

                    litHeader.Text = gerarHtml.MudarNavegacao(true, usuario.TipoDoUsuario.Codigo);
                }
                catch (Exception ex)
                {
                    return;
                }
            }
            else
            {
                litHeader.Text = gerarHtml.MudarNavegacao(false, 0);
            }
        }
    }
}