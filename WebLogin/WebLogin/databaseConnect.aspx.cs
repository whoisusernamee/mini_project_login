using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using MySql;



namespace WebLogin
{
    public partial class databaseConnect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // โค้ดที่คุณต้องการใน Page_Load
        }

        protected void btnShowData_Click(object sender, EventArgs e)
        {
            string sql = "SELECT id, fname, lname FROM dbtc.team_test1";

            using (MySqlConnection con = new MySqlConnection("Server=dkttc.ac.th;Database=dbtc;User=tc;Password=tc;"))
            {
                using (MySqlCommand cmd = new MySqlCommand(sql, con))
                {
                    con.Open();

                    using (MySqlDataReader reader = cmd.ExecuteReader())
                    {
                        // เคลียร์ข้อมูลใน Label ก่อนที่จะแสดงผลลัพธ์ใหม่
                        lblDatabaseResult.Text = "";

                        // ทำงานกับข้อมูล
                        while (reader.Read())
                        {
                            lblDatabaseResult.Text += $"ID: {reader["id"]}, First Name: {reader["fname"]}, Last Name: {reader["lname"]} <br />";
                            // แก้ไขชื่อของคอลัมน์ตามที่เป็นจริงในตาราง
                        }
                    }
                }
            } // เมื่อออกจาก block นี้, MySqlConnection จะถูกปิดโดยอัตโนมัติ
        }

        

        

        protected void btnInsertData_Click(object sender, EventArgs e)
        {
            // ดึงข้อมูลจาก TextBoxes
            string id = txtId.Text;
            string fname = txtFname.Text;
            string lname = txtLname.Text;

            // SQL query สำหรับการเพิ่มข้อมูล
            string sqlInsert = $"INSERT INTO dbtc.team_test1 (id, fname, lname) VALUES ('{id}', '{fname}', '{lname}')";

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
                        lblDatabaseResult.Text = "Data inserted successfully.";
                    }
                    else
                    {
                        // แสดงข้อความถ้าการเพิ่มข้อมูลไม่สำเร็จ
                        lblDatabaseResult.Text = "Failed to insert data.";
                    }
                }
            }
        }

        protected void btnDeleteData_Click(object sender, EventArgs e)
        {
            // ดึงข้อมูลจาก TextBox
            string deleteId = txtDeleteId.Text;

            // SQL query สำหรับการลบข้อมูล
            string sqlDelete = $"DELETE FROM dbtc.team_test1 WHERE id = '{deleteId}'";

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
                        lblDatabaseResult.Text = "Data deleted successfully.";
                    }
                    else
                    {
                        // แสดงข้อความถ้าการลบข้อมูลไม่สำเร็จ
                        lblDatabaseResult.Text = "Failed to delete data. ID may not exist.";
                    }
                }
            }
        }
    }
}
    


        
    