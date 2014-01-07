<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateNewQuestion.aspx.cs" Inherits="CreateNewQuestion" %>


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
                            <asp:TextBox ID="txtQuestionContent" runat="server" CssClass="panel-input" Width="97%" TextMode="MultiLine" Height="50px" />
                            <br />

                            <div>
                                <asp:ListView ID="lvAnswer" runat="server" ItemPlaceholderID="itemAnswer" DataSourceID="sqlGetContentAnswers">
                                    <LayoutTemplate>
                                        <table>
                                            <tbody>
                                                <asp:PlaceHolder ID="itemAnswer" runat="server"></asp:PlaceHolder>
                                            </tbody>
                                        </table>
                                    </LayoutTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <%# Eval("ChoiseContent") %>
                                            </td>
                                            <td>
                                                <%# Eval("ChoiseIsRight") %>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:ListView>
                            </div>
                            <asp:SqlDataSource ID="sqlGetContentAnswers" runat="server" ConnectionString="<%$ ConnectionStrings:panzunPowerSurver %>" SelectCommand="SELECT [ChoiseContent], [ChoiseIsRight] FROM [Choice]"></asp:SqlDataSource>

                            <div>
                                <asp:Label runat="server" Text="Fail Answer" ForeColor="red"></asp:Label>
                            </div>

                            <div>
                                <asp:Label runat="server" Text="True Answer" ForeColor="Green"></asp:Label>
                            </div>

                            <div class="panel-add-answer">
                                <asp:CheckBox ID="cbxIsRight" runat="server" CssClass="panel-input-check" />
                                <input type="text" placeholder="Add Answer" id="tbxAnswer" class="panel-input" runat="server" />
                                <asp:ImageButton ID="btnAddAnswer" runat="server" CssClass="panel-input-btn" ImageUrl="~/btn_add_1.png" OnClick="btnAddAnswer_Click" />

                            </div>


                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="70" Height="30" />
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

