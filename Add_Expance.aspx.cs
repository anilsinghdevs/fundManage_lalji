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
    public partial class Add_Expance : System.Web.UI.Page
    {
        DBADataContext db = new DBADataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            UpdateExpance();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            Exapance_DB ex = new Exapance_DB
            {
                type_of_expance = txtex.Text,
                amount = Convert.ToInt32(txtamount.Text),
                message = txtmsg.Text,
                Log = "Entry Added by  -" + Session["unm"],
                Date = Convert.ToDateTime(DateTime.Today.ToString("MM-dd-yyyy"))



            };

            db.Exapance_DBs.InsertOnSubmit(ex);
            db.SubmitChanges();
            txtamount.Text = "";
            txtex.Text = "";
            txtmsg.Text = "";
            
            Page_Load(sender, e);
        }
        public void UpdateExpance()
        {
            grid_expance.DataSource = db.Exapance_DBs.ToList();
            grid_expance.DataBind();

        }
        public void onRowDelete(object sender,GridViewDeleteEventArgs e)
        {
            int id =Convert.ToInt32(grid_expance.DataKeys[e.RowIndex].Values[0].ToString());
            Exapance_DB ex = db.Exapance_DBs.SingleOrDefault(s => s.ID == id);
            db.Exapance_DBs.DeleteOnSubmit(ex);
            db.SubmitChanges();
            Page_Load(sender, e);    
        }
        public void onRowEdit(object sender,GridViewEditEventArgs e)
        {
            grid_expance.EditIndex = e.NewEditIndex;
            UpdateExpance();
        }
        public void onEditCancel(object sender,GridViewCancelEditEventArgs e)
        {
            grid_expance.EditIndex = -1;
        }
        public void onRowUpdate(object sender,GridViewUpdateEventArgs e)
        {
            RequiredFieldValidator1.Enabled = false;
            RequiredFieldValidator2.Enabled = false;
            RequiredFieldValidator3.Enabled = false;
            GridViewRow row = grid_expance.Rows[e.RowIndex];
            int id =Convert.ToInt32(grid_expance.DataKeys[e.RowIndex].Values[0]);
            string type_exp = (row.FindControl("txttype") as TextBox).Text;
            int amount = Convert.ToInt32((row.FindControl("txtamt") as TextBox).Text);
            string message = (row.FindControl("txtmsg") as TextBox).Text;
            string log = (row.FindControl("txtlog") as TextBox).Text;

            Exapance_DB ee = db.Exapance_DBs.SingleOrDefault(x => x.ID == id);
            ee.type_of_expance = type_exp;
            ee.amount = amount;
            ee.message = message;
            ee.Log = log;

            db.SubmitChanges();
            UpdateExpance();


        }

    }
    }
