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
    public partial class Reglamento : Form
    {
        public Reglamento()
        {
            InitializeComponent();
        }

        private void Reglamento_Load(object sender, EventArgs e)
        {
            Conexion.Conectar();
            dataGridView1.DataSource = Mostrar();
        }
        public DataTable Mostrar()
        {
            Conexion.Conectar();
            DataTable dt = new DataTable();
            string Consulta = "SELECT * FROM Reglamento";
            SqlCommand cmd = new SqlCommand(Consulta, Conexion.Conectar());

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            return dt;

        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            Conexion.Conectar();
            string insertar = "Insert into Reglamento (descripcion,estatus)values(@descripcion,@estatus)";
            SqlCommand cmd1 = new SqlCommand(insertar, Conexion.Conectar());
            cmd1.Parameters.AddWithValue("@descripcion", txtDescripcion.Text);
            cmd1.Parameters.AddWithValue("@estatus", txtEstatus.Text);

            cmd1.ExecuteNonQuery();

            MessageBox.Show("Dato agregado con exito");

            dataGridView1.DataSource = Mostrar();
        }

        private void BtnActualizar_Click(object sender, EventArgs e)
        {
            Conexion.Conectar();
            string Actualizar = "Update  Reglamento set descripcion=@descripcion,estatus=@estatus Where IdReglamento=@IdReglamento";
            SqlCommand cmd1 = new SqlCommand(Actualizar, Conexion.Conectar());
            cmd1.Parameters.AddWithValue("@IdReglamento", label4.Text);
            cmd1.Parameters.AddWithValue("@descripcion", txtDescripcion.Text);
            cmd1.Parameters.AddWithValue("@estatus", txtEstatus.Text);

            cmd1.ExecuteNonQuery();

            MessageBox.Show("Dato agregado con exito");

            dataGridView1.DataSource = Mostrar();
        }

        private void BtnEliminar_Click(object sender, EventArgs e)
        {
            Conexion.Conectar();
            string eliminar = "DELETE FROM Reglamento Where IdReglamento=@IdReglamento";
            SqlCommand cmd3 = new SqlCommand(eliminar, Conexion.Conectar());
            cmd3.Parameters.AddWithValue("@IdReglamento", label4.Text);


            cmd3.ExecuteNonQuery();
            MessageBox.Show("Dato eliminado con exito");

            dataGridView1.DataSource = Mostrar();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                label4.Text = dataGridView1.CurrentRow.Cells[0].Value.ToString();
                txtDescripcion.Text = dataGridView1.CurrentRow.Cells[1].Value.ToString(); 
                txtEstatus.Text = dataGridView1.CurrentRow.Cells[2].Value.ToString();
              
            }
            catch
            {

            }
        }
    }
}
