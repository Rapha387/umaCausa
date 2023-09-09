using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.JsonResponses
{
    public partial class BuscarDadosPixOng : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(Request["ong"]))
            {
                Response.ContentType = "application/json";

                Usuario ong = new Usuario();

                ong.BuscarDadosQrCodePixOng(int.Parse(Request["ong"].ToString()));

                JavaScriptSerializer jsSerializer = new JavaScriptSerializer();
                string dadosJSON = jsSerializer.Serialize(ong);
                Response.Write(dadosJSON);
            }
            else
            {
                Response.Write("Erro na Consulta");
            }
        }
    }
}