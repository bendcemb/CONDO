using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CD03
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
              
            }
        }

   
        private void MyConnectionString(string query, string constr, string prm)
        {
            string conn = ConfigurationManager.ConnectionStrings[constr].ConnectionString;
            using (SqlConnection con = new SqlConnection(conn))
            {
                con.Open();
                using(SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandText = query;
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@RO_CODE", prm);
                    // ดึงข้อมูลจากฐานข้อมูล
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        // ตรวจสอบว่ามีข้อมูลหรือไม่
                        if (reader.HasRows)
                        {
                            // มีข้อมูล ทำการแจ้งเตือน
                            //Console.WriteLine("มีข้อมูลแล้ว ทำการแจ้งเตือน!");
                            lbltest.Text = "มีข้อมูลแล้ว!";
                        }
                        else
                        {
                            // ไม่มีข้อมูล
                            //Console.WriteLine("ไม่มีข้อมูลในฐานข้อมูล");
                            lbltest.Text = "ไม่มีข้อมูล!";
                        }
                    }
                }
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string query = "SELECT RO_CODE FROM Condo.dbo.ROOM WHERE RO_CODE = @RO_CODE";
            string constr = "cdcstr";
            string prm = txtRO_CODE.Text;
            MyConnectionString(query, constr,prm);
        }
    }
}