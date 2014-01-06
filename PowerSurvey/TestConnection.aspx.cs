using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class TestConnection : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["panzunPowerSurver"].ConnectionString);
            Response.Write("Connected!");
        }
        catch (Exception ex){
            Response.Write("Connection faild!!!");
        }
    }
}