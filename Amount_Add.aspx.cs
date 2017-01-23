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
    public partial class Amount_Add : System.Web.UI.Page
    {
        DBADataContext db = new DBADataContext();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string nm = txtnm.Text;
            int amount = Convert.ToInt32(txtamount.Text);
            string msg = txtmsg.Text;
            String query = "InsertAMT";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@nm", nm);
            cmd.Parameters.AddWithValue("@amount", amount);
            cmd.Parameters.AddWithValue("@msg", msg);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Amount Inserted Succeed");
            txtnm.Text = "";
            txtamount.Text = "";
            txtmsg.Text = "";
        }

         public void update_amount_info()
        {
            grid_amt.DataSource = db.Amount_DBs.ToList();
            grid_amt.DataBind();
        }
    }
}