using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CD01
{
    public partial class Company : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCompany();
                BindGrvRoom();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchKeyword = txtSearch.Text;
            SearchCompany(searchKeyword);
        }

        private void SearchCompany(string keyword)
        {
            string conn = ConfigurationManager.ConnectionStrings["DFConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(conn))
            using (SqlCommand cmd = new SqlCommand("SearchCompany", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Keyword", keyword); // เพิ่มพารามิเตอร์สำหรับคำค้นหา

                con.Open();
                DataTable dt = new DataTable();

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    dt.Load(reader);
                }

                //ddlCompany.DataSource = dt;
                //ddlCompany.DataTextField = "CustomerName";
                //ddlCompany.DataValueField = "CustomerName";
                //ddlCompany.DataBind();

                lbxCompany.DataSource = dt;
                lbxCompany.DataTextField = "CustomerName";
                lbxCompany.DataValueField = "CustomerName";
                lbxCompany.DataBind();



            }
        }

        private void GetCompany()
        {
            string conn = ConfigurationManager.ConnectionStrings["DFConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(conn))

            using (SqlCommand cmd = new SqlCommand("GetCompany", con))
            {                
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                DataTable dt = new DataTable();

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    dt.Load(reader);
                }

                lbxCompany.DataSource = dt;
                lbxCompany.DataTextField = "CustomerName";
                lbxCompany.DataValueField = "CustomerName";
                lbxCompany.DataBind();
            }
        }

       private void BindGrvRoom()
        {
            string conn = ConfigurationManager.ConnectionStrings["DFConnection"].ConnectionString;
            using (SqlConnection sqlcon = new SqlConnection(conn))
            {
                using(SqlCommand cmd = new SqlCommand("SELECT * FROM dbo.CMM_ROOM", sqlcon))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        grvRoom.DataSource = dt;
                        grvRoom.DataBind();
                    }

                }
            }
        }

        protected void grvRoom_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvRoom.PageIndex = e.NewPageIndex;
            BindGrvRoom();
        }
    }
}