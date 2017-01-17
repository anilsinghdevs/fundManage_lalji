using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fundManage
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(Request.QueryString.Get("id").Trim());
            DBADataContext db = new DBADataContext();
            user u = db.users.FirstOrDefault(x => x.uid == id);
            //var use = from d in db.users where d.uid == id select d;

            if (u != null)
            {
                
                db.users.DeleteOnSubmit(u);
                db.SubmitChanges();
                Response.Write("Delete Success");
            }
            else
            {
                Response.Write("Not deleted Data");
            }


        }
    }
}