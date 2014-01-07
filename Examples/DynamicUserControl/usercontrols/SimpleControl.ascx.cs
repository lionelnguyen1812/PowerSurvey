using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Create Delegate to Handle Click event in Default page
public delegate void btnPost_Click(object sender, System.EventArgs e);

public partial class usercontrols_SimpleControl : System.Web.UI.UserControl
{
    #region Public Event

    public event btnPost_Click btnPostClk;

    #endregion

    #region Public Properties

    public TextBox FirstName
    {
        get
        {
            return txtFirstName;
        }
        set
        {
            txtFirstName = value;
        }
    }

    public TextBox LastName
    {
        get
        {
            return txtLastName;
        }
        set
        {
            txtLastName = value;
        }
    }
    #endregion

    #region Vitual Methods

    protected virtual void OnbtnDelQtnMrClk(EventArgs e)
    {
        // Call btnPost_Click event delegate instance
        btnPostClk(this, e);
    }

    #endregion

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnPost_Click(object sender, EventArgs e)
    {
        //Call Virtual Method
        OnbtnDelQtnMrClk(e);
    }
}
