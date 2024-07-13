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
        string strconn = ConfigurationManager.ConnectionStrings["cnstrcondo"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindingGrv();
            }
        }

        private void BindingGrv()
        {
            string strtype = rbltype.Text;
            string strzone = rblzone.Text;
            try
            {
                using (SqlConnection con = new SqlConnection(strconn))
                {
                    con.Open();
                    string strquery = @"SELECT TOP (1000) [type],
                                       [location_name],
                                       [company_name],
                                       [zone],
                                       [province],
                                       [distric],
                                       [address],
                                       [year],
                                       [register_date],
                                       [reg_date_en],
                                       [register_year],
                                       [Remark]
                            FROM [Condo].[dbo].[Juristicperson]
                            WHERE type = @type AND zone = @zone";

                    using (SqlCommand cmd = new SqlCommand(strquery, con))
                    {
                        // Assuming strtype is defined and holds the desired value
                        cmd.Parameters.Add("@type", SqlDbType.VarChar).Value = strtype;
                        cmd.Parameters.Add("@zone", SqlDbType.VarChar).Value = strzone;

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
            catch (Exception ex)
            {
                // Handle exception (e.g., log the error, show a message to the user)
                // For example, logging can be done using a logging framework like log4net or NLog
                // Show a friendly error message to the user
                Response.Write("An error occurred: " + ex.Message);
            }


        }

        protected void grv1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grv1.PageIndex = e.NewPageIndex;
            BindingGrv();
        }

        protected void grv1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow row = grv1.SelectedRow;
        }

        protected void rbltype_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Get the selected value
            string selectedValue = rbltype.SelectedValue;

            // Handle the selection
            switch (selectedValue)
            {
                case "C":
                    // Code to handle Condo selection
                    lblSelectedData.Text = "Condo";
                    Response.Write("Condo selected");
                    break;
                case "V":
                    // Code to handle Village selection
                    lblSelectedData.Text = "Village";
                    Response.Write("Village selected");
                    break;
                default:
                    // Code to handle unexpected value
                    Response.Write("Unknown selection");
                    break;
            }

            BindingGrv();
        }

        protected void rblzone_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Get the selected value
            string selectedValue = rbltype.SelectedValue;

            // Handle the selection
            switch (selectedValue)
            {
                case "C":
                    // Code to handle Condo selection
                    lblSelectedData.Text = "Condo";
                    Response.Write("Condo selected");
                    break;
                case "V":
                    // Code to handle Village selection
                    lblSelectedData.Text = "Village";
                    Response.Write("Village selected");
                    break;
                default:
                    // Code to handle unexpected value
                    Response.Write("Unknown selection");
                    break;
            }
            BindingGrv();
        }
    }
}