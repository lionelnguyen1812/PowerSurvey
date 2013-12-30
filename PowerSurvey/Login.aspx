﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Super Survey</title>
    <link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
    <form id="frmLogin" runat="server">

        <div class="main">


            <div class="header">
                <div class="header_container page_div">
                    <div class="logo_outer">
                        <span class="logo_inner">Survey</span>
                    </div>
                    <div class="button_header">
                        <asp:Button ID="btnSignin" runat="server" Text="Sign in" Width="70" Height="30" />

                    </div>
                    <div class="button_header">
                        <asp:Button ID="btnSignup" runat="server" Text="Sign up" Width="70" Height="30" BackColor="YellowGreen" BorderColor="YellowGreen" />
                    </div>
                </div>
            </div>



            <div class="content_ page_div">
                <div class="content_loginpanel">
                    <div class="content_loginpanel1">
                    </div>

                    <div class="content_loginpanel2">

                    </div>
                </div>
                
            </div>




            <div class="footer">
            </div>
        </div>



    </form>
</body>
</html>