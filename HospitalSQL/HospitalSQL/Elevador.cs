using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace HospitalSQL
{
    public partial class Elevador : Form
    {
        public Elevador()
        {
            InitializeComponent();
        }

        private void Elevador_Load(object sender, EventArgs e)
        {
            Conexion.Conectar();
            dataGridView1.DataSource = Mostrar();
        }
        public DataTable Mostrar()
        {
            Conexion.Conectar();
            DataTable dt = new DataTable();
            string Consulta = "SELECT * FROM Elevador";
            SqlCommand cmd = new SqlCommand(Consulta, Conexion.Conectar());

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            return dt;

        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {

            Conexion.Conectar();
            string insertar = "Insert into Area (numElevador,estatus)values(@numElevador,@estatus)";
            SqlCommand cmd1 = new SqlCommand(insertar, Conexion.Conectar());
            cmd1.Parameters.AddWithValue("@numElevador", txtNumElevador.Text);
            cmd1.Parameters.AddWithValue("@estatus", txtEstatus.Text);
           
            cmd1.ExecuteNonQuery();

            MessageBox.Show("Dato agregado con exito");

            dataGridView1.DataSource = Mostrar();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                label4.Text = dataGridView1.CurrentRow.Cells[0].Value.ToString();
                txtNumElevador.Text = dataGridView1.CurrentRow.Cells[1].Value.ToString();
                txtEstatus.Text = dataGridView1.CurrentRow.Cells[2].Value.ToString();             
            }
            catch
            {

            }
        }

        private void BtnActualizar_Click(object sender, EventArgs e)
        {
            Conexion.Conectar();
            string Actualizar = "Update  Elevador set numElevador=@numElevador,estatus=@estatus Where IdElevador=@IdElevador";
            SqlCommand cmd1 = new SqlCommand(Actualizar, Conexion.Conectar());
            cmd1.Parameters.AddWithValue("@IdElevador", label4.Text);
            cmd1.Parameters.AddWithValue("@numElevador", txtNumElevador.Text);
            cmd1.Parameters.AddWithValue("@estatus", txtEstatus.Text);
           
            cmd1.ExecuteNonQuery();

            MessageBox.Show("Dato agregado con exito");

            dataGridView1.DataSource = Mostrar();
        }

        private void BtnEliminar_Click(object sender, EventArgs e)
        {
            Conexion.Conectar();
            string eliminar = "DELETE FROM Elevador Where IdElevador=@IdElevador";
            SqlCommand cmd3 = new SqlCommand(eliminar, Conexion.Conectar());
            cmd3.Parameters.AddWithValue("@IdElevador", label4.Text);


            cmd3.ExecuteNonQuery();
            MessageBox.Show("Dato eliminado con exito");

            dataGridView1.DataSource = Mostrar();
        }
    }
}
