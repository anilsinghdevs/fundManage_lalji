using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace fundManage
{
    public partial class start_up : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
        protected void Page_Load(object sender, EventArgs e)
        {
            String ss = "SELECT TOP 5 * FROM Amount_DB ORDER BY ID DESC;";
            SqlCommand cmd = new SqlCommand(ss, con);
            con.Open();
            cmd.ExecuteNonQuery();
            
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            gridAMT.DataSource = dt;
            gridAMT.DataBind();


            String s = "SELECT TOP 5 * FROM Exapance_DB ORDER BY ID DESC;";
            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            gridEXP.DataSource = dt1;
            gridEXP.DataBind();
            con.Close();
        }
        public int getAvailableAmount()
        {
            string str = "Select sum(amount) from Amount_DB";
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
            int bal = (int)cmd.ExecuteScalar();
             return bal;
            
        }
        public int getTotalExpance()
        {
            string str = "select sum(amount) from Exapance_DB";
            SqlCommand cmd = new SqlCommand(str,con);
           
            int exp = (int)cmd.ExecuteScalar();
            return exp;
           
        }
        

    }
}