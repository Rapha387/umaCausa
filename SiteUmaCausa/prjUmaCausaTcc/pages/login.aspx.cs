﻿using prjUmaCausaTcc.Logicas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] != null)
                Response.Redirect("index.aspx");

            GerarEmentosHtml gerarHtml = new GerarEmentosHtml();

            litHeader.Text = gerarHtml.MudarNavegacao(null);
        }

        protected void btnConectar_Click(object sender, EventArgs e)
        {

            if (String.IsNullOrEmpty(txtEmail.Text))
            {
                lblErroMSG.Text = "Email Vazia!!";
                return;
            }
            if (String.IsNullOrEmpty(txtSenha.Text))
            {
                lblErroMSG.Text = "Senha Vazia!!";
                return;
            }

            string email = txtEmail.Text;
            string senha = txtSenha.Text;

            try
            {
                Usuario usuario = new Usuario();
                lblErroMSG.Text = "Senha Inválida!";
                if (usuario.VerificarSenha(senha, email))
                {
                    lblErroMSG.Text = "Logado com sucesso!";
                    usuario.BuscarUsuarioPeloEmail(email);
                    Session["usuario"] = usuario;
                    Response.Redirect("index.aspx");
                }
            }
            catch (Exception)
            {
                lblErroMSG.Text = "Houve um erro na busca";
            }
        }
    }
}