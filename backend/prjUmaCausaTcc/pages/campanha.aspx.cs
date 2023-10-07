﻿using System;
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

            #region gerarHTML

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
            #endregion

            if (!String.IsNullOrEmpty(Request["c"]))
            {
                int cd_campanha = 0;
                try
                {
                    cd_campanha = int.Parse(Request["c"]);

                    Campanha campanha = new Campanha();

                    campanha.BuscarCampanha(cd_campanha);
                    BuscarCampanha(campanha);
                    BuscarONG(campanha);

                    Odesses odesses = new Odesses();

                    foreach (ODS ods in odesses.BuscarOdsCampanha(cd_campanha))
                    {
                        litOds.Text += $"<img src='../{ods.Foto}'' alt=''>";
                    }
                }
                catch (Exception)
                {
                    Response.Redirect($"erro.aspx?e=não foi possível carregar essa página");
                }
            }
            else
            {
                Response.Redirect("erro.aspx?e=Página não encontrada");
            }
        }

        private void BuscarCampanha(Campanha campanha)
        {
            try
            {
                litMeta.Text = "R$" + campanha.QuantidadeMeta.ToString().Replace(".", ",");
                litArrecadado.Text = "Arrecadados da meta de R$" + campanha.QuantidadeArrecadada.ToString().Replace(".", ",");
                if (campanha.TipoItemArrecadado.Codigo != 0)
                {
                    litArrecadado.Text = "Arrecadados da meta: " + campanha.QuantidadeArrecadada.ToString().Replace(".", ",") +" "+ campanha.TipoItemArrecadado.Nome;
                    litMeta.Text = campanha.QuantidadeMeta.ToString().Replace(".", ",") +" "+ campanha.TipoItemArrecadado.Nome;
                }
                litDescricao.Text = campanha.Descricao;
                litWebNome.Text = campanha.Nome + " - umaCausa";
                litNome.Text = campanha.Nome;
                litProgresso.Text = $"<div class='progresso' style='width: {campanha.PorcentagemArrecadado}%;'></div>";
                litImagem.Text = $"<div style='background-image: url(../{campanha.Banner});'class='imagem-campanha'></div>";

            }
            catch
            {
                Response.Redirect($"erro.aspx?e=pagina não encontrada");
            }
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