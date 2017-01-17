using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Text.RegularExpressions;

namespace fundManage
{
    public partial class index : System.Web.UI.Page
    {
        DBADataContext db = new DBADataContext();
                
        protected void Page_Load(object sender, EventArgs e)
        {

            updateUser();

            if (Request.QueryString.Get("edit") != null)
            {
                DBADataContext db = new DBADataContext();

              

                
            } 
           


        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
           

        }

        public void Insert(object sender,EventArgs e)
        {
            DBADataContext db = new DBADataContext();
            user u = new user
            {
                username = textunm.Text,
                firstname = textfnm.Text,
                lastname = textlnm.Text,
                mobile_no = textmob.Text,
                email_id = textemail.Text,
                password = textpass.Text,
                user_type = listut.Text

            };
            db.users.InsertOnSubmit(u);
            db.SubmitChanges();
            updateUser();
            textunm.Text = "";
            textfnm.Text = "";
            textlnm.Text = "";
            textmob.Text = "";
            textemail.Text = "";
            textpass.Text = "";
            
            Response.Write("<script>alert('Record insert Success');</script>");
        }
        public void onRowDataBound(object sender, GridViewRowEventArgs e)
        {
        }
        public void onRowDelete(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(grid_user.DataKeys[e.RowIndex].Values[0]);
            user u = db.users.FirstOrDefault(x => x.uid == id);
            db.users.DeleteOnSubmit(u);
            db.SubmitChanges();
            Page_Load(sender, e);
        }
        public void onRowCancelEdit(object sender,EventArgs e)
        {
        }
        public void onRowEdit(object sender, GridViewEditEventArgs e)
        {
        }
        public void onRowUpdate(object sender, GridViewUpdateEventArgs e)
        {
        }

       
        public void updateUser()
        {
            grid_user.DataSource = db.users.ToList();
            grid_user.DataBind();
           
        }
    }
}