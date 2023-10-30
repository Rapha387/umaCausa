using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.JsonResponses
{
    public partial class DoarMonetarioCampanha1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";
            string resposta;

            if (Session["usuario"] == null)
            {
                resposta = "{'situacao': 'false'}";
                resposta = resposta.Replace('\'', '\"');
                Response.Write(resposta);
                return;
            }

            string nomeComprovante;

            Usuario usuario = (Usuario)Session["usuario"];

            if (Request.Files.Count > 0)
            {
                try
                {
                    HttpPostedFile comprovante = Request.Files[0];

                    int doador = usuario.Codigo;
                    int campanha = int.Parse(Request.Form["campanha"].ToString());
                    double valor = double.Parse(Request.Form["valor"].ToString());

                    DoacaoCampanha doacaoCampanha = new DoacaoCampanha();
                    doacaoCampanha.CadastrarDoacaoCampanhaMonetaria(doador, campanha, valor);

                    //int nomeNovo = doacaoCampanha.GerarComprovante();

                    //comprovante.SaveAs(Request.PhysicalApplicationPath + @"uploads\temp\comprovantes\" + nomeNovo + ".jpg");
                }
                catch
                {
                    resposta = "{'situacao': 'false'}";
                    resposta = resposta.Replace('\'', '\"');
                    Response.Write(resposta);
                    return;
                }
            }
            else
            {
                resposta = "{'situacao': 'false'}";
                resposta = resposta.Replace('\'', '\"');
                Response.Write(resposta);
                return;
            }

            resposta = "{'situacao': 'true'}";
            resposta = resposta.Replace('\'', '\"');
            Response.Write(resposta);

        }
    }
}