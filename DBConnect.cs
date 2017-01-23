using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;

namespace fundManage
{
    public class DBConnect
    {
        SqlConnection con;
        public DBConnect()
        {
            con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
                      
        }

        public void DBClose()
        {
            con.Close();
        }

        public DataTable getAllEXP()
        {
            string Query = "select * from Exapance_DB";
            SqlCommand cmd = new SqlCommand(Query,con);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            return dt;           


        }

        internal void ChanePassword(string v, string ncpass)
        {
            String qq = "UpdatePass";
            SqlCommand cmd = new SqlCommand(qq,con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@email", v);
            cmd.Parameters.AddWithValue("@pass", ncpass);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataTable getAllAMT()
        {
            string str = "select * from Amount_DB";
            SqlCommand cmd = new SqlCommand(str, con);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            return dt;        
        }
        public string CheckCurrent(string e)
        {
            string qur = "select password from users where email_id='" + e + "' or mobile_no='" + e + "'";
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand(qur, con);
            con.Open();
            string pass = (String)cmd.ExecuteScalar();
            con.Close();
            return pass;


        }
        public bool CheckEmail(string email)
        {
            DBADataContext dbb = new DBADataContext();
            user u = dbb.users.FirstOrDefault(eb => eb.email_id.Equals(email) || eb.mobile_no.Equals(email));
            if (u != null)
            {
                return true;
            }else
            {
                return false;
            }
                
        }
    }
}
