using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fundManage
{
    public partial class passchange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            DBConnect db = new DBConnect();

            
            
            string ncpass = txtncpass.Text;
            string email = Request.QueryString.Get("email");
                db.ChanePassword(email,ncpass);
                Response.Write("<script> alert('Password Change SuccessFully Login with new Password..') </script>");
            Response.Redirect("index.aspx");
                txtnpass.Text = "";
                txtncpass.Text = "";

         

        }
      
    }
}