using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.JsonResponses
{
    public partial class DoarMonetarioCampanha : System.Web.UI.Page
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
                int doador = usuario.Codigo;
                int campanha = int.Parse(Request["c"].ToString());
                string nomeItem = Request["n"].ToString();
                string qtItem = Request["q"].ToString();

                TipoEntrega tipoEntrega = new TipoEntrega();
                tipoEntrega.Codigo = int.Parse(Request["te"].ToString());

                string data = Request["dt"].ToString();
                string horario = Request["hr"].ToString();

                DateTime.Parse(data).ToString("yyyy-MM-dd");
                DateTime.Parse(horario).ToString("HH:mm:ss");

                DoacaoCampanha doacaoCampanha = new DoacaoCampanha();

                doacaoCampanha.CadastrarDoacaoItem(doador, campanha, nomeItem, qtItem, tipoEntrega, data, horario);
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