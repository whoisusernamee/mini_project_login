using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebLogin
{
    public partial class pageshop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            BindGridViewData();

        }

        private void BindGridViewData()
        {
            string connectionString = "Server=dkttc.ac.th;Database=dbtc;User=tc;Password=tc;";

            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM dbtc.ProductStore", con))
                {
                    con.Open();

                    using (MySqlDataReader reader = cmd.ExecuteReader())
                    {
                        GridViewStock.DataSource = reader;
                        GridViewStock.DataBind();
                    }
                }
            }
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}