using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WF_Administracao.Formularios;

namespace WF_Administracao
{
    public partial class frmLogin : Form
    {
        public frmLogin()
        {
            InitializeComponent();
        }

        private void frmLogin_Load(object sender, EventArgs e)
        {
            var Azul = Color.FromArgb(255, 0, 99, 191);
            var Branco = Color.FromArgb(255,255,255,255);
            pcbLogo.BackColor = Azul;
            label1.ForeColor = Azul;
            label3.ForeColor = Branco;
            label3.BackColor = Azul;
            label4.ForeColor = Branco;
            label4.BackColor = Azul;
            btnLogar.BackColor = Azul;
            btnLogar.ForeColor = Branco;
            
        }

        private void btnLogar_Click(object sender, EventArgs e)
        {
            lblErroMSG.Text = "";
            if (String.IsNullOrEmpty(txtEmail.Text))
            {
                lblErroMSG.Text = "Email Vazio";
                return;
            }
            if (String.IsNullOrEmpty(txtSenha.Text))
            {
                lblErroMSG.Text = "Senha vazia";
                return;
            }

            string email = txtEmail.Text;
            string senha = txtSenha.Text;

            try
            {
                Usuario usuario = new Usuario();

                if (usuario.VerificarSenha(senha, email))
                {

                    usuario.BuscarUsuarioPeloEmail(email);
                    if (usuario.TipoDoUsuario.Codigo < 2)
                    {
                        lblErroMSG.Text = "Usuário não permitido";
                        return;
                    }
                    ChamarFormPrincipal(usuario);
                }
                lblErroMSG.Text = "Senha incorreta";
            }
            catch (Exception)
            {
                lblErroMSG.Text = "Usuário não encontrado";
            }
        }

        private void ChamarFormPrincipal(Usuario usuario)
        {
            this.Hide();
            frmPrincipal AbrirFrmPrincipal = new frmPrincipal();
            AbrirFrmPrincipal.usuario = usuario;
            AbrirFrmPrincipal.ShowDialog();
            this.Close();
        }

        private void label2_Click(object sender, EventArgs e)
        {
            Process.Start("http://localhost:50944/pages/esqueciMinhaSenha.aspx");
        }

        private void label2_MouseHover(object sender, EventArgs e)
        {
            label2.Cursor = Cursors.Hand;
        }
    }
}
