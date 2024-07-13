using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Security.Principal;
using System.Web;
using System.Web.Optimization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CD03
{
    public partial class Room : System.Web.UI.Page
    {
        string cdcstr = ConfigurationManager.ConnectionStrings["cdcstr"].ConnectionString;
        string queryedit = "UpdateRoom";
        
        string username = WindowsIdentity.GetCurrent().Name;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                BindingGrv();
                BindROStatusDropDown();
                //btnSave.Enabled = false;
                //btnDelete.Enabled = false;
                //btnEdit.Enabled = false;
                //btnCancel.Enabled = false;
                //EnableTextboxFalse();

            }
            else
            {


            }

        }

        private void BindingGrv()
        {
            string constr = ConfigurationManager.ConnectionStrings["cdcstr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandText = "GetRoom";
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        grv1.DataSource = dt;
                        grv1.DataBind();

                    }
                }
            }
        }

        protected void txtRO_CODE_TextChanged(object sender, EventArgs e)
        {
            string id = txtRO_CODE.Text;

            string constr = ConfigurationManager.ConnectionStrings["cdcstr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandText = "GetRoomById";
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@RO_CODE", id);
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        // ตรวจสอบว่า DataTable มีข้อมูลหรือไม่
                        if (dt.Rows.Count > 0)
                        {
                            // กำหนดค่าใน TextBox ด้วยข้อมูลจาก DataTable
                            ddlRO_OWNER.Text = dt.Rows[0]["RO_OWNER"].ToString();
                            txtRO_DEPT.Text = dt.Rows[0]["RO_DEPT"].ToString();
                            txtRO_FLOOR.Text = dt.Rows[0]["RO_FLOOR"].ToString();
                            txtRO_ROOM.Text = dt.Rows[0]["RO_ROOM"].ToString();
                            txtRO_HOMENO.Text = dt.Rows[0]["RO_HOMENO"].ToString();
                            txtRO_AREA.Text = dt.Rows[0]["RO_AREA"].ToString();
                            txtRO_RATIO.Text = dt.Rows[0]["RO_RATIO"].ToString();
                            txtRO_DATEIN.Text = dt.Rows[0]["RO_DATEIN"].ToString();
                            txtRO_MEA.Text = dt.Rows[0]["RO_MEA"].ToString();
                            txtRO_ELECNO.Text = dt.Rows[0]["RO_ELECNO"].ToString();

                            txtRO_CUST1.Text = dt.Rows[0]["RO_CUST1"].ToString();
                            txtRO_CUST2.Text = dt.Rows[0]["RO_CUST2"].ToString();
                            txtRO_CUST3.Text = dt.Rows[0]["RO_CUST3"].ToString();
                            txtRO_CUST4.Text = dt.Rows[0]["RO_CUST4"].ToString();
                            txtRO_LEASENO.Text = dt.Rows[0]["RO_LEASENO"].ToString();
                            ddlRO_STATUS.Text = dt.Rows[0]["RO_STATUS"].ToString();
                            ddlRO_RTYPE.Text = dt.Rows[0]["RO_RTYPE"].ToString();
                            txtRO_REMARK.Text = dt.Rows[0]["RO_REMARK"].ToString();
                            txtRO_DATEIN2.Text = dt.Rows[0]["RO_DATEIN2"].ToString();
                            lblEDIT_DATE.Text = dt.Rows[0]["EDIT_DATE"].ToString();
                            lblEDIT_BY.Text = dt.Rows[0]["EDIT_BY"].ToString();

                        }
                        else
                        {
                            // กรณีไม่พบข้อมูล
                            //ddlRO_OWNER.Text = "ไม่พบข้อมูล";
                            BindingGrv();
                        }
                    }
                }

            }


            btnAdd.Enabled = false;

            btnEdit.Enabled = true;
            btnDelete.Enabled = true;
            btnCancel.Enabled = true;
        }

        private void BindROStatusDropDown()
        {
            // Replace connection string with your actual database connection string
            string constr = ConfigurationManager.ConnectionStrings["cdcstr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                // Replace the query with your actual SQL query
                string query = "SELECT TOP (1000) [ST_CODE], [ST_NAME] FROM [Condo].[dbo].[CMM_RSTA]";
                string querytype = "SELECT TOP(1000) [RT_CODE], [RT_NAME], [RT_TITLE] FROM[Condo].[dbo].[CMM_RTYP]";
                string querycustomer = "GetCustomer";
                using (SqlCommand command = new SqlCommand(query, con))
                {
                    con.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    // Clear existing items (if any)
                    ddlRO_STATUS.Items.Clear();

                    // Add an empty item
                    ddlRO_STATUS.Items.Add(new ListItem("", ""));

                    while (reader.Read())
                    {
                        // Assuming [ST_CODE] is the value and [ST_NAME] is the text to display
                        string stCode = reader["ST_CODE"].ToString();
                        string stName = reader["ST_NAME"].ToString();

                        // Add items to the dropdown
                        ddlRO_STATUS.Items.Add(new ListItem(stName, stCode));
                    }

                    reader.Close();
                }
                using (SqlCommand cmd = new SqlCommand(querytype, con))
                {

                    SqlDataReader reader = cmd.ExecuteReader();
                    ddlRO_RTYPE.Items.Clear();
                    ddlRO_RTYPE.Items.Add(new ListItem("", ""));
                    while (reader.Read())
                    {
                        string rtcode = reader["RT_CODE"].ToString();
                        string rtname = reader["RT_NAME"].ToString();
                        ddlRO_RTYPE.Items.Add(new ListItem(rtname, rtcode));
                    }

                    reader.Close();
                }
                using (SqlCommand cmd = new SqlCommand(querycustomer, con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlDataReader reader = cmd.ExecuteReader();
                    ddlRO_OWNER.Items.Clear();
                    ddlRO_OWNER.Items.Add(new ListItem("", ""));
                    while (reader.Read())
                    {
                        string pecode = reader["PE_CODE"].ToString();
                        string pename = reader["PE_NAME"].ToString();
                        ddlRO_OWNER.Items.Add(new ListItem(pename, pecode));
                    }
                    reader.Close();
                }
            }
        }

        private void Isvalid()
        {
            if (txtRO_CODE == null)
            {
                string script = "alert('RO_CODE cannot be null or empty.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", script, true);
            }
        }

        private void Insert()
        {
            string strRO_CODE = txtRO_CODE.Text;
            string strRO_DEPT = txtRO_DEPT.Text;
            string strRO_FLOOR = txtRO_FLOOR.Text;
            string strRO_ROOM = txtRO_ROOM.Text;
            string strRO_HOMENO = txtRO_HOMENO.Text;
            string strRO_AREA = txtRO_AREA.Text;
            string strRO_RATIO = txtRO_RATIO.Text;
            string strRO_DATEIN = txtRO_DATEIN.Text;
            string strRO_MEA = txtRO_MEA.Text;
            string strRO_ELECNO = txtRO_ELECNO.Text;
            string strRO_OWNER = ddlRO_OWNER.Text;
            string strRO_CUST1 = txtRO_CUST1.Text;
            string strRO_CUST2 = txtRO_CUST2.Text;
            string strRO_CUST3 = txtRO_CUST3.Text;
            string strRO_CUST4 = txtRO_CUST4.Text;
            string strRO_LEASENO = txtRO_LEASENO.Text;
            string strRO_STATUS = ddlRO_STATUS.Text;
            string strRO_RTYPE = ddlRO_RTYPE.Text;
            string strRO_REMARK = txtRO_REMARK.Text;
            string strRO_DATEIN2 = txtRO_DATEIN2.Text;

            string strEDIT_BY = username;

            string constr = ConfigurationManager.ConnectionStrings["cdcstr"].ConnectionString;
            string query = "InsertRoom";
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("RO_CODE", strRO_CODE);
                    cmd.Parameters.AddWithValue("RO_DEPT", strRO_DEPT);
                    cmd.Parameters.AddWithValue("RO_FLOOR", strRO_FLOOR);
                    cmd.Parameters.AddWithValue("RO_ROOM", strRO_ROOM);
                    cmd.Parameters.AddWithValue("RO_HOMENO", strRO_HOMENO);
                    cmd.Parameters.AddWithValue("RO_AREA", strRO_AREA);
                    cmd.Parameters.AddWithValue("RO_RATIO", strRO_RATIO);
                    cmd.Parameters.AddWithValue("RO_DATEIN", strRO_DATEIN);
                    cmd.Parameters.AddWithValue("RO_MEA", strRO_MEA);
                    cmd.Parameters.AddWithValue("RO_ELECNO", strRO_ELECNO);
                    cmd.Parameters.AddWithValue("RO_OWNER", strRO_OWNER);
                    cmd.Parameters.AddWithValue("RO_CUST1", strRO_CUST1);
                    cmd.Parameters.AddWithValue("RO_CUST2", strRO_CUST2);
                    cmd.Parameters.AddWithValue("RO_CUST3", strRO_CUST3);
                    cmd.Parameters.AddWithValue("RO_CUST4", strRO_CUST4);
                    cmd.Parameters.AddWithValue("RO_LEASENO", strRO_LEASENO);
                    cmd.Parameters.AddWithValue("RO_STATUS", strRO_STATUS);
                    cmd.Parameters.AddWithValue("RO_RTYPE", strRO_RTYPE);
                    cmd.Parameters.AddWithValue("RO_REMARK", strRO_REMARK);
                    cmd.Parameters.AddWithValue("RO_DATEIN2", strRO_DATEIN2);
                    cmd.Parameters.AddWithValue("EDIT_BY", strEDIT_BY);
                    cmd.Parameters.AddWithValue("RO_FLAG", 1);

                    if (strRO_CODE == null || strRO_CODE == "")
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "NoData", "alert('ไม่ได้ใส่รหัสห้องใหม่');", true);
                    }
                    else
                    {
                        cmd.ExecuteNonQuery();
                    }

                    //Console.WriteLine("Data inserted successfully.");
                }
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            EnableTextboxTrue();
            ClearTextbox();
            btnAdd.Enabled = false;
            btnEdit.Enabled = false;
            btnDelete.Enabled = false;
            btnSave.Enabled = true;
            btnCancel.Enabled = true;
            txtRO_CODE.Focus();
            lblStatusMode.Text = "เพิ่มห้อง";
            lblStatusMode.CssClass = "text-primary";
            grv1.Enabled = false;
        }

        private void ClearTextbox()
        {
            txtRO_CODE.Text = "";
            txtRO_AREA.Text = "";
            txtRO_CUST1.Text = "";
            txtRO_CUST2.Text = "";
            txtRO_CUST3.Text = "";
            txtRO_CUST4.Text = "";
            txtRO_DATEIN.Text = "";
            txtRO_DATEIN2.Text = "";
            txtRO_DEPT.Text = "";
            txtRO_ELECNO.Text = "";
            txtRO_FLOOR.Text = "";
            txtRO_HOMENO.Text = "";
            txtRO_LEASENO.Text = "";
            txtRO_MEA.Text = "";
            txtRO_RATIO.Text = "";
            txtRO_REMARK.Text = "";
            txtRO_ROOM.Text = "";
            ddlRO_OWNER.Text = "";
            ddlRO_RTYPE.Text = "";
            ddlRO_STATUS.Text = "";
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (hdfEdit.Value == "true")
            {
                EditRoom(cdcstr, queryedit);
                hdfEdit.Value = "false";
            }
            else
            {
                string prm = txtRO_CODE.Text;
                string query = "SELECT RO_CODE FROM Condo.dbo.ROOM WHERE RO_CODE = @RO_CODE";
                string constr = "cdcstr";
                MyConnectionString(query, constr, prm);

                // Bind the GridView
                BindingGrv();
                btnSave.Enabled = false;
            }

        }       

        private void MyConnectionString(string query, string constr, string prm)
        {
            string conn = ConfigurationManager.ConnectionStrings[constr].ConnectionString;
            using (SqlConnection con = new SqlConnection(conn))
            {
                con.Open();
                using (SqlCommand cmd = con.CreateCommand())
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
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "duplicateAlert", "alert('มีข้อมูลห้องนี้อยู่แล้ว');", true);
                        }
                        else
                        {

                            Insert();
                            btnAdd.Enabled = true;
                            btnEdit.Enabled = true;
                            btnDelete.Enabled = true;
                            lblStatusMode.Text = "";
                            // ไม่มีข้อมูล
                            //Console.WriteLine("ไม่มีข้อมูลในฐานข้อมูล");
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "insertAlert", "alert('เพิ่มห้อง '" + prm + "' สำเร็จแล้ว');", true);
                        }
                    }
                }
            }
        }

        private void EditRoom(string constr, string query)
        {
            string strRO_CODE = txtRO_CODE.Text;
            string strRO_DEPT = txtRO_DEPT.Text;
            string strRO_FLOOR = txtRO_FLOOR.Text;
            string strRO_ROOM = txtRO_ROOM.Text;
            string strRO_HOMENO = txtRO_HOMENO.Text;
            string strRO_AREA = txtRO_AREA.Text;
            string strRO_RATIO = txtRO_RATIO.Text;
            string strRO_DATEIN = txtRO_DATEIN.Text;
            string strRO_MEA = txtRO_MEA.Text;
            string strRO_ELECNO = txtRO_ELECNO.Text;
            string strRO_OWNER = ddlRO_OWNER.Text;
            string strRO_CUST1 = txtRO_CUST1.Text;
            string strRO_CUST2 = txtRO_CUST2.Text;
            string strRO_CUST3 = txtRO_CUST3.Text;
            string strRO_CUST4 = txtRO_CUST4.Text;
            string strRO_LEASENO = txtRO_LEASENO.Text;
            string strRO_STATUS = ddlRO_STATUS.Text;
            string strRO_RTYPE = ddlRO_RTYPE.Text;
            string strRO_REMARK = txtRO_REMARK.Text;
            string strRO_DATEIN2 = txtRO_DATEIN2.Text;

            string strEDIT_BY = username;

            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                using(SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandText = query;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("RO_CODE", strRO_CODE);
                    cmd.Parameters.AddWithValue("RO_DEPT", strRO_DEPT);
                    cmd.Parameters.AddWithValue("RO_FLOOR", strRO_FLOOR);
                    cmd.Parameters.AddWithValue("RO_ROOM", strRO_ROOM);
                    cmd.Parameters.AddWithValue("RO_HOMENO", strRO_HOMENO);
                    cmd.Parameters.AddWithValue("RO_AREA", strRO_AREA);
                    cmd.Parameters.AddWithValue("RO_RATIO", strRO_RATIO);
                    cmd.Parameters.AddWithValue("RO_DATEIN", strRO_DATEIN);
                    cmd.Parameters.AddWithValue("RO_MEA", strRO_MEA);
                    cmd.Parameters.AddWithValue("RO_ELECNO", strRO_ELECNO);
                    cmd.Parameters.AddWithValue("RO_OWNER", strRO_OWNER);
                    cmd.Parameters.AddWithValue("RO_CUST1", strRO_CUST1);
                    cmd.Parameters.AddWithValue("RO_CUST2", strRO_CUST2);
                    cmd.Parameters.AddWithValue("RO_CUST3", strRO_CUST3);
                    cmd.Parameters.AddWithValue("RO_CUST4", strRO_CUST4);
                    cmd.Parameters.AddWithValue("RO_LEASENO", strRO_LEASENO);
                    cmd.Parameters.AddWithValue("RO_STATUS", strRO_STATUS);
                    cmd.Parameters.AddWithValue("RO_RTYPE", strRO_RTYPE);
                    cmd.Parameters.AddWithValue("RO_REMARK", strRO_REMARK);
                    cmd.Parameters.AddWithValue("RO_DATEIN2", strRO_DATEIN2);
                    cmd.Parameters.AddWithValue("EDIT_BY", strEDIT_BY);
                    //cmd.Parameters.AddWithValue("RO_FLAG", 1);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

            btnAdd.Enabled = true;
            btnEdit.Enabled = true;
            btnDelete.Enabled = true;
            txtRO_CODE.Enabled = true;
            btnSave.Enabled = false;
            btnDelete.Enabled = false;
            btnCancel.Enabled = false;
            lblStatusMode.Text = "";

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            hdfEdit.Value = "true";
            if (txtRO_CODE.Text == "")
            {
                string script = "alert('ท่านยังไม่ได้เลือกห้องที่จะแก้ไข');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", script, true);
                hdfEdit.Value = "false";
            }
            else
            {
                txtRO_CODE.Enabled = false;
                btnAdd.Enabled = false;
                btnDelete.Enabled = false;
                btnSave.Enabled = true;
                btnDelete.Enabled = true;
                txtRO_DEPT.Focus();
                btnCancel.Enabled = true;
                btnEdit.Enabled = false;
                lblStatusMode.Text = "แก้ไขข้อมูล";
                lblStatusMode.CssClass = "text-info";
               
                
            }

        }

        private void EnableTextboxTrue()
        {
            txtRO_CODE.Enabled = true;
            txtRO_AREA.Enabled = true;
            txtRO_CUST1.Enabled = true;
            txtRO_CUST2.Enabled = true;
            txtRO_CUST3.Enabled = true;
            txtRO_CUST4.Enabled = true;
            txtRO_DATEIN.Enabled = true;
            txtRO_DATEIN2.Enabled = true;
            txtRO_DEPT.Enabled = true;
            txtRO_ELECNO.Enabled = true;
            txtRO_FLOOR.Enabled = true;
            txtRO_HOMENO.Enabled = true;
            txtRO_LEASENO.Enabled = true;
            txtRO_MEA.Enabled = true;
            txtRO_RATIO.Enabled = true;
            txtRO_REMARK.Enabled = true;
            txtRO_ROOM.Enabled = true;
            ddlRO_OWNER.Enabled = true;
            ddlRO_RTYPE.Enabled = true;
            ddlRO_STATUS.Enabled = true;
        }

        private void EnableTextboxFalse()
        {
            txtRO_CODE.Enabled = false;
            txtRO_AREA.Enabled = false;
            txtRO_CUST1.Enabled = false;
            txtRO_CUST2.Enabled = false;
            txtRO_CUST3.Enabled = false;
            txtRO_CUST4.Enabled = false;
            txtRO_DATEIN.Enabled = false;
            txtRO_DATEIN2.Enabled = false;
            txtRO_DEPT.Enabled = false;
            txtRO_ELECNO.Enabled = false;
            txtRO_FLOOR.Enabled = false;
            txtRO_HOMENO.Enabled = false;
            txtRO_LEASENO.Enabled = false;
            txtRO_MEA.Enabled = false;
            txtRO_RATIO.Enabled = false;
            txtRO_REMARK.Enabled = false;
            txtRO_ROOM.Enabled = false;
            ddlRO_OWNER.Enabled = false;
            ddlRO_RTYPE.Enabled = false;
            ddlRO_STATUS.Enabled = false;
        }

        //เมื่อเปลี่ยนหน้าใน gridview
        protected void grv1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            // Handle the PageIndexChanging event here
            grv1.PageIndex = e.NewPageIndex;
            // Call a method to bind the data again to the GridView with the updated page index
            BindingGrv(); // You need to replace this with the actual method to bind your data
        }
    }
}




