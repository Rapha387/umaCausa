using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.JsonResponses
{
    public partial class EncerrarCampanha : System.Web.UI.Page
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

            try
            {
                int codigoCampanha = int.Parse(Request.Form["campanha"].ToString());

                Campanha campanha = new Campanha();

                campanha.EncerrarCampanha(codigoCampanha);

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