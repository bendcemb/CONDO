using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.WebSockets;

namespace CD01
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // เช็ค session ว่ามีค่าหรือไม่
            if (Session["Username"] == null)
            {
                // ถ้าไม่มี session แสดงว่ายังไม่ได้ล็อกอิน
                Response.Redirect("Login.aspx");
            }




            lblUser.Text = Session["username"].ToString();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // ลบ session ที่เฉพาะเจาะจง
            Session.Remove("Username");

            // หรือถ้าต้องการลบ session ทั้งหมดที่เกี่ยวข้องกับผู้ใช้
            // Session.Abandon();

            // Redirect ไปยังหน้าล็อกอินหรือหน้าหลัก ตามที่คุณต้องการ
            Response.Redirect("Login.aspx");
        }

        protected void UserName()
        {
            string conn = ConfigurationManager.ConnectionStrings["cnstrcondo"].ConnectionString;

            string strQuery = "SELECT TOP (1000) [user_id]\r\n      ,[name]\r\n      ,[cardid]\r\n      ,[email]\r\n      ,[email2]\r\n      ,[email_user]\r\n      ,[phone]\r\n      ,[password]\r\n      ,[activated]\r\n      ,[register]\r\n      ,[register_date]\r\n      ,[expire]\r\n      ,[level]\r\n      ,[createby]\r\n      ,[createdate]\r\n      ,[editeby]\r\n      ,[editdate]\r\n  FROM [Condo].[dbo].[user]\r\n  WHERE email_user = @email_user";

            using(SqlConnection con = new SqlConnection(conn))
            {
                con.Open();
                using(SqlCommand cmd = con.CreateCommand())
                {
                    cmd.Parameters.AddWithValue("@email_user", lblUser.Text);
                    cmd.CommandText = strQuery;
                    cmd.ExecuteNonQuery();


                }
            }
        }

       
    }
}