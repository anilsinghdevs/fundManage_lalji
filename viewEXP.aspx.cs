using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fundManage
{
    public partial class viewEXP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DBConnect db = new DBConnect();
            mygrid.DataSource = db.getAllEXP();
            mygrid.DataBind();
        }
    }
}