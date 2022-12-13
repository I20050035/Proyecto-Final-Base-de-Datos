using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace HospitalSQL
{
   public class Conexion
    {
        public static SqlConnection Conectar() { 
        SqlConnection conexion = new SqlConnection("SERVER=localhost;DATABASE=Hospital; integrated security=true;");
            conexion.Open();
            return conexion;
    }
    }
}
