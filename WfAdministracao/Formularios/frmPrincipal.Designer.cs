namespace WF_Administracao.Formularios
{
    partial class frmPrincipal
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmPrincipal));
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.toolStripStatusLabel1 = new System.Windows.Forms.ToolStripStatusLabel();
            this.tsslUsuarioNome = new System.Windows.Forms.ToolStripStatusLabel();
            this.pnlLateral = new System.Windows.Forms.FlowLayoutPanel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.pcbLogo = new System.Windows.Forms.PictureBox();
            this.panel2 = new System.Windows.Forms.Panel();
            this.btnDenuncias = new System.Windows.Forms.Button();
            this.panel3 = new System.Windows.Forms.Panel();
            this.flowLayoutPanel3 = new System.Windows.Forms.FlowLayoutPanel();
            this.panel4 = new System.Windows.Forms.Panel();
            this.btnSair = new System.Windows.Forms.Button();
            this.panel7 = new System.Windows.Forms.Panel();
            this.btnFechar = new System.Windows.Forms.Button();
            this.pnlObservacao = new System.Windows.Forms.FlowLayoutPanel();
            this.panel5 = new System.Windows.Forms.Panel();
            this.txtGravidade = new System.Windows.Forms.TextBox();
            this.txtData = new System.Windows.Forms.TextBox();
            this.txtMotivo = new System.Windows.Forms.TextBox();
            this.txtDenunciante = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtDenunciado = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.btnReprovar = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.txtDescricao = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.flowLayoutPanel2 = new System.Windows.Forms.FlowLayoutPanel();
            this.panel6 = new System.Windows.Forms.Panel();
            this.label2 = new System.Windows.Forms.Label();
            this.flowLayoutPanel4 = new System.Windows.Forms.FlowLayoutPanel();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.button3 = new System.Windows.Forms.Button();
            this.dgvDenuncias = new System.Windows.Forms.DataGridView();
            this.cd_denunciado = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cd_denunciante = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.id_motivoDenuncia = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Tipo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Denunciado = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Denunciante = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Motivo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Gravidade = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Data = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ds = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dt_denuncia = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.statusStrip1.SuspendLayout();
            this.pnlLateral.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pcbLogo)).BeginInit();
            this.panel2.SuspendLayout();
            this.panel4.SuspendLayout();
            this.panel7.SuspendLayout();
            this.pnlObservacao.SuspendLayout();
            this.panel5.SuspendLayout();
            this.flowLayoutPanel2.SuspendLayout();
            this.panel6.SuspendLayout();
            this.flowLayoutPanel4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDenuncias)).BeginInit();
            this.SuspendLayout();
            // 
            // statusStrip1
            // 
            this.statusStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripStatusLabel1,
            this.tsslUsuarioNome});
            this.statusStrip1.Location = new System.Drawing.Point(0, 475);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Size = new System.Drawing.Size(1221, 22);
            this.statusStrip1.TabIndex = 1;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // toolStripStatusLabel1
            // 
            this.toolStripStatusLabel1.Name = "toolStripStatusLabel1";
            this.toolStripStatusLabel1.Size = new System.Drawing.Size(50, 17);
            this.toolStripStatusLabel1.Text = "Usuário:";
            // 
            // tsslUsuarioNome
            // 
            this.tsslUsuarioNome.Name = "tsslUsuarioNome";
            this.tsslUsuarioNome.Size = new System.Drawing.Size(27, 17);
            this.tsslUsuarioNome.Text = "null";
            // 
            // pnlLateral
            // 
            this.pnlLateral.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(99)))), ((int)(((byte)(191)))));
            this.pnlLateral.Controls.Add(this.panel1);
            this.pnlLateral.Controls.Add(this.panel2);
            this.pnlLateral.Controls.Add(this.panel3);
            this.pnlLateral.Controls.Add(this.flowLayoutPanel3);
            this.pnlLateral.Controls.Add(this.panel4);
            this.pnlLateral.Controls.Add(this.panel7);
            this.pnlLateral.Dock = System.Windows.Forms.DockStyle.Left;
            this.pnlLateral.FlowDirection = System.Windows.Forms.FlowDirection.RightToLeft;
            this.pnlLateral.Location = new System.Drawing.Point(0, 0);
            this.pnlLateral.Name = "pnlLateral";
            this.pnlLateral.Size = new System.Drawing.Size(181, 475);
            this.pnlLateral.TabIndex = 2;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.pcbLogo);
            this.panel1.Location = new System.Drawing.Point(-20, 3);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(198, 100);
            this.panel1.TabIndex = 0;
            // 
            // pcbLogo
            // 
            this.pcbLogo.BackColor = System.Drawing.Color.Transparent;
            this.pcbLogo.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("pcbLogo.BackgroundImage")));
            this.pcbLogo.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.pcbLogo.Location = new System.Drawing.Point(32, 11);
            this.pcbLogo.Name = "pcbLogo";
            this.pcbLogo.Size = new System.Drawing.Size(149, 81);
            this.pcbLogo.TabIndex = 2;
            this.pcbLogo.TabStop = false;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.btnDenuncias);
            this.panel2.Location = new System.Drawing.Point(-20, 109);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(198, 46);
            this.panel2.TabIndex = 3;
            // 
            // btnDenuncias
            // 
            this.btnDenuncias.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.btnDenuncias.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnDenuncias.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.btnDenuncias.Location = new System.Drawing.Point(13, 3);
            this.btnDenuncias.Name = "btnDenuncias";
            this.btnDenuncias.Size = new System.Drawing.Size(188, 40);
            this.btnDenuncias.TabIndex = 6;
            this.btnDenuncias.Text = "Denuncias Pendentes";
            this.btnDenuncias.UseVisualStyleBackColor = false;
            this.btnDenuncias.Click += new System.EventHandler(this.btnLogar_Click);
            // 
            // panel3
            // 
            this.panel3.Location = new System.Drawing.Point(-20, 161);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(198, 46);
            this.panel3.TabIndex = 4;
            // 
            // flowLayoutPanel3
            // 
            this.flowLayoutPanel3.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.flowLayoutPanel3.FlowDirection = System.Windows.Forms.FlowDirection.BottomUp;
            this.flowLayoutPanel3.Location = new System.Drawing.Point(-20, 213);
            this.flowLayoutPanel3.Name = "flowLayoutPanel3";
            this.flowLayoutPanel3.Size = new System.Drawing.Size(198, 161);
            this.flowLayoutPanel3.TabIndex = 0;
            // 
            // panel4
            // 
            this.panel4.Controls.Add(this.btnSair);
            this.panel4.Location = new System.Drawing.Point(-20, 380);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(198, 46);
            this.panel4.TabIndex = 5;
            // 
            // btnSair
            // 
            this.btnSair.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.btnSair.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSair.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.btnSair.Location = new System.Drawing.Point(13, 6);
            this.btnSair.Name = "btnSair";
            this.btnSair.Size = new System.Drawing.Size(188, 40);
            this.btnSair.TabIndex = 7;
            this.btnSair.Text = "Sair";
            this.btnSair.UseVisualStyleBackColor = false;
            this.btnSair.Click += new System.EventHandler(this.btnSair_Click);
            // 
            // panel7
            // 
            this.panel7.Controls.Add(this.btnFechar);
            this.panel7.Location = new System.Drawing.Point(-20, 432);
            this.panel7.Name = "panel7";
            this.panel7.Size = new System.Drawing.Size(198, 46);
            this.panel7.TabIndex = 5;
            // 
            // btnFechar
            // 
            this.btnFechar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.btnFechar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnFechar.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.btnFechar.Location = new System.Drawing.Point(13, 0);
            this.btnFechar.Name = "btnFechar";
            this.btnFechar.Size = new System.Drawing.Size(188, 40);
            this.btnFechar.TabIndex = 8;
            this.btnFechar.Text = "Fechar";
            this.btnFechar.UseVisualStyleBackColor = false;
            this.btnFechar.Click += new System.EventHandler(this.btnFechar_Click);
            // 
            // pnlObservacao
            // 
            this.pnlObservacao.Controls.Add(this.panel5);
            this.pnlObservacao.Dock = System.Windows.Forms.DockStyle.Right;
            this.pnlObservacao.Location = new System.Drawing.Point(910, 0);
            this.pnlObservacao.Name = "pnlObservacao";
            this.pnlObservacao.Size = new System.Drawing.Size(311, 475);
            this.pnlObservacao.TabIndex = 3;
            // 
            // panel5
            // 
            this.panel5.AutoSize = true;
            this.panel5.Controls.Add(this.txtGravidade);
            this.panel5.Controls.Add(this.txtData);
            this.panel5.Controls.Add(this.txtMotivo);
            this.panel5.Controls.Add(this.txtDenunciante);
            this.panel5.Controls.Add(this.label7);
            this.panel5.Controls.Add(this.label6);
            this.panel5.Controls.Add(this.label5);
            this.panel5.Controls.Add(this.txtDenunciado);
            this.panel5.Controls.Add(this.label4);
            this.panel5.Controls.Add(this.label3);
            this.panel5.Controls.Add(this.btnReprovar);
            this.panel5.Controls.Add(this.button1);
            this.panel5.Controls.Add(this.txtDescricao);
            this.panel5.Controls.Add(this.label1);
            this.panel5.Location = new System.Drawing.Point(3, 3);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(306, 430);
            this.panel5.TabIndex = 4;
            // 
            // txtGravidade
            // 
            this.txtGravidade.Enabled = false;
            this.txtGravidade.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtGravidade.Location = new System.Drawing.Point(171, 199);
            this.txtGravidade.Multiline = true;
            this.txtGravidade.Name = "txtGravidade";
            this.txtGravidade.Size = new System.Drawing.Size(131, 25);
            this.txtGravidade.TabIndex = 18;
            // 
            // txtData
            // 
            this.txtData.Enabled = false;
            this.txtData.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtData.Location = new System.Drawing.Point(3, 199);
            this.txtData.Multiline = true;
            this.txtData.Name = "txtData";
            this.txtData.Size = new System.Drawing.Size(136, 25);
            this.txtData.TabIndex = 17;
            // 
            // txtMotivo
            // 
            this.txtMotivo.Enabled = false;
            this.txtMotivo.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtMotivo.Location = new System.Drawing.Point(3, 134);
            this.txtMotivo.Multiline = true;
            this.txtMotivo.Name = "txtMotivo";
            this.txtMotivo.Size = new System.Drawing.Size(300, 28);
            this.txtMotivo.TabIndex = 16;
            // 
            // txtDenunciante
            // 
            this.txtDenunciante.Enabled = false;
            this.txtDenunciante.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDenunciante.Location = new System.Drawing.Point(3, 83);
            this.txtDenunciante.Multiline = true;
            this.txtDenunciante.Name = "txtDenunciante";
            this.txtDenunciante.Size = new System.Drawing.Size(300, 28);
            this.txtDenunciante.TabIndex = 15;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(5, 118);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(42, 13);
            this.label7.TabIndex = 14;
            this.label7.Text = "Motivo:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(168, 179);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(59, 13);
            this.label6.TabIndex = 12;
            this.label6.Text = "Gravidade:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(4, 11);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(68, 13);
            this.label5.TabIndex = 10;
            this.label5.Text = "Denunciado:";
            // 
            // txtDenunciado
            // 
            this.txtDenunciado.Enabled = false;
            this.txtDenunciado.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDenunciado.Location = new System.Drawing.Point(3, 27);
            this.txtDenunciado.Multiline = true;
            this.txtDenunciado.Name = "txtDenunciado";
            this.txtDenunciado.Size = new System.Drawing.Size(300, 28);
            this.txtDenunciado.TabIndex = 9;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F);
            this.label4.Location = new System.Drawing.Point(4, 63);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(71, 13);
            this.label4.TabIndex = 8;
            this.label4.Text = "Denunciante:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(4, 179);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(33, 13);
            this.label3.TabIndex = 6;
            this.label3.Text = "Data:";
            // 
            // btnReprovar
            // 
            this.btnReprovar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(53)))), ((int)(((byte)(69)))));
            this.btnReprovar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnReprovar.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnReprovar.Location = new System.Drawing.Point(171, 395);
            this.btnReprovar.Name = "btnReprovar";
            this.btnReprovar.Size = new System.Drawing.Size(132, 32);
            this.btnReprovar.TabIndex = 3;
            this.btnReprovar.Text = "Reprovar";
            this.btnReprovar.UseVisualStyleBackColor = false;
            this.btnReprovar.Click += new System.EventHandler(this.btnReprovar_Click);
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(99)))), ((int)(((byte)(191)))));
            this.button1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button1.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.button1.Location = new System.Drawing.Point(2, 395);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(126, 32);
            this.button1.TabIndex = 2;
            this.button1.Text = "Aprovar";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.btnAprovar_Click);
            // 
            // txtDescricao
            // 
            this.txtDescricao.Enabled = false;
            this.txtDescricao.Location = new System.Drawing.Point(-3, 261);
            this.txtDescricao.Multiline = true;
            this.txtDescricao.Name = "txtDescricao";
            this.txtDescricao.Size = new System.Drawing.Size(305, 128);
            this.txtDescricao.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(3, 245);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(68, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Observação:";
            // 
            // flowLayoutPanel2
            // 
            this.flowLayoutPanel2.Controls.Add(this.panel6);
            this.flowLayoutPanel2.Controls.Add(this.flowLayoutPanel4);
            this.flowLayoutPanel2.Controls.Add(this.dgvDenuncias);
            this.flowLayoutPanel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.flowLayoutPanel2.Location = new System.Drawing.Point(181, 0);
            this.flowLayoutPanel2.Name = "flowLayoutPanel2";
            this.flowLayoutPanel2.Size = new System.Drawing.Size(729, 475);
            this.flowLayoutPanel2.TabIndex = 4;
            // 
            // panel6
            // 
            this.panel6.Controls.Add(this.label2);
            this.panel6.Location = new System.Drawing.Point(3, 3);
            this.panel6.Name = "panel6";
            this.panel6.Size = new System.Drawing.Size(725, 46);
            this.panel6.TabIndex = 5;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 18.75F, System.Drawing.FontStyle.Bold);
            this.label2.Location = new System.Drawing.Point(3, 10);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(142, 29);
            this.label2.TabIndex = 4;
            this.label2.Text = "Denúncias";
            // 
            // flowLayoutPanel4
            // 
            this.flowLayoutPanel4.Controls.Add(this.textBox2);
            this.flowLayoutPanel4.Controls.Add(this.button3);
            this.flowLayoutPanel4.Location = new System.Drawing.Point(3, 55);
            this.flowLayoutPanel4.Name = "flowLayoutPanel4";
            this.flowLayoutPanel4.Size = new System.Drawing.Size(725, 45);
            this.flowLayoutPanel4.TabIndex = 1;
            this.flowLayoutPanel4.Visible = false;
            // 
            // textBox2
            // 
            this.textBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBox2.Location = new System.Drawing.Point(3, 3);
            this.textBox2.Multiline = true;
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(600, 32);
            this.textBox2.TabIndex = 1;
            // 
            // button3
            // 
            this.button3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(99)))), ((int)(((byte)(191)))));
            this.button3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button3.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.button3.Location = new System.Drawing.Point(609, 3);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(89, 32);
            this.button3.TabIndex = 4;
            this.button3.Text = "Buscar";
            this.button3.UseVisualStyleBackColor = false;
            // 
            // dgvDenuncias
            // 
            this.dgvDenuncias.AllowUserToAddRows = false;
            this.dgvDenuncias.AllowUserToDeleteRows = false;
            this.dgvDenuncias.AllowUserToResizeColumns = false;
            this.dgvDenuncias.AllowUserToResizeRows = false;
            this.dgvDenuncias.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.DisplayedCells;
            this.dgvDenuncias.BackgroundColor = System.Drawing.SystemColors.HighlightText;
            this.dgvDenuncias.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dgvDenuncias.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.dgvDenuncias.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(99)))), ((int)(((byte)(191)))));
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F);
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(99)))), ((int)(((byte)(191)))));
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvDenuncias.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.dgvDenuncias.ColumnHeadersHeight = 44;
            this.dgvDenuncias.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
            this.dgvDenuncias.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.cd_denunciado,
            this.cd_denunciante,
            this.id_motivoDenuncia,
            this.Tipo,
            this.Denunciado,
            this.Denunciante,
            this.Motivo,
            this.Gravidade,
            this.Data,
            this.ds,
            this.dt_denuncia});
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle4.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(131)))), ((int)(((byte)(149)))), ((int)(((byte)(202)))));
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgvDenuncias.DefaultCellStyle = dataGridViewCellStyle4;
            this.dgvDenuncias.EnableHeadersVisualStyles = false;
            this.dgvDenuncias.Location = new System.Drawing.Point(3, 106);
            this.dgvDenuncias.MultiSelect = false;
            this.dgvDenuncias.Name = "dgvDenuncias";
            this.dgvDenuncias.ReadOnly = true;
            this.dgvDenuncias.RowHeadersVisible = false;
            this.dgvDenuncias.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvDenuncias.Size = new System.Drawing.Size(720, 366);
            this.dgvDenuncias.TabIndex = 0;
            this.dgvDenuncias.CellMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dgvDenuncias_CellMouseClick);
            // 
            // cd_denunciado
            // 
            this.cd_denunciado.HeaderText = "cd_denunciado";
            this.cd_denunciado.Name = "cd_denunciado";
            this.cd_denunciado.ReadOnly = true;
            this.cd_denunciado.Visible = false;
            this.cd_denunciado.Width = 133;
            // 
            // cd_denunciante
            // 
            this.cd_denunciante.HeaderText = "cd_denunciante";
            this.cd_denunciante.Name = "cd_denunciante";
            this.cd_denunciante.ReadOnly = true;
            this.cd_denunciante.Visible = false;
            this.cd_denunciante.Width = 136;
            // 
            // id_motivoDenuncia
            // 
            this.id_motivoDenuncia.HeaderText = "id_motivoDenuncia";
            this.id_motivoDenuncia.Name = "id_motivoDenuncia";
            this.id_motivoDenuncia.ReadOnly = true;
            this.id_motivoDenuncia.Visible = false;
            this.id_motivoDenuncia.Width = 159;
            // 
            // Tipo
            // 
            this.Tipo.HeaderText = "Tipo";
            this.Tipo.Name = "Tipo";
            this.Tipo.ReadOnly = true;
            this.Tipo.Width = 60;
            // 
            // Denunciado
            // 
            this.Denunciado.HeaderText = "Denunciado";
            this.Denunciado.Name = "Denunciado";
            this.Denunciado.ReadOnly = true;
            this.Denunciado.Width = 110;
            // 
            // Denunciante
            // 
            this.Denunciante.HeaderText = "Denunciante";
            this.Denunciante.Name = "Denunciante";
            this.Denunciante.ReadOnly = true;
            this.Denunciante.Width = 113;
            // 
            // Motivo
            // 
            this.Motivo.HeaderText = "Motivo";
            this.Motivo.Name = "Motivo";
            this.Motivo.ReadOnly = true;
            this.Motivo.Width = 76;
            // 
            // Gravidade
            // 
            this.Gravidade.HeaderText = "Gravidade";
            this.Gravidade.Name = "Gravidade";
            this.Gravidade.ReadOnly = true;
            this.Gravidade.Width = 98;
            // 
            // Data
            // 
            this.Data.HeaderText = "Data";
            this.Data.Name = "Data";
            this.Data.ReadOnly = true;
            this.Data.Width = 62;
            // 
            // ds
            // 
            this.ds.HeaderText = "ds";
            this.ds.Name = "ds";
            this.ds.ReadOnly = true;
            this.ds.Visible = false;
            this.ds.Width = 49;
            // 
            // dt_denuncia
            // 
            this.dt_denuncia.HeaderText = "dt_denuncia";
            this.dt_denuncia.Name = "dt_denuncia";
            this.dt_denuncia.ReadOnly = true;
            this.dt_denuncia.Visible = false;
            this.dt_denuncia.Width = 112;
            // 
            // frmPrincipal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSize = true;
            this.ClientSize = new System.Drawing.Size(1221, 497);
            this.Controls.Add(this.flowLayoutPanel2);
            this.Controls.Add(this.pnlObservacao);
            this.Controls.Add(this.pnlLateral);
            this.Controls.Add(this.statusStrip1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmPrincipal";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "";
            this.Load += new System.EventHandler(this.frmPrincipal_Load);
            this.statusStrip1.ResumeLayout(false);
            this.statusStrip1.PerformLayout();
            this.pnlLateral.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pcbLogo)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel4.ResumeLayout(false);
            this.panel7.ResumeLayout(false);
            this.pnlObservacao.ResumeLayout(false);
            this.pnlObservacao.PerformLayout();
            this.panel5.ResumeLayout(false);
            this.panel5.PerformLayout();
            this.flowLayoutPanel2.ResumeLayout(false);
            this.panel6.ResumeLayout(false);
            this.panel6.PerformLayout();
            this.flowLayoutPanel4.ResumeLayout(false);
            this.flowLayoutPanel4.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDenuncias)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.StatusStrip statusStrip1;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel1;
        private System.Windows.Forms.ToolStripStatusLabel tsslUsuarioNome;
        private System.Windows.Forms.FlowLayoutPanel pnlLateral;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.PictureBox pcbLogo;
        private System.Windows.Forms.FlowLayoutPanel pnlObservacao;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel2;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Button btnDenuncias;
        private System.Windows.Forms.DataGridView dgvDenuncias;
        private System.Windows.Forms.Panel panel5;
        private System.Windows.Forms.TextBox txtDescricao;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnReprovar;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Panel panel6;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel4;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtDenunciado;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtData;
        private System.Windows.Forms.TextBox txtMotivo;
        private System.Windows.Forms.TextBox txtDenunciante;
        private System.Windows.Forms.TextBox txtGravidade;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel3;
        private System.Windows.Forms.Button btnSair;
        private System.Windows.Forms.Button btnFechar;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Panel panel7;
        private System.Windows.Forms.DataGridViewTextBoxColumn cd_denunciado;
        private System.Windows.Forms.DataGridViewTextBoxColumn cd_denunciante;
        private System.Windows.Forms.DataGridViewTextBoxColumn id_motivoDenuncia;
        private System.Windows.Forms.DataGridViewTextBoxColumn Tipo;
        private System.Windows.Forms.DataGridViewTextBoxColumn Denunciado;
        private System.Windows.Forms.DataGridViewTextBoxColumn Denunciante;
        private System.Windows.Forms.DataGridViewTextBoxColumn Motivo;
        private System.Windows.Forms.DataGridViewTextBoxColumn Gravidade;
        private System.Windows.Forms.DataGridViewTextBoxColumn Data;
        private System.Windows.Forms.DataGridViewTextBoxColumn ds;
        private System.Windows.Forms.DataGridViewTextBoxColumn dt_denuncia;
    }
}