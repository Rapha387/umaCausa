using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUmaCausaTcc.pages.configuracoes
{
    public partial class alterarSenha : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario usuario = (Usuario)Session["usuario"];

            if (usuario == null)
                Response.Redirect("../index.aspx");
            GerarEmentosHtml gerarEmentosHtml = new GerarEmentosHtml();
            string header = gerarEmentosHtml.GerarHeaderConfiguracoes(usuario);
            string footer = gerarEmentosHtml.GerarFooterConfiguracoes();
            string menu = gerarEmentosHtml.GerarMenu(usuario);
            LitHeader.Text = header;
            LitFooter.Text = footer;
            LitMenu.Text = menu;

        }

        protected void BtnSalvar_Click(object sender, EventArgs e)
        {
            string senhaAntiga = TxtSenhaAtual.Text;
            string senhaNova = TxtNovaSenha.Text;
            string repeticao = TxtRepeticao.Text;
            Usuario usuario = (Usuario)Session["usuario"];
            string email = usuario.Email;
            if (senhaNova == repeticao)
            {
               if(usuario.VerificarSenha(senhaAntiga, email) == true)
                {
                    usuario.AlterarSenhaUsuario(usuario.Codigo, senhaNova);
                    LitErro.Text = "Senha alterada com sucesso!";
                }
                else
                {
                    LitErro.Text = "Senha incorreta!";
                }
            }
            else
            {
                LitErro.Text = "Nâo foi possivel alterar sua senha, coloque senhas iguais!";
            }
        }
    }
}