<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started
        Application.Lock();

        try
        {
            Application["SessionID"] = (int)Application["SessionID"] + 1;
        }
        catch (Exception ex)
        {
            Application["SessionID"] = 1;
        }
        Response.Cookies["SessionID"].Value = Application["SessionID"].ToString();
        Application.UnLock();
    }

    void Session_End(object sender, EventArgs e) 
    {
        Application.Lock();
        try
        {
            Application["Session"] = (int)Application["SessionID"] - 1;
        }
        catch (Exception ex)
        {
            Application["SessionID"] = 0;
        }
        
        Application.UnLock();
        

    }
       
</script>
