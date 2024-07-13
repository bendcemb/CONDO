using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;

namespace CD01
{
    public partial class Login : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["cnstrcondo"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // เปิด session
            if (!IsPostBack)
            {
                Session["Username"] = null; // กำหนดค่าเริ่มต้นให้เป็น null

            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string useremail = txtemail.Text;
            string password = txtpassword.Text;
            

            if (IsValidUser(useremail, password))
            {
                // ล็อกอินสำเร็จ
                using (SqlConnection con = new SqlConnection(conn))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT TOP (1000) [user_id]\r\n      ,[name]\r\n      ,[cardid]\r\n      ,[email]\r\n      ,[email2]\r\n      ,[email_user]\r\n      ,[phone]\r\n      ,[password]\r\n      ,[activated]\r\n      ,[register]\r\n      ,[register_date]\r\n      ,[expire]\r\n      ,[level]\r\n      ,[createby]\r\n      ,[createdate]\r\n      ,[editeby]\r\n      ,[editdate]\r\n  ,CASE WHEN expire < GETDATE() THEN 1 ELSE 0 END AS user_expire  FROM [Condo].[dbo].[user]\r\n WHERE email_user = @email AND password = @password", con);
                    cmd.Parameters.AddWithValue("@email", useremail);
                    cmd.Parameters.AddWithValue("@password", password);
                    //cmd.Parameters.AddWithValue("@user_expire", user_expire);


                    SqlDataReader reader = cmd.ExecuteReader();
                }


                    Response.Redirect("Default.aspx");


            }
            else
            {
                // แสดงข้อความผิดพลาด
                lblMessage.Text = "ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง";
            }



        }



        private bool IsValidUser(string useremail, string password)
        {
            // ตรวจสอบชื่อผู้ใช้และรหัสผ่านในฐานข้อมูล
            // โค้ดตรวจสอบในฐานข้อมูล หรือแหล่งข้อมูลอื่น ๆ ตามที่คุณใช้งาน
            using (SqlConnection con = new SqlConnection(conn))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT TOP (1000) [user_id]\r\n      ,[name]\r\n      ,[cardid]\r\n      ,[email]\r\n      ,[email2]\r\n      ,[email_user]\r\n      ,[phone]\r\n      ,[password]\r\n      ,[activated]\r\n      ,[register]\r\n      ,[register_date]\r\n      ,[expire]\r\n      ,[level]\r\n      ,[createby]\r\n      ,[createdate]\r\n      ,[editeby]\r\n      ,[editdate]\r\n  ,CASE WHEN expire < GETDATE() THEN 1 ELSE 0 END AS user_expire  FROM [Condo].[dbo].[user]\r\n WHERE email_user = @email AND password = @password", con);
                cmd.Parameters.AddWithValue("@email", useremail);
                cmd.Parameters.AddWithValue("@password", password);
                //cmd.Parameters.AddWithValue("@user_expire", user_expire);


                SqlDataReader reader = cmd.ExecuteReader();
             

                if (reader.HasRows)
                {
                    // ถ้ามีผู้ใช้ที่ตรงกับเงื่อนไขในฐานข้อมูล
                    // กำหนดค่าใน session และคืนค่า true
                    if (reader.Read())
                    {
                        string username = reader["email_user"].ToString(); // สมมติว่าคอลัมน์ที่เก็บชื่อของผู้ใช้ชื่อ email
                        HttpContext.Current.Session["Username"] = username;
                    }
                    return true;
                }
                else
                {
                    // ถ้าไม่พบผู้ใช้ที่ตรงกับเงื่อนไขในฐานข้อมูล
                    // คืนค่า false
                    return false;
                }
            }
        }
    }
}