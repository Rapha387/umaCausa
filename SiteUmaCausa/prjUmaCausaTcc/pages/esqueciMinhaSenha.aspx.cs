using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using static System.Net.WebRequestMethods;
using System.Data.SqlClient;
using Org.BouncyCastle.Crypto.Tls;
using System.Text.RegularExpressions;

namespace prjUmaCausaTcc.pages
{
    public partial class esqueciMinhaSenha : System.Web.UI.Page
    {
        bool sucesso = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlEnviarEmail.Visible = true;

            #region Mudar Navegação
            GerarEmentosHtml gerarHtml = new GerarEmentosHtml();
            litFooter.Text = gerarHtml.GerarFooter();

            Usuario usuario = (Usuario)Session["usuario"];

            if (Session["usuario"] != null)
            {
                try
                {
                    litHeader.Text = gerarHtml.MudarNavegacao(usuario);
                }
                catch (Exception ex)
                {
                    Response.Redirect("erro.aspx?e=" + ex.Message);
                }
            }
            else
            {
                litHeader.Text = gerarHtml.MudarNavegacao(usuario);
            }
            #endregion

            if (Session["send"] != null && (bool)Session["send"])
            {
                pnlEnviarEmail.Visible = false;
                pnlEnviado.Visible = true;
                Session["send"] = null;
            }

            if (!IsPostBack)
            {
                if (!String.IsNullOrEmpty(Request["r"]))
                {
                    string rec = Request["r"].ToString();
                    RecuperarSenha recovery = new RecuperarSenha();
                    string email = rec.Substring(8, rec.Length - 8);
                    string codigoBanco = recovery.RecuperarCodigoRecuperacao(email);

                    string codigoRequest = rec.Substring(0, 8);
                    if (codigoBanco == codigoRequest)
                    {
                        recovery.ExcluirCodigoRecuperacao(email);
                        pnlEnviarEmail.Visible = false;
                        pnlEnviado.Visible = false;
                        Session["email"] = email;
                        pnlAlterarSenha.Visible = true;
                    }
                }
            }
        }
        private bool EnviarEmail(string emailDestinatario)
        {
            string codigo = "";
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
            assunto = "Recuperação de senha";
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
                <div style=""background: rgba(0, 99, 191, 1); border-radius: 14px; font-weight: 400; font-size: 22px; text-align: center;"">
                    <a href='http://localhost:50944/pages/esqueciMinhaSenha.aspx?r={codigo}{destinatario}' style=""color: #fff; margin: 0; padding: 10px; text-decoration: none; display: inline-block;"">
                        Resetar sua senha
                    </a>
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

            else if (String.IsNullOrEmpty(txtDestinatario.Text))
            {
                lblMensagem.Text = "Insira o email";
                return;
            }
            Session["send"] = true;

            Response.Redirect("esqueciMinhaSenha.aspx");
        }

        protected void BtnSalvar_Click(object sender, EventArgs e)
        {
            pnlEnviarEmail.Visible = false;
            lblMensagem.Text = "";
            Usuario usuario = new Usuario();
            if (String.IsNullOrEmpty(TxtNovaSenha.Text) || String.IsNullOrEmpty(TxtRepeticao.Text))
            {
                lblMensagem.Text = "Preencha os campos";
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

            Response.Redirect("./login.aspx");

        }
        protected void Retornar_Click(object sender, EventArgs e)
        {
            Response.Redirect("./login.aspx");
        }
    }
}