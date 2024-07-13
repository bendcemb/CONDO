using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace CD04
{
    public partial class Index : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["cdcstr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
        }

        
    }
}