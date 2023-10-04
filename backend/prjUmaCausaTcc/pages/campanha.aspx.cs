using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages
{
	public partial class campanha : System.Web.UI.Page
	{
        protected void Page_Load(object sender, EventArgs e)
        {
            litOds.Text = "";

            GerarEmentosHtml gerarHtml = new GerarEmentosHtml();
            litFooter.Text = gerarHtml.GerarFooter();

            if (Session["usuario"] != null)
            {
                try
                {
                    Usuario usuario = (Usuario)Session["usuario"];
                    litHeader.Text = gerarHtml.MudarNavegacao(usuario);
                }
                catch (Exception ex)
                {
                    Response.Redirect("erro.aspx?e=" + ex.Message); ;
                }
            }
            else
            {
                litHeader.Text = gerarHtml.MudarNavegacao(null);
            }
            try
            {
                int cd_campanha = int.Parse(Request["c"]);
                Campanha campanha = new Campanha();
                BuscarCampanha(cd_campanha, campanha);
                BuscarONG(campanha);

                Odesses odesses = new Odesses();

                foreach (ODS ods in odesses.BuscarOdsCampanha(cd_campanha))
                {
                    litOds.Text += $"<img src='../{ods.Foto}'' alt=''>";
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("erro.aspx");
            }
        }

        private void BuscarCampanha(int cd_campanha, Campanha campanha)
        {
            campanha.BuscarCampanha(cd_campanha);
            litArrecadado.Text = campanha.QuantidadeArrecadada.ToString().Replace(".", ",");
            litMeta.Text = campanha.QuantidadeMeta.ToString().Replace(".", ",");
            litDescricao.Text = campanha.Descricao;
            litWebNome.Text = campanha.Nome + " - umaCausa";
            litNome.Text = campanha.Nome;
            litProgresso.Text = $"<div class='progresso' style='width: {campanha.PorcentagemArrecadado}%;'></div>";
            litImagem.Text = $"<div style='background-image: url(../{campanha.Banner});'class='imagem-campanha'></div>";
        }

        private void BuscarONG(Campanha campanha)
        {
            Usuario ong = new Usuario();
            ong.BuscarDadosMinimosOng(campanha.ONG.Codigo);
            litONG.Text = $@"<a href='ong.aspx?ong={ong.Codigo}' style='color: #000;'><div class='infos-realizador'>
            <img src = '../{ong.FotoPerfil}'>
              <div>
              <h3>{ong.Nome}</h3>
              <p>{ong.Descricao}</p>
            </div>
          </div></a>";
        }
    }
}