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
    public partial class TipoEnfermedad : Form
    {
        public TipoEnfermedad()
        {
            InitializeComponent();
        }

        private void TipoEnfermedad_Load(object sender, EventArgs e)
        {

            Conexion.Conectar();
            MessageBox.Show("Conexion Exitosa");
            dataGridView1.DataSource = Mostrar();
        }
        public DataTable Mostrar()
        {
            Conexion.Conectar();
            DataTable dt = new DataTable();
            string Consulta = "SELECT * FROM TipoEnfermedad";
            SqlCommand cmd = new SqlCommand(Consulta, Conexion.Conectar());

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            return dt;

        }
     
        private void btnAgregar_Click_1(object sender, EventArgs e)
        {
            Conexion.Conectar();
            string insertar = "Insert into TipoEnfermedad (nombre_TipoEnfermedad,descripcion,estatus)values(@nombre_TipoEnfermedad,@descripcion,@estatus)";
            SqlCommand cmd1 = new SqlCommand(insertar, Conexion.Conectar());
            cmd1.Parameters.AddWithValue("@nombre_TipoEnfermedad", txtNombre.Text);
            cmd1.Parameters.AddWithValue("@descripcion", txtDescripcion.Text);
            cmd1.Parameters.AddWithValue("@estatus", txtEstatus.Text);

            cmd1.ExecuteNonQuery();

            MessageBox.Show("Dato agregado con exito");

            dataGridView1.DataSource = Mostrar();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            label4.Text = dataGridView1.CurrentRow.Cells[0].Value.ToString();
            txtNombre.Text = dataGridView1.CurrentRow.Cells[1].Value.ToString();
            txtDescripcion.Text = dataGridView1.CurrentRow.Cells[2].Value.ToString();
            txtEstatus.Text = dataGridView1.CurrentRow.Cells[3].Value.ToString();
            
        }

       

        private void BtnActualizar_Click(object sender, EventArgs e)
        {
            Conexion.Conectar();
            string Actualizar = "Update  TipoEnfermedad set nombre_TipoEnfermedad=@nombre_TipoEnfermedad,descripcion=@descripcion,estatus=@estatus Where IdTipoEnfermedad=@IdTipoEnfermedad";
            SqlCommand cmd1 = new SqlCommand(Actualizar, Conexion.Conectar());
            cmd1.Parameters.AddWithValue("@IdTipoEnfermedad", label4.Text);
            cmd1.Parameters.AddWithValue("@nombre_TipoEnfermedad", txtNombre.Text);
            cmd1.Parameters.AddWithValue("@descripcion", txtDescripcion.Text);
            cmd1.Parameters.AddWithValue("@estatus", txtEstatus.Text);            
            cmd1.ExecuteNonQuery();

            MessageBox.Show("Dato agregado con exito");

            dataGridView1.DataSource = Mostrar();
        }

        private void BtnEliminar_Click(object sender, EventArgs e)
        {
            Conexion.Conectar();
            string eliminar = "DELETE FROM TipoEnfermedad Where IdTipoEnfermedad=@IdTipoEnfermedad";
            SqlCommand cmd3 = new SqlCommand(eliminar, Conexion.Conectar());
            cmd3.Parameters.AddWithValue("@IdTipoEnfermedad", label4.Text);


            cmd3.ExecuteNonQuery();
            MessageBox.Show("Dato eliminado con exito");

            dataGridView1.DataSource = Mostrar();
        }
    }
}

