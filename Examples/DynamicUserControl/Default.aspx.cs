using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    // Declare 2 variable to handle user control after postback
    const string controlID = "MyUserControl";
    static bool createAgain = false;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAddControl_Click(object sender, EventArgs e)
    {
        // Create instance of the UserControl SimpleControl
        usercontrols_SimpleControl ucSimpleControl = LoadControl("~/usercontrols/SimpleControl.ascx") as usercontrols_SimpleControl;
        
        // Set the Public Properties
        ucSimpleControl.FirstName.Text = "Milind";
        ucSimpleControl.LastName.Text = "Chavan";

        //Create Event Handler for btnPost Click 
        ucSimpleControl.btnPostClk += new btnPost_Click(ucSimpleControl_btnPostClk);

        //Add the SimpleControl to Placeholder
        Placeholder1.Controls.Add(ucSimpleControl);

        // Add the instance of the SimpleControl to Session Variable
        Session.Add((Session.Count + 1).ToString(), ucSimpleControl);

        // Set createAgain = true
        createAgain = true;

    }

    void ucSimpleControl_btnPostClk(object sender, EventArgs e)
    {
        usercontrols_SimpleControl ucSimpleControl = ((usercontrols_SimpleControl)(sender));
        lblUser.Text = "Welcome " + ucSimpleControl.FirstName.Text + " " + ucSimpleControl.LastName.Text;
    }

    protected Control GetPostBackControl(Page page)
    {
        Control control = null;
        try
        {
            string ctrlName = page.Request.Params.Get("__EVENTTARGET");

            if (ctrlName != null && ctrlName != String.Empty)
            {
                control = page.FindControl(ctrlName);
            }
            else
            {
                ContentPlaceHolder cph = (ContentPlaceHolder)page.FindControl("Main");
                for (int i = 0, len = page.Request.Form.Count; i < len; i++)
                {
                    string[] ctl = page.Request.Form.AllKeys[i].Split('$');
                    if (ctl.Length > 2)
                    {
                        control = cph.FindControl(ctl[2]) as System.Web.UI.WebControls.Button;
                    }

                    if (control != null) break;
                }
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return control;
    }

    protected override void OnPreInit(EventArgs e)
    {
        base.OnPreInit(e);

        Control control = GetPostBackControl(this.Page);

        // Check if the postback is caused by the button 
        // Titled "Click to Create a Dynamic Control"
        // OR
        // createAgain field is true 
        // which means a call is made to the server while the 
        // user control is active  

        if ((control != null && control.ClientID == btnAddControl.ClientID) || createAgain)
        {
            //should be set before the CreateUserControl method
            createAgain = true;

            CreateUserControl(controlID);
        }
    }

    protected void CreateUserControl(string controlID)
    {
        // createAgain field is set to true in the OnPreInit method
        // when the 'Create User Control' button is clicked 

        // the createAgain field is used to check if the
        // user control is on the page before the call 
        // if so create the control again and add it to the
        // Control Hierarchy again
        try
        {
            if (createAgain && Placeholder1 != null)
            {
                if (Session.Count > 0)
                {
                    Placeholder1.Controls.Clear();
                    for (int i = 0; i < Session.Count; i++)
                    {
                        switch (Session[i].ToString())
                        {
                            case "ASP.usercontrols_simplecontrol_ascx":
                                {
                                    // Create instance of the UserControl SimpleControl
                                    usercontrols_SimpleControl ucSimpleControl = LoadControl("~/usercontrols/SimpleControl.ascx") as usercontrols_SimpleControl;

                                    // Set the Public Properties
                                    ucSimpleControl.FirstName.Text = ((usercontrols_SimpleControl)(Session[i])).FirstName.Text;
                                    ucSimpleControl.LastName.Text = ((usercontrols_SimpleControl)(Session[i])).LastName.Text;

                                    //Create Event Handler for btnPost Click 
                                    ucSimpleControl.btnPostClk += new btnPost_Click(ucSimpleControl_btnPostClk);

                                    //Add the SimpleControl to Placeholder
                                    Placeholder1.Controls.Add(ucSimpleControl);
                                    break;
                                }
                        }
                    }
                }
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}
