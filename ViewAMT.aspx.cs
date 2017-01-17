using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fundManage
{
    public partial class ViewAMT : System.Web.UI.Page
    {
        DBADataContext db = new DBADataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        public void onRowEdit(object sender,GridViewEditEventArgs e)
        {
            gridamt.EditIndex = e.NewEditIndex;
            BindGridView();


        } 
        public void BindGridView()
        {
            gridamt.DataSource = db.Amount_DBs.ToList();
            gridamt.DataBind();

        }


    }
}