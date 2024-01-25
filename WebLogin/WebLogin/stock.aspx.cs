using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using MySql;
using System.Data;

namespace WebLogin
{
    public partial class shopui : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridViewData();
            }
        }

        private void BindGridViewData()
        {
            string connectionString = "Server=dkttc.ac.th;Database=dbtc;User=tc;Password=tc;";

            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT ID, Product, Number, Price,img FROM dbtc.ProductStore", con))
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
    }
}
