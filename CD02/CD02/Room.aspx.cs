using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing.Printing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CD02
{
    public partial class Room : System.Web.UI.Page
    {
        string cnstr = ConfigurationManager.ConnectionStrings["cdcstr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            btnAddRoom.Attributes.Add("onclick", "openModal(); return false;");
            btnCreateCust.Attributes.Add("onclick", "openModalCust(); return false;");
            if (!IsPostBack)
            {
                BindingGrv1();
                BindingDropdownList();
            }
        }

        private void BindingGrv1()
        {
            using (SqlConnection conn = new SqlConnection(cnstr))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("GetRoom", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                grv1.DataSource = dt;
                grv1.DataBind();
            }
        }

        public void BindingDropdownList()
        {
            using(SqlConnection conn = new SqlConnection(cnstr))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("GetRoomType", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    ddlRO_RTYPE.DataSource = dt;
                    ddlRO_RTYPE.DataValueField = "RT_CODE";
                    ddlRO_RTYPE.DataTextField = "RT_NAME";
                    ddlRO_RTYPE.DataBind();
                }

                using (SqlCommand cmd = new SqlCommand("GetRoomStatus", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    ddlRO_STATUS.DataSource = dt;
                    ddlRO_STATUS.DataValueField = "ST_CODE";
                    ddlRO_STATUS.DataTextField = "ST_NAME";
                    ddlRO_STATUS.DataBind();
                }

                string query = "SELECT TOP (1000) [PE_CODE] ,[PE_TITLE] ,[PE_CODE] + ' ' +[PE_NAME] AS OWNER_NAME FROM [Condo].[dbo].[CMM_CUST]";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.CommandType = CommandType.Text;
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    ddlRO_OWNER.DataSource = dt;
                    ddlRO_OWNER.DataValueField = "PE_CODE";
                    ddlRO_OWNER.DataTextField = "OWNER_NAME";
                    ddlRO_OWNER.DataBind();
                }
            }
        }

        protected void btnSaveCust_Click(object sender, EventArgs e)
        {
            BindingGrv1();
            BindingDropdownList();
        }
    }
}