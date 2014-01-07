<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateNewQuestion.aspx.cs" Inherits="CreateNewQuestion" %>
<%@ Register TagPrefix="uc" TagName="MyControls" Src="~/MyTemplate.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
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
                    <div class="content_questionpanel">
                        <div class="panel-titlebar">
                            <span class="login-form-header">Create Question</span>
                        </div>

                        <div class="panel-main-content">
                            <asp:Label ID="Label1" runat="server" Text="Question:" CssClass="panel-label-title-of-textbox" />
                            <br />
                            <asp:TextBox ID="txtQuestionContent" runat="server" CssClass="panel-input"  Width="97%" TextMode="MultiLine" Height="50px" />
                            <br />

                            <div>
                                <asp:Label runat="server" Text="Fail check"></asp:Label>
                            </div>

                            <div>
                                <asp:Label runat="server" Text="Right check"></asp:Label>
                            </div>

                            <div class="panel-add-answer">
                                
                                <asp:CheckBox ID="cbxIsRight" runat="server" CssClass="panel-input-check" Text=" " />
                                <asp:TextBox ID="tbxAnswer" runat="server" CssClass="panel-input"  Width="66%" Height="30px" />
                                <asp:ImageButton ID="btnAddAnswer" runat="server" ImageUrl=""  />
                            </div>

                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <asp:Button ID="btnSubmit" runat="server" Text="Login" Width="70" Height="30"/>
                            <br />
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

        </div>
    </form>
</body>
</html>

