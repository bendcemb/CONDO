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
            if (!IsPostBack)
            {
                BindingGrv1();
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

    }
}