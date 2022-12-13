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
    public partial class Edificio : Form
    {
        public Edificio()
        {
            InitializeComponent();
        }

        private void Edificio_Load(object sender, EventArgs e)
        {
            Conexion.Conectar();
            dataGridView1.DataSource = Mostrar();
        }
        public DataTable Mostrar()
        {
            Conexion.Conectar();
            DataTable dt = new DataTable();
            string Consulta = "SELECT * FROM Edificio";
            SqlCommand cmd = new SqlCommand(Consulta, Conexion.Conectar());

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            return dt;

        }

   

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            Conexion.Conectar();
            string insertar = "Insert into Edificio(numEdificio,estatus,IdElevador,IdFarmacia,IdArea,IdReglamento,IdHabitacion)values(@numEdificio,@estatus,@IdElevador,@IdFarmacia,@IdArea,@IdReglamento,@IdHabitacion)";
            SqlCommand cmd1 = new SqlCommand(insertar, Conexion.Conectar());

            cmd1.Parameters.AddWithValue("@numEdificio", txtNumEdificio.Text);
            cmd1.Parameters.AddWithValue("@estatus", txtEstatus.Text);
            cmd1.Parameters.AddWithValue("@IdFarmacia", txtIdFarmacia.Text);
            cmd1.Parameters.AddWithValue("@IdArea", txtIdArea.Text);
            cmd1.Parameters.AddWithValue("@IdReglamento", txtIdReglamento.Text);
            cmd1.Parameters.AddWithValue("@IdHabitacion", txtIdHabitacion.Text);
            cmd1.ExecuteNonQuery();

            MessageBox.Show("Dato agregado con exito");

            dataGridView1.DataSource = Mostrar();
        }

        private void BtnActualizar_Click(object sender, EventArgs e)
        {
            Conexion.Conectar();
            string Actualizar = "Update Edificio set numEdificio=@numEdificio,estatus=@estatus,IdFarmacia=@IdFarmacia,IdArea=@IdArea,IdReglamento=@IdReglamento,IdHabitacion=@IdHabitacion Where IdEdificio=@IdEdificio";
            SqlCommand cmd1 = new SqlCommand(Actualizar, Conexion.Conectar());
            cmd1.Parameters.AddWithValue("@IdEdificio", label4.Text);
            cmd1.Parameters.AddWithValue("@numEdificio", txtNumEdificio.Text);
            cmd1.Parameters.AddWithValue("@estatus", txtEstatus.Text);
            cmd1.Parameters.AddWithValue("@IdFarmacia", txtIdFarmacia.Text);
            cmd1.Parameters.AddWithValue("@IdArea", txtIdArea.Text);
            cmd1.Parameters.AddWithValue("@IdReglamento", txtIdReglamento.Text);
            cmd1.Parameters.AddWithValue("@IdHabitacion", txtIdHabitacion.Text);
            cmd1.ExecuteNonQuery();

            MessageBox.Show("Dato agregado con exito");

            dataGridView1.DataSource = Mostrar();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                label4.Text = dataGridView1.CurrentRow.Cells[0].Value.ToString();
                txtNumEdificio.Text = dataGridView1.CurrentRow.Cells[1].Value.ToString();
                txtEstatus.Text = dataGridView1.CurrentRow.Cells[2].Value.ToString();
                txtIdFarmacia.Text = dataGridView1.CurrentRow.Cells[3].Value.ToString();
                txtIdArea.Text = dataGridView1.CurrentRow.Cells[4].Value.ToString();
                txtIdReglamento.Text = dataGridView1.CurrentRow.Cells[5].Value.ToString();
                txtIdHabitacion.Text = dataGridView1.CurrentRow.Cells[6].Value.ToString();

            }
            catch
            {

            }
        }

        private void BtnEliminar_Click(object sender, EventArgs e)
        {
            Conexion.Conectar();
            string eliminar = "DELETE FROM Edificio Where IdEdificio=@IdEdificio";
            SqlCommand cmd3 = new SqlCommand(eliminar, Conexion.Conectar());
            cmd3.Parameters.AddWithValue("@IdEdificio", label4.Text);


            cmd3.ExecuteNonQuery();
            MessageBox.Show("Dato eliminado con exito");

            dataGridView1.DataSource = Mostrar();
        }
        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged_1(object sender, EventArgs e)
        {

        }
    }
}
