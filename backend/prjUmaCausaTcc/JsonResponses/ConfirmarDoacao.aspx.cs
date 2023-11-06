using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.JsonResponses
{
    public partial class ConfirmarDoacaoa : System.Web.UI.Page
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
                string doacao = Request.Form["doacao"].ToString();
                string tipoDoacao = doacao.Substring(0, 2);

                int idDoacao = int.Parse(doacao.Substring(2));

                if (tipoDoacao == "dm")
                {
                    DoacaoMonetaria doacaoMonetaria = new DoacaoMonetaria();
                    doacaoMonetaria.ConfirmarDoacaoMonetaria(idDoacao, int.Parse(Request.Form["confirmacao"]));
                }

                if (tipoDoacao == "di")
                {
                    DoacaoItem doacaoItem = new DoacaoItem();
                    doacaoItem.ConfirmarDoacaoItem(idDoacao, int.Parse(Request.Form["confirmacao"]));
                }

                string tipoDoacao2 = doacao.Substring(0, 3);

                if (tipoDoacao == "dc")
                {
                    DoacaoCampanha doacaoCampanha = new DoacaoCampanha();
                    doacaoCampanha.ConfirmarDoacaoCampanha(idDoacao, int.Parse(Request.Form["confirmacao"]));
                }
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