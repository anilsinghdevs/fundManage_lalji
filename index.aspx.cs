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
   
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(DateTime.Today.ToString("dd.MM.yyyy"));
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            //DBADataContext db = new DBADataContext();

            //var quer = from fb in db.users select fb;
            //foreach (var ab in quer)
            //{
            //    Response.Write(ab.firstname);
            //}



            String mob = txtemail.Text;
            String pass = txtpass.Text;
            String query = "select * from users where (email_id=@email or mobile_no=@email) and password=@pass";
            con.Open();        
            SqlCommand com = new SqlCommand(query,con);
            com.Parameters.AddWithValue("@email", mob);
            com.Parameters.AddWithValue("@pass", pass);
            com.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                
                String unm = dt.Rows[0].Field<string>("firstname");
                Response.Write(unm);
                Session["unm"] = unm;
                Session["email"] = mob;
                Session["user_type"] = dt.Rows[0].Field<string>("user_type");
                Response.Redirect("start_up.aspx");
            }
            else
            {
                Response.Write("<h3 align='center'>Invalid credential</h3>");
            }   


        }

        
    }
}