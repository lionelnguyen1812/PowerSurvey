using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string userName = txtUsername.Text;
        string password = txtPassword.Text;

        
        UserBusiness ub = new UserBusiness();
        if (ub.Auth(userName, password))
        {
            Application["Username"] = txtUsername.Text;
            Response.Redirect("CreateNewQuestion.aspx");

        }
        else {
            Response.Write(txtPassword.Text);
        }
    }
}