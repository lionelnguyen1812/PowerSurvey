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


            <div class="header" title="">
                <div class="header_container page_div">

                    <div class="logo_outer">
                        <span class="logo_inner">Survey</span>
                        <span class="header_link">
                            
                            <asp:LinkButton ID="LinkButton5" runat="server" Font-Underline="False" ForeColor="Black">Explore</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton6" runat="server" Font-Underline="False" ForeColor="Black">Features</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton7" runat="server" Font-Underline="False" ForeColor="Black">Enterprise</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton8" runat="server" Font-Underline="False" ForeColor="Black">Blog</asp:LinkButton>
                        </span>
                    </div>



                    <div class="button_header">
                        <asp:ImageButton ID="btnSignin" runat="server" Text="Sign in" Width="70" Height="30" ImageUrl="~/Capture1.PNG" />

                    </div>

                    <div class="button_header">
                        <asp:ImageButton ID="btnSignup" runat="server" Text="Sign Up" Width="70" Height="30" ImageUrl="~/Capture.PNG" />
                    </div>
                </div>
            </div>



            <div class="content_ page_div">
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

                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnLogin" runat="server" Text="Login" Width="70" Height="30" OnClick="btnLogin_Click" />

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
