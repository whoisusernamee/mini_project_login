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
using System.Runtime.Remoting.Messaging;
using System.Drawing;

namespace WebLogin
{
    public partial class shopui : System.Web.UI.Page
    {
        #region Myfunction

        private void BindGridViewData()
        {
            string connectionString = "Server=dkttc.ac.th;Database=dbtc;User=tc;Password=tc;";



            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT *  FROM dbtc.ProductStore", con))
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


        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {

            BindGridViewData();
            // if (!IsPostBack)
            // {

            //  }
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            // ดึงข้อมูลจาก TextBox
            string deleteId = txtdelete.Text;

            // SQL query สำหรับการลบข้อมูล
            string sqlDelete = $"DELETE FROM dbtc.ProductStore WHERE id = '{deleteId}'";

            // เรียกใช้งานเมธอด ExecuteNonQuery เพื่อทำการลบข้อมูล
            using (MySqlConnection con = new MySqlConnection("Server=dkttc.ac.th;Database=dbtc;User=tc;Password=tc;"))
            {
                using (MySqlCommand cmdDelete = new MySqlCommand(sqlDelete, con))
                {

                    con.Open();
                    int rowsAffected = cmdDelete.ExecuteNonQuery();


                    if (rowsAffected > 0)
                    {
                        // แสดงข้อความถ้าการลบข้อมูลสำเร็จ
                        //  lblDatabaseResult.Text = "Data deleted successfully.";
                    }
                    else
                    {
                        // แสดงข้อความถ้าการลบข้อมูลไม่สำเร็จ
                        //     lblDatabaseResult.Text = "Failed to delete data. ID may not exist.";
                    }
                }
            }
            BindGridViewData();
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            string ID = txtid.Text;
            string Product = txtnameproduct.Text;
            string NumberText = txtnumber.Text;
            string Price = txtprice.Text;
            string img = txtimg.Text;

            // SQL query สำหรับการเพิ่มข้อมูล
            string sqlInsert = $"INSERT INTO dbtc.ProductStore (ID, Product, Number, Price, img) VALUES ('{ID}', '{Product}', '{NumberText}', '{Price}', '{img}')";

            // เรียกใช้งานเมธอด ExecuteNonQuery เพื่อทำการเพิ่มข้อมูล
            using (MySqlConnection con = new MySqlConnection("Server=dkttc.ac.th;Database=dbtc;User=tc;Password=tc;"))
            {
                using (MySqlCommand cmdInsert = new MySqlCommand(sqlInsert, con))
                {
                    con.Open();
                    int rowsAffected = cmdInsert.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // แสดงข้อความถ้าการเพิ่มข้อมูลสำเร็จ
                        // lblDatabaseResult.Text = "Data inserted successfully.";
                    }
                    else
                    {
                        // แสดงข้อความถ้าการเพิ่มข้อมูลไม่สำเร็จ
                        // lblDatabaseResult.Text = "Failed to insert data.";
                    }
                }
            }

            // เมื่อเพิ่มข้อมูลเสร็จ ทำการรีเฟรช GridView
            BindGridViewData();

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            string updateId = txtidupdate.Text;
            string updateProduct = txtproductupdate.Text;
            string updateNumberText = txtnumberupdate.Text;
            string updatePrice = txtpriceupdate.Text;
            string updateImg = txtimgupdate.Text;

            // ตรวจสอบว่า updateNumberText เป็นข้อมูลที่ถูกต้องหรือไม่
            if (int.TryParse(updateNumberText, out int updateNumber))
            {
                // SQL query สำหรับการแก้ไขข้อมูล
                string sqlUpdate = $"UPDATE dbtc.ProductStore SET Product = '{updateProduct}', Number = '{updateNumber}', Price = '{updatePrice}', img = '{updateImg}' WHERE ID = '{updateId}'";

                // เรียกใช้งานเมธอด ExecuteNonQuery เพื่อทำการแก้ไขข้อมูล
                using (MySqlConnection con = new MySqlConnection("Server=dkttc.ac.th;Database=dbtc;User=tc;Password=tc;"))
                {
                    using (MySqlCommand cmdUpdate = new MySqlCommand(sqlUpdate, con))
                    {
                        con.Open();
                        int rowsAffected = cmdUpdate.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // แสดงข้อความถ้าการแก้ไขข้อมูลสำเร็จ
                            // lblUpdateResult.Text = "Data updated successfully.";
                        }
                        else
                        {
                            // แสดงข้อความถ้าการแก้ไขข้อมูลไม่สำเร็จ
                            // lblUpdateResult.Text = "Failed to update data. ID may not exist.";
                        }
                    }
                }

                // เมื่อแก้ไขข้อมูลเสร็จ ทำการรีเฟรช GridView
                BindGridViewData();
            }

        }

        protected void GridViewStock_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtidupdate.Text = GridViewStock.SelectedRow.Cells[0].Text.ToString();
            txtproductupdate.Text = GridViewStock.SelectedRow.Cells[1].Text.ToString();
            txtnumberupdate.Text = GridViewStock.SelectedRow.Cells[2].Text.ToString();
            txtpriceupdate.Text = GridViewStock.SelectedRow.Cells[3].Text.ToString();
            txtimgupdate.Text = GridViewStock.SelectedRow.Cells[4].Text.ToString();

            txtdelete.Text = GridViewStock.SelectedRow.Cells[0].Text.ToString();
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }


}
