
namespace HospitalSQL
{
    partial class Inicio
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.unidadMedicaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.edificioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.elevadorToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.reglamentoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.areaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.tipoDeAreaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.enfermedadToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.tipoDeEnfermedadToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.almacenToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.unidadMedicaToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(630, 24);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // unidadMedicaToolStripMenuItem
            // 
            this.unidadMedicaToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.edificioToolStripMenuItem,
            this.elevadorToolStripMenuItem,
            this.reglamentoToolStripMenuItem,
            this.areaToolStripMenuItem,
            this.enfermedadToolStripMenuItem,
            this.almacenToolStripMenuItem});
            this.unidadMedicaToolStripMenuItem.Name = "unidadMedicaToolStripMenuItem";
            this.unidadMedicaToolStripMenuItem.Size = new System.Drawing.Size(96, 20);
            this.unidadMedicaToolStripMenuItem.Text = "UnidadMedica";
            // 
            // edificioToolStripMenuItem
            // 
            this.edificioToolStripMenuItem.Name = "edificioToolStripMenuItem";
            this.edificioToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.edificioToolStripMenuItem.Text = "Edificio";
            this.edificioToolStripMenuItem.Click += new System.EventHandler(this.edificioToolStripMenuItem_Click);
            // 
            // elevadorToolStripMenuItem
            // 
            this.elevadorToolStripMenuItem.Name = "elevadorToolStripMenuItem";
            this.elevadorToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.elevadorToolStripMenuItem.Text = "Elevador";
            this.elevadorToolStripMenuItem.Click += new System.EventHandler(this.elevadorToolStripMenuItem_Click);
            // 
            // reglamentoToolStripMenuItem
            // 
            this.reglamentoToolStripMenuItem.Name = "reglamentoToolStripMenuItem";
            this.reglamentoToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.reglamentoToolStripMenuItem.Text = "Reglamento";
            this.reglamentoToolStripMenuItem.Click += new System.EventHandler(this.reglamentoToolStripMenuItem_Click);
            // 
            // areaToolStripMenuItem
            // 
            this.areaToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tipoDeAreaToolStripMenuItem});
            this.areaToolStripMenuItem.Name = "areaToolStripMenuItem";
            this.areaToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.areaToolStripMenuItem.Text = "Area";
            this.areaToolStripMenuItem.Click += new System.EventHandler(this.areaToolStripMenuItem_Click);
            // 
            // tipoDeAreaToolStripMenuItem
            // 
            this.tipoDeAreaToolStripMenuItem.Name = "tipoDeAreaToolStripMenuItem";
            this.tipoDeAreaToolStripMenuItem.Size = new System.Drawing.Size(135, 22);
            this.tipoDeAreaToolStripMenuItem.Text = "TipoDeArea";
            this.tipoDeAreaToolStripMenuItem.Click += new System.EventHandler(this.tipoDeAreaToolStripMenuItem_Click);
            // 
            // enfermedadToolStripMenuItem
            // 
            this.enfermedadToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tipoDeEnfermedadToolStripMenuItem});
            this.enfermedadToolStripMenuItem.Name = "enfermedadToolStripMenuItem";
            this.enfermedadToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.enfermedadToolStripMenuItem.Text = "Enfermedad";
            this.enfermedadToolStripMenuItem.Click += new System.EventHandler(this.enfermedadToolStripMenuItem_Click);
            // 
            // tipoDeEnfermedadToolStripMenuItem
            // 
            this.tipoDeEnfermedadToolStripMenuItem.Name = "tipoDeEnfermedadToolStripMenuItem";
            this.tipoDeEnfermedadToolStripMenuItem.Size = new System.Drawing.Size(175, 22);
            this.tipoDeEnfermedadToolStripMenuItem.Text = "TipoDeEnfermedad";
            this.tipoDeEnfermedadToolStripMenuItem.Click += new System.EventHandler(this.tipoDeEnfermedadToolStripMenuItem_Click);
            // 
            // almacenToolStripMenuItem
            // 
            this.almacenToolStripMenuItem.Name = "almacenToolStripMenuItem";
            this.almacenToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.almacenToolStripMenuItem.Text = "Almacen";
            // 
            // Inicio
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(630, 346);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "Inicio";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Inicio_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem unidadMedicaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem edificioToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem elevadorToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem reglamentoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem areaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem tipoDeAreaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem enfermedadToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem tipoDeEnfermedadToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem almacenToolStripMenuItem;
    }
}

