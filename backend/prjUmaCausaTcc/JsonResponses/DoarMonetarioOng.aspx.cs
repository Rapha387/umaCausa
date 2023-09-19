using prjUmaCausaTcc.pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.JsonResponses
{
    public partial class DoarMonetarioOng : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";

            string resposta;

            //if (String.IsNullOrEmpty(Request["n"]))
            //{
            //    resposta = "{'situacao': 'false'}";
            //    resposta = resposta.Replace('\'', '\"');
            //    Response.Write(resposta);
            //    return;
            //}

            Usuario usuario = new Usuario();
            usuario.BuscarUsuarioPeloEmail(Session["email"].ToString());

            int doador = usuario.Codigo;
            int ong = int.Parse(Request["o"].ToString());
            double valor = double.Parse(Request["v"].ToString());
            //string comprovante = Request["c"].ToString();

            DoacaoMonetaria doacaoMonetaria = new DoacaoMonetaria();
            try
            {
                doacaoMonetaria.CadastrarDoacaoMonetaria(doador, ong, valor, "");
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