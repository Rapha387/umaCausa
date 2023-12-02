using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

namespace WF_Administracao.Formularios
{
    public partial class frmPrincipal : frmIndex
    {
        public Usuario usuario {  get; set; }
        public frmPrincipal()
        {
            InitializeComponent();
            
        }

        private void frmPrincipal_Load(object sender, EventArgs e)
        {
            Personalizacao();
            GerarDGV();
            tsslUsuarioNome.Text = this.usuario.Nome;
        }

        private void GerarDGV()
        {
            dgvDenuncias.Rows.Clear();
            List<Denuncias> denuncias = new Denuncias().BuscarDenunciasPendentes();
            foreach (Denuncias denuncia in denuncias)
            {
                if (denuncia.TipoDenuncia == "du")
                {
                    dgvDenuncias.Rows.Add(denuncia.Denunciado.Codigo, denuncia.Denunciante.Codigo, denuncia.Valor.Codigo, "Usuário", denuncia.Denunciado.Nome, denuncia.Denunciante.Nome, denuncia.Motivo.Nome, denuncia.Valor.Nome, denuncia.DataDenuncia.ToString("dd/MM/yyyy"), denuncia.Descricao, denuncia.DataDenuncia);
                }
                else
                    dgvDenuncias.Rows.Add(denuncia.Denunciado.Codigo, denuncia.Denunciante.Codigo, denuncia.Valor.Codigo, "Campanha", denuncia.Denunciado.Nome, denuncia.Denunciante.Nome, denuncia.Motivo.Nome, denuncia.Valor.Nome, denuncia.DataDenuncia.ToString("dd/MM/yyyy"), denuncia.Descricao, denuncia.DataDenuncia);
            }
        }

        private void Personalizacao()
        {
            var Azul = Color.FromArgb(255, 0, 99, 191);
            var Branco = Color.FromArgb(255, 255, 255, 255);
            pnlLateral.BackColor = Azul;
        }

        private void dgvDenuncias_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            txtDenunciado.Text = dgvDenuncias.Rows[dgvDenuncias.CurrentRow.Index].Cells["Denunciado"].Value.ToString();
            txtDenunciante.Text = dgvDenuncias.Rows[dgvDenuncias.CurrentRow.Index].Cells["Denunciante"].Value.ToString();
            txtMotivo.Text = dgvDenuncias.Rows[dgvDenuncias.CurrentRow.Index].Cells["Motivo"].Value.ToString();
            txtData.Text = dgvDenuncias.Rows[dgvDenuncias.CurrentRow.Index].Cells["Data"].Value.ToString();
            txtGravidade.Text = dgvDenuncias.Rows[dgvDenuncias.CurrentRow.Index].Cells["Gravidade"].Value.ToString();
            if (!String.IsNullOrEmpty((string)dgvDenuncias.Rows[dgvDenuncias.CurrentRow.Index].Cells["ds"].Value))
                txtDescricao.Text = dgvDenuncias.Rows[dgvDenuncias.CurrentRow.Index].Cells["ds"].Value.ToString();
        }

        private void btnSair_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmLogin Sair = new frmLogin();
            Sair.ShowDialog();
            this.Close();
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnAprovar_Click(object sender, EventArgs e)
        {
            var Denunciado = dgvDenuncias.CurrentRow.Cells["cd_Denunciado"].Value.ToString();
            var Denunciante = dgvDenuncias.CurrentRow.Cells["cd_Denunciante"].Value.ToString();
            var Data = dgvDenuncias.CurrentRow.Cells["dt_denuncia"].Value;
            var Tipo = dgvDenuncias.CurrentRow.Cells["Tipo"].Value.ToString();
            var Gravidade = dgvDenuncias.CurrentRow.Cells["id_MotivoDenuncia"].Value.ToString();

            if (Tipo == "Usuário")
            {
                DenunciaUsuario denunciaUsuario = new DenunciaUsuario();
                denunciaUsuario.AprovarDenuncia((DateTime)Data, int.Parse(Denunciante), int.Parse(Denunciado), int.Parse(Gravidade));
            }

            if (Tipo == "Campanha")
            {
                Campanha campanha = new Campanha();
                campanha.AprovarDenuncia((DateTime)Data, int.Parse(Denunciante), int.Parse(Denunciado), int.Parse(Gravidade));
            }
            GerarDGV();
        }

        private void btnLogar_Click(object sender, EventArgs e)
        {
            GerarDGV();
        }

        private void btnReprovar_Click(object sender, EventArgs e)
        {
            var Denunciado = dgvDenuncias.CurrentRow.Cells["cd_Denunciado"].Value.ToString();
            var Denunciante = dgvDenuncias.CurrentRow.Cells["cd_Denunciante"].Value.ToString();
            var Data = dgvDenuncias.CurrentRow.Cells["dt_denuncia"].Value;
            var Tipo = dgvDenuncias.CurrentRow.Cells["Tipo"].Value.ToString();
            var Gravidade = dgvDenuncias.CurrentRow.Cells["id_MotivoDenuncia"].Value.ToString();

            if (Tipo == "Usuário")
            {
                DenunciaUsuario denunciaUsuario = new DenunciaUsuario();
                denunciaUsuario.RemoverDenuncia((DateTime)Data, int.Parse(Denunciante), int.Parse(Denunciado), int.Parse(Gravidade));
            }

            if (Tipo == "Campanha")
            {
                Campanha campanha = new Campanha();
                campanha.RemoverDenuncia((DateTime)Data, int.Parse(Denunciante), int.Parse(Denunciado), int.Parse(Gravidade));
            }
            GerarDGV();
        }
    }
}
