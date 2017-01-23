using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace fundManage
{
    public partial class forgetPass : System.Web.UI.Page
    {
        DBConnect db = new DBConnect();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncheck_Click(object sender, EventArgs e)
        {
            string email = txtemail.Text.ToString();
            if (db.CheckEmail(email))
            {
                string senderID = "lanetteam.lalji@gmail.com";
                const String password = "Yuval_300207";
                try
                {
                    SmtpClient smtp = new SmtpClient
                    {
                        Host = "smtp.gmail.com",
                        Port = 587,
                        EnableSsl = true,
                        DeliveryMethod = SmtpDeliveryMethod.Network,
                        Credentials = new System.Net.NetworkCredential(senderID,password),
                        Timeout=30000,
                        
                    };
                    string body = "<h3> To Recover the password click on the folowing link.. </h3> <br><a href='http://localhost:54987/passchange.aspx?email=" +email+"'> Password Recover </a> +";
                    MailMessage message = new MailMessage(senderID,email,"Password Recovery",body);
                    message.IsBodyHtml = true;
                    smtp.Send(message);
                    Response.Write("Message Sent Successfully");

                }catch(Exception ex)
                {
                    Response.Write("ERROR="+ex.ToString());
                }

              
            }else
            {
              

            }

        }
    }
}