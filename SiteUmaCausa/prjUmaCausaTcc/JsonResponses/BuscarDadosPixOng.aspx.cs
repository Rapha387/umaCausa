﻿using prjUmaCausaTcc.pages;
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
                try
                {
                    Response.ContentType = "application/json";

                    string dadosJSON = "";
                    JavaScriptSerializer jsSerializer = new JavaScriptSerializer();
                    Usuario ong = new Usuario();


                    if (Request["c"].ToString() == "null")
                    {
                        

                        ong.BuscarDadosQrCodePixOng(int.Parse(Request["ong"].ToString()));
                        
                        dadosJSON = jsSerializer.Serialize(ong);
                        Response.Write(dadosJSON);

                        return;
                    }

                    Campanha campanha = new Campanha();

                    ong = campanha.BuscarDadosPixOngCampanha(int.Parse(Request["c"].ToString())) ;

                    dadosJSON = jsSerializer.Serialize(ong);
                    Response.Write(dadosJSON);

                }
                catch(Exception ex)
                {
                    Response.Redirect("erro.aspx?" + ex.Message);
                }
            }
            else
            {
                Response.Write("Erro na Consulta");
            }
        }
    }
}