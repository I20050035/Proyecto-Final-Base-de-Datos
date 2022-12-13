using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HospitalSQL
{
    public partial class Inicio : Form
    {
        public Inicio()
        {
            InitializeComponent();
        }

        private void edificioToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Edificio abrir = new Edificio();
            abrir.Show();
            this.Hide();
        }

        private void areaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //Formulario Area
            Area abrir = new Area();
            abrir.Show();
            this.Hide();
        }

        private void tipoDeAreaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //Formulario TipoDeArea
            TipoDeArea abrir = new TipoDeArea();
            abrir.Show();
            this.Hide();
        }

        private void enfermedadToolStripMenuItem_Click(object sender, EventArgs e)
        {

            //Formulario  enfermedad
            Enfermedad abrir = new Enfermedad();
            abrir.Show();
            this.Hide();
        }

        private void tipoDeEnfermedadToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //Formulario  TipoEnfermedad
            TipoEnfermedad abrir = new TipoEnfermedad();
            abrir.Show();
            this.Hide();
        }

        private void elevadorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //Formulario  Elevador
            Elevador abrir = new Elevador();
            abrir.Show();
            this.Hide();
        }

        private void Inicio_Load(object sender, EventArgs e)
        {

        }

        private void reglamentoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Reglamento abrir = new Reglamento();
            abrir.Show();
            this.Hide();
        }
    }
}
