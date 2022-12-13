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
    public partial class Enfermedad : Form
    {
        public Enfermedad()
        {
            InitializeComponent();
        }

        private void Enfermedad_Load(object sender, EventArgs e)
        {
            Conexion.Conectar();
            MessageBox.Show("Conexion Exitosa");
            dataGridView1.DataSource = Mostrar();
        }
        //Mostrar Registros de Enfermedad
        public DataTable Mostrar()
        {
            Conexion.Conectar();
            DataTable dt = new DataTable();
            string Consulta = "SELECT * FROM Enfermedad";
            SqlCommand cmd = new SqlCommand(Consulta, Conexion.Conectar());

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            return dt;

        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            Conexion.Conectar();
            string insertar = "Insert into Enfermedad(numEnfermedad,nombre,descripcion_Enfermedad,estatus,IdTipoEnfermedad)values(@numEnfermedad, @nombre, @descripcion_Enfermedad, @estatus,@IdTipoEnfermedad)";
            SqlCommand cmd1 = new SqlCommand(insertar, Conexion.Conectar());
          
            cmd1.Parameters.AddWithValue("@numEnfermedad", txtnumEnfermedad.Text);
            cmd1.Parameters.AddWithValue("@nombre", txtNombre.Text);
            cmd1.Parameters.AddWithValue("@descripcion_Enfermedad", txtDescripcion.Text);
            cmd1.Parameters.AddWithValue("@estatus", txtEstatus.Text);
            cmd1.Parameters.AddWithValue("@IdTipoEnfermedad", txtIdTipoEnfermedad.Text);
            cmd1.ExecuteNonQuery();

            MessageBox.Show("Dato agregado con exito");

            dataGridView1.DataSource = Mostrar();
        }

        private void BtnActualizar_Click(object sender, EventArgs e)
        {
            Conexion.Conectar();
            string Actualizar = "Update Enfermedad set numEnfermedad=@numEnfermedad,nombre=@nombre,descripcion_Enfermedad=@descripcion_Enfermedad,estatus=@estatus,IdTipoEnfermedad=@IdTipoEnfermedad Where IdEnfermedad=@IdEnfermedad";
            SqlCommand cmd1 = new SqlCommand(Actualizar, Conexion.Conectar());
            cmd1.Parameters.AddWithValue("@IdEnfermedad", label4.Text);
            cmd1.Parameters.AddWithValue("@numEnfermedad", txtnumEnfermedad.Text);
            cmd1.Parameters.AddWithValue("@nombre", txtNombre.Text);
            cmd1.Parameters.AddWithValue("@descripcion_Enfermedad", txtDescripcion.Text);
            cmd1.Parameters.AddWithValue("@estatus", txtEstatus.Text);
            cmd1.Parameters.AddWithValue("@IdTipoEnfermedad", txtIdTipoEnfermedad.Text);
            cmd1.ExecuteNonQuery();

            MessageBox.Show("Dato agregado con exito");

            dataGridView1.DataSource = Mostrar();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                label4.Text = dataGridView1.CurrentRow.Cells[0].Value.ToString();
                txtnumEnfermedad.Text = dataGridView1.CurrentRow.Cells[1].Value.ToString();
                txtNombre.Text = dataGridView1.CurrentRow.Cells[2].Value.ToString();
                txtDescripcion.Text = dataGridView1.CurrentRow.Cells[3].Value.ToString();
                txtEstatus.Text = dataGridView1.CurrentRow.Cells[4].Value.ToString();
                txtIdTipoEnfermedad.Text = dataGridView1.CurrentRow.Cells[5].Value.ToString();
            }
            catch
            {

            }
        }

        private void BtnEliminar_Click(object sender, EventArgs e)
        {

            Conexion.Conectar();
            string eliminar = "DELETE FROM Enfermedad Where IdEnfermedad=@IdEnfermedad";
            SqlCommand cmd3 = new SqlCommand(eliminar, Conexion.Conectar());
            cmd3.Parameters.AddWithValue("@IdEnfermedad", label4.Text);


            cmd3.ExecuteNonQuery();
            MessageBox.Show("Dato eliminado con exito");

            dataGridView1.DataSource = Mostrar();
        }
    }
}
