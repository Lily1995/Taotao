using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    class DBHelper
    {
        public static string ConnString = "Data Source=.;Initial Catalog=Taotao;Integrated Security=True";
        private static SqlConnection Conn = null;
        private static void InitConnection()
        {
            if (Conn == null)
            {
                Conn = new SqlConnection(ConnString);
            }
            if (Conn.State == ConnectionState.Closed)
            {
                Conn.Open();
            }
            if (Conn.State == ConnectionState.Broken)
            {
                Conn.Close();
                Conn.Open();
            }
        }
        public static DataTable GetDataTable(string sqlstr)
        {
            InitConnection();
            DataTable dt = new DataTable();
            SqlDataAdapter dap = new SqlDataAdapter(sqlstr,Conn);
            dap.Fill(dt);
            Conn.Close();
            return dt;
        }
        public static bool ExecuteNonQuery(string sqlstr)
        {
            InitConnection();
            SqlCommand cmd = new SqlCommand(sqlstr,Conn);
            int result = cmd.ExecuteNonQuery();
            return result > 0;
        }
    }
}
