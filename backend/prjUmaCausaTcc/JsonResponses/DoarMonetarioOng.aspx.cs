using prjUmaCausaTcc.pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


namespace prjUmaCausaTcc.JsonResponses
{
    public partial class DoarMonetarioOng : System.Web.UI.Page
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
                    nomeComprovante = comprovante.FileName;

                    int doador = usuario.Codigo;
                    int ong = int.Parse(Request.Form["ong"].ToString());
                    double valor = double.Parse(Request.Form["valor"].ToString());
                    string referencia = "uploads/temp/comprovantes/" + nomeComprovante;

                    DoacaoMonetaria doacaoMonetaria = new DoacaoMonetaria();
                    doacaoMonetaria.CadastrarDoacaoMonetaria(doador, ong, valor);

                    int nomeNovo = doacaoMonetaria.GerarComprovante();

                    comprovante.SaveAs(Request.PhysicalApplicationPath + @"uploads\temp\comprovantes\" + nomeNovo + ".jpg");
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