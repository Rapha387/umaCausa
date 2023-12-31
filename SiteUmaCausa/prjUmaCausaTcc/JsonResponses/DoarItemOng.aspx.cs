﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.JsonResponses
{
    public partial class DoarItemOng : System.Web.UI.Page
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
                int ong = int.Parse(Request["o"].ToString());
                string nomeItem = Request["n"].ToString();
                string qtItem = Request["q"].ToString();

                TipoItem tipoItem = new TipoItem();
                tipoItem.Codigo = int.Parse(Request["ti"].ToString());

                TipoEntrega tipoEntrega = new TipoEntrega();
                tipoEntrega.Codigo = int.Parse(Request["te"].ToString());

                string data = Request["dt"].ToString();
                string horario = Request["hr"].ToString();

                DateTime.Parse(data).ToString("yyyy-MM-dd");
                DateTime.Parse(horario).ToString("HH:mm:ss");

                DoacaoItem doacaoItem = new DoacaoItem();

                doacaoItem.CadastrarDoacaoItem(doador, ong, nomeItem, qtItem, tipoItem, tipoEntrega, data, horario);
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