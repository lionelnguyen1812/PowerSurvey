<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Super Survey</title>
    <link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
    <form id="frmLogin" runat="server">


        <div class="main">
            <div class="topbar" title="">
                <div class="header-container">

                    <div class="header-logo">
                        <span class="header-logo-title">Survey</span>
                    </div>

                    <div class="header-command-bar">
                        <asp:LinkButton ID="LinkButton5" runat="server" CssClass="header-topnav-element">Explore</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton6" runat="server" CssClass="header-topnav-element">Features</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton7" runat="server" CssClass="header-topnav-element">Enterprise</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton8" runat="server" CssClass="header-topnav-element">Blog</asp:LinkButton>
                    </div>

                    <div class="header-action">
                        <asp:ImageButton CssClass="header-action-button" ID="btnSignin" CausesValidation="false" runat="server" Text="Sign in" Width="70" Height="30" ImageUrl="~/Capture1.PNG" />
                        <asp:ImageButton CssClass="header-action-button" ID="btnSignup" CausesValidation="false" runat="server" Text="Sign Up" Width="70" Height="30" ImageUrl="~/Capture.PNG" />
                    </div>

                </div>
            </div>



            <div class="content">
                <div class="content_loginpanel">
                    <div class="content_loginpanel1">
                        <span class="login-form-header">Sign in</span>
                    </div>

                    <div class="content_loginpanel2">
                        <br />

                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text="Username or email" Font-Bold="true" Font-Size="13.5px" ForeColor="#333333" />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtUsername" runat="server" Width="360" Height="30" />
                        <br />
                        <br />

                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="true" Font-Size="13.5px" ForeColor="#333333" />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="360" Height="30" />
                        <br />
                        <br />

                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUsername"
                            ErrorMessage="Please enter your username."
                            Display="None" />



                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnLogin" runat="server" Text="Login" Width="70" Height="30" OnClick="btnLogin_Click" />
                        <br />
                        <asp:ValidationSummary CssClass="validate_login" ID="valLogin" runat="server" ForeColor="Red" DisplayMode="List" />
                    </div>
                </div>

            </div>




            <div class="footer">
                <div>
                    <asp:Label ID="Label3" runat="server" Text="© 2013 Survey, Inc." ForeColor="#777777" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="false" ForeColor="#6583D7">Terms</asp:LinkButton>

                    &nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Underline="false" ForeColor="#6583D7">Privacy</asp:LinkButton>

                    &nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Underline="false" ForeColor="#6583D7">Sercurity</asp:LinkButton>

                    &nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Underline="false" ForeColor="#6583D7">Contact</asp:LinkButton>


                </div>
            </div>
        </div>



    </form>
</body>
</html>
