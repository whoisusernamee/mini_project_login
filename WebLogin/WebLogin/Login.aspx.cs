using System;
using System.Collections.Generic;
using System.Linq;
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

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string username = txtuser.Text;
            string password = txtpass.Text;

            if (CheckUser(username, password))
            {
                alerts.InnerText = "Welcome";
            
                
                Response.Redirect("databaseConnect.aspx");
            }
            else
            {
                alerts.InnerText = "Error Wrong user or pass";
                
            }
        }

        private bool CheckUser(string username, string password) 
        {
            return username == "tc" && password == "tc";
        }
    }
}