using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages
{
    public partial class esqueciMinhaSenha : System.Web.UI.Page
    {
        bool sucesso = false;
        protected void Page_Load(object sender, EventArgs e)
        { 
            pnlEnviado.Visible = false;
            pnlAlterarSenha.Visible = false;
            if (Request["send"] == "true")
            {
                pnlEnviarEmail.Visible = false;
                pnlAlterarSenha.Visible = false;
                pnlEnviado.Visible = true;
            }
            if (Session["email"] != null)
            {
                litTexto.Text = Session["email"].ToString();
            }
            if (Session["podeAlterar"] != null && (bool)Session["podeAlterar"] == true)
            {
                pnlEnviarEmail.Visible = false;
                pnlEnviado.Visible = false;
                pnlAlterarSenha.Visible=true;
            }
        }
        private bool EnviarEmail(string emailDestinatario)
        {
            int codigo = 0;
            RecuperarSenha recuperarSenha = new RecuperarSenha();
            
            try
            {
                recuperarSenha.GerarCodigoRecuperacao(emailDestinatario);
                codigo = recuperarSenha.RecuperarCodigoRecuperacao(emailDestinatario);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            
            #region Declaração de Variáveis
            string remetente = "";
            string senha = "";
            string destinatario = "";
            string assunto = "";
            string texto = "";
            #endregion

            #region Atribuição dos Valores
            remetente = "alisson.r.santos92@hotmail.com";
            senha = "Google038576";
            destinatario = emailDestinatario;
            assunto = "Recuperação";
            #endregion

            #region Configurações do Remetente
            SmtpClient client = new SmtpClient();
            client.Credentials = new NetworkCredential(remetente, senha);
            client.Host = "smtp-mail.outlook.com";
            client.Port = 587;
            client.EnableSsl = true;
            #endregion

            #region Configuração do Email
            MailMessage mail = new MailMessage();
            mail.To.Add(destinatario);
            //mail.CC.Add(destinatario);
            //mail.Bcc.Add(destinatario);
            mail.From = new MailAddress(remetente, "umaCausa", System.Text.Encoding.UTF8);
            mail.Subject = assunto;
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = $@"<!DOCTYPE html>
<html>

<head>
    <title>Recuperação de Conta</title>
</head>

<body style=""font-family: 'Lato', sans-serif; background: rgb(255, 255, 255); margin: 0; padding: 0;"">

    <table align=""center"" cellpadding=""0"" cellspacing=""0"" border=""0"" width=""600""
        style=""margin: 0 auto; max-width: 600px;"">
        <tr>
            <td align=""center"" valign=""top"" bgcolor=""#0063BF""
                style=""background: rgba(0, 99, 191, 1); padding: 20px; color: #fff;"">
                <img src=""https://imgur.com/nljWULq.png"" alt=""Logo"" width=""300""
                    style=""display: block; max-width: 100%; height: auto; margin: 0 auto;"">
            </td>
        </tr>
        <tr>
            <td align=""left"" valign=""top""
                style=""background: #fff; padding: 20px; color: #000; font-size: 14px; line-height: 1.6;"">
                <h1 style=""font-weight: 700; font-size: 36px; color: #000;""><strong>Olá, {destinatario}</strong></h1>
                <p style=""font-weight: 700; font-size: 22px; color: #000;"">Utilize a senha abaixo para acessar sua conta e em seguida altere para uma senha de sua preferência.</p>
                    <div style=""background: rgba(0, 99, 191, 1); border-radius: 14px; font-weight: 400; font-size: 22px; text-align: left;"">
                        <p style=""color: #fff; margin: 0; padding: 10px;"">CODIGO: {codigo}</p>
                    </div>
                <p style=""font-weight: 400; font-size: 18px; color: #000;"">Se não está tentando recuperar as credenciais da sua conta umaCausa, ignore este e-mail. É possível que outro utilizador tenha inserido incorretamente as credenciais da conta dele.</p>
                <p style=""border-left: 3px solid #0063BF; padding-left: 8px; font-weight: 400; font-size: 18px; color: #000;"">Atentamente, a equipe do umaCausa</p>
            </td>
        </tr>
    </table>

</body>

</html>";
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
            #endregion

            #region Envio do Email
            try
            {
                client.Send(mail);
                return true;
            }
            catch
            {
                return false;
            }
            #endregion
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            RecuperarSenha recuperarSenha = new RecuperarSenha();
                lblMensagem.Text = "";

            if (!String.IsNullOrEmpty(txtDestinatario.Text))
            {
                if (recuperarSenha.VerificarExistenciaEmail(txtDestinatario.Text))
                {
                    Session["email"] = txtDestinatario.Text;
                    EnviarEmail(txtDestinatario.Text);
                }
                else
                {
                    lblMensagem.Text = "Email não cadastrado";
                    return;
                }
            }
            else if (Session["email"] != null && Session["email"].ToString() != "")
            {
                if (recuperarSenha.VerificarExistenciaEmail(Session["email"].ToString()))
                {
                    EnviarEmail(Session["email"].ToString());
                }
                else
                {
                    lblMensagem.Text = "Email não cadastrado";
                    return;
                }
            }

            else if (String.IsNullOrEmpty(txtDestinatario.Text))
            {
                lblMensagem.Text = "Insira o email!";
                return;
            }

                Response.Redirect("esqueciMinhaSenha.aspx?send=true");
        }

        protected void btnVerificar_Click(object sender, EventArgs e)
        {
            lblMensagem.Text = "";
            if (String.IsNullOrEmpty(txtCodigo.Text))
            {
                lblMensagem.Text = "Insira o código!";
                return;
            }

            Session["podeAlterar"] = false;
            RecuperarSenha recuperarSenha = new RecuperarSenha();
            if (recuperarSenha.VerificarCodigoRecuperacao(int.Parse(txtCodigo.Text), Session["email"].ToString()))  
            {
                Session["podeAlterar"] = true;
                Response.Redirect("esqueciMinhaSenha.aspx");
            }
            else
            {
                lblMensagem.Text = "Código Errado, tente reenviar-lo";
                return;
            }
        }

        protected void BtnSalvar_Click(object sender, EventArgs e)
        {
            lblMensagem.Text = "";
            Usuario usuario = new Usuario();
            if (String.IsNullOrEmpty(TxtNovaSenha.Text) || String.IsNullOrEmpty(TxtRepeticao.Text))
            {
                lblMensagem.Text = "Preencha os campos!";
                return;
            }
            if (TxtNovaSenha.Text == TxtRepeticao.Text)
            {
                try
                {
                    usuario.AlterarSenhaUsuario(Session["email"].ToString().ToLower(), TxtNovaSenha.Text);
                    sucesso = true;
                    Session["email"] = null;
                }
                catch (Exception ex)
                {
                    Response.Redirect("erro.apsx?e" + ex.Message);
                }

            }
            else
                lblMensagem.Text = "Nâo foi possivel alterar sua senha, coloque senhas iguais!";
            
        }
    }
}