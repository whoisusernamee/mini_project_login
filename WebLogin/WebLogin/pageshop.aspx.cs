using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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

            BindDatalist();
        }

        private void BindDatalist()
        {
            string connectionString = "Server=dkttc.ac.th;Database=dbtc;User=tc;Password=tc;";



            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT *  FROM dbtc.ProductStore", con))
                {
                    con.Open();

                    using (MySqlDataReader reader = cmd.ExecuteReader())
                    {


                        DataList1.DataSource = reader;
                        DataList1.DataBind();
                    }
                }
            }


        }

        

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnsearch_Click(object sender, EventArgs e)

        {
            string connectionString = "Server=dkttc.ac.th;Database=dbtc;User=tc;Password=tc;";



            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT *  FROM dbtc.ProductStore", con))
                {
                    con.Open();

                    using (MySqlDataReader reader = cmd.ExecuteReader())
                    {

                        SqlDataAdapter sda = new SqlDataAdapter("Select * from ProductStore where (Product like '%"+txtsearch.Text+"%')",connectionString);
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        DataList1.DataSourceID = null;
                        DataList1.DataSource = dt;
                        DataList1.DataBind();
                        
                      
                    }
                }
            }
            
        }
    }
}