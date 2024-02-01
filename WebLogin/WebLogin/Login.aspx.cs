using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Authentication.ExtendedProtection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebLogin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        private bool CheckUser(string username, string password)
        {
            return username == "tc" && password == "tc";
        }
        private bool CheckUser1(string username1, string password1)
        {
            return username1 == "pc" && password1 == "pc";
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                txtpassword.TextMode = TextBoxMode.SingleLine;
            }
            else
            {
                txtpassword.TextMode = TextBoxMode.Password;
            }
        }

        protected void btnlogin_Click1(object sender, EventArgs e)
        {
            string username = txtuser.Text;
            string password = txtpassword.Text;

            string username1 = txtuser.Text;
            string password1 = txtpassword.Text;

            if (CheckUser(username, password))
            {
                alerts.InnerText = "Welcome";


                Response.Redirect("stock.aspx");
            }
            else
            {
                alerts.InnerText = "Error Wrong user or pass";

            }
            if (CheckUser1(username1, password1))
            {
                alerts.InnerText = "Welcome";


                Response.Redirect("pageshop.aspx");
            }
            else
            {
                alerts.InnerText = "Error Wrong user or pass";

            }
        }
    }
}