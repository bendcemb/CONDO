using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CD04
{
    public partial class Room : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["cdcstr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                ddlRO_OWNER.Items.Insert(0, new ListItem("-- เลือกเจ้าของ --", ""));
                // ทำให้ GridView สามารถเก็บข้อมูลการเลือกได้
                grv1.AutoGenerateSelectButton = true;
                grv1.DataBind();

                BindingGrv();
                
            }
        }

        private void BindingGrv()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    con.Open();
                    using (SqlCommand cmd = con.CreateCommand())
                    {
                        cmd.CommandText = "GetRoom";
                        cmd.CommandType = CommandType.StoredProcedure;
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            da.Fill(dt);
                            grv1.DataSource = dt;
                            grv1.DataBind();

                            liv1.DataSource = dt;
                            liv1.DataBind();

                           
                        }
                    }

                    using (SqlCommand cmd = con.CreateCommand())
                    {
                        cmd.CommandText = "GetCustomer";
                        cmd.CommandType = CommandType.StoredProcedure;
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            da.Fill(dt);
                           
                            ddlRO_OWNER.DataSource = dt;
                            ddlRO_OWNER.DataTextField = "PE_NAME";
                            ddlRO_OWNER.DataValueField = "PE_NAME";
                            ddlRO_OWNER.DataBind();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions (log, display an error message, etc.)
                Console.WriteLine("An error occurred: " + ex.Message);
            }
        }
      
        protected void grv1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // เพิ่ม JavaScript เพื่อทำให้แถวใน GridView สามารถเลือกได้
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(grv1, "Select$" + e.Row.RowIndex);
                e.Row.Attributes["style"] = "cursor:pointer";
            }
        }

        protected void grv1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
            // เมื่อมีการเลือกแถวใน GridView
            // คุณสามารถเข้าถึงข้อมูลของแถวที่ถูกเลือกได้
            int selectedRowIndex = grv1.SelectedIndex;
            string columnAValue = grv1.SelectedRow.Cells[0].Text; // แสดงข้อมูลจากคอลัมน์ที่ 0
            string columnBValue = grv1.SelectedRow.Cells[1].Text; // แสดงข้อมูลจากคอลัมน์ที่ 1

            // ทำอะไรกับข้อมูลที่ได้รับ
            // ตัวอย่างเช่น: แสดงใน MessageBox หรือทำการ Redirect
            Response.Write($"Selected Row: {selectedRowIndex}, Column A: {columnAValue}, Column รหัสห้อง: {columnBValue}");
        }
    }
}