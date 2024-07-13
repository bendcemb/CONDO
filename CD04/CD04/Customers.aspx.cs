using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CD04
{
    public partial class Customers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindingLiv();
            }
        }

        private void BindingLiv()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["cdcstr"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string spquery = "GetCustomer";
                using (SqlDataAdapter adapter = new SqlDataAdapter(spquery, connection))
                {
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    liv1.DataSource = dataTable;
                    liv1.DataBind();
                }
            }
        }
    }
}