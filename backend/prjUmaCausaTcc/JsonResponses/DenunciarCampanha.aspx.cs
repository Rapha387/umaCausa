using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.JsonResponses
{
    public partial class DenunciarCampanha : System.Web.UI.Page
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

            Usuario usuario = (Usuario)Session["usuario"];

            try
            {
                int codigoDenunciante = usuario.Codigo;
                int codigoDenunciado = int.Parse(Request["denunciado"].ToString());
                int codigoMotivoDenuncia = int.Parse(Request["motivoDenuncia"].ToString());
                string dsDenuncia = Request["dsDenuncia"].ToString();

                DenunciaCampanha denunciaUsuario = new DenunciaCampanha();
                denunciaUsuario.RealizarDenuncia(codigoDenunciante, codigoDenunciado, codigoMotivoDenuncia, dsDenuncia);
            }
            catch
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