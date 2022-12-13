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
    public partial class TipoDeArea : Form
    {
        public TipoDeArea()
        {
            InitializeComponent();
        }

        private void TipoDeArea_Load(object sender, EventArgs e)
        {

            Conexion.Conectar();
            MessageBox.Show("Conexion Exitosa");
            dataGridView1.DataSource = Mostrar();
        }
        public DataTable Mostrar()
        {
            Conexion.Conectar();
            DataTable dt = new DataTable();
            string Consulta = "SELECT * FROM TipoDeArea";
            SqlCommand cmd = new SqlCommand(Consulta, Conexion.Conectar());

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            return dt;

        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            Conexion.Conectar();
            string insertar = "Insert into TipoDeArea (nombre,descripcion_TipoArea,estatus)values(@nombre,@descripcion_TipoArea,@estatus)";
            SqlCommand cmd1 = new SqlCommand(insertar, Conexion.Conectar());
            cmd1.Parameters.AddWithValue("@nombre", txtNombre.Text);
            cmd1.Parameters.AddWithValue("@descripcion_TipoArea", txtDescripcion.Text);
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
                txtNombre.Text = dataGridView1.CurrentRow.Cells[1].Value.ToString();
                txtDescripcion.Text = dataGridView1.CurrentRow.Cells[2].Value.ToString();
                txtEstatus.Text = dataGridView1.CurrentRow.Cells[3].Value.ToString();
               

            }
            catch
            {

            }
        }

        private void BtnActualizar_Click(object sender, EventArgs e)
        {
            Conexion.Conectar();
            string Actualizar = "Update  TipoDeArea set nombre=@nombre,descripcion_TipoArea=@descripcion_TipoArea,estatus=@estatus Where IdTipoDeArea=@IdTipoDeArea";
            SqlCommand cmd1 = new SqlCommand(Actualizar, Conexion.Conectar());
            cmd1.Parameters.AddWithValue("@IdTipoDeArea", label4.Text);
            cmd1.Parameters.AddWithValue("@nombre", txtNombre.Text);
            cmd1.Parameters.AddWithValue("@descripcion_TipoArea", txtDescripcion.Text);
            cmd1.Parameters.AddWithValue("@estatus", txtEstatus.Text);
            
            cmd1.ExecuteNonQuery();

            MessageBox.Show("Dato agregado con exito");

            dataGridView1.DataSource = Mostrar();
        }

        private void BtnEliminar_Click(object sender, EventArgs e)
        {
            Conexion.Conectar();
            string eliminar = "DELETE FROM TipoDeArea Where IdTipoDeArea=@IdTipoDeArea";
            SqlCommand cmd3 = new SqlCommand(eliminar, Conexion.Conectar());
            cmd3.Parameters.AddWithValue("@IdTipoDeArea", label4.Text);


            cmd3.ExecuteNonQuery();
            MessageBox.Show("Dato eliminado con exito");

            dataGridView1.DataSource = Mostrar();
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }
    }
}
