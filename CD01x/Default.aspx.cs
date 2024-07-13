using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CD01
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // เช็ค session ว่ามีค่าหรือไม่
            if (Session["Username"] == null)
            {
                // ถ้าไม่มี session แสดงว่ายังไม่ได้ล็อกอิน
                Response.Redirect("Login.aspx");
            }
        }
    }
}