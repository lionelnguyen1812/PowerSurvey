<%@ ControlLanguage="C#" AutoEventWireup="true" CodeFile="MyTemplate.ascx.cs" Inherits="MyTemplate" %>

<style type="text/css">
    .mycheckBig input {
        width: 25px;
        height: 25px;
    }

    .mycheckSmall input {
        width: 10px;
        height: 10px;
    }
</style>


<%--<asp:EntityTemplate runat="server">
    <ItemTemplate>
        <asp:CheckBox ID="CheckBoxSmall" runat="server"  Checked=‘<%# Convert.ToBoolean(Eval("active")) %>‘ AutoPostBack="False" CssClass="mycheckSmall"  />
    </ItemTemplate>
</asp:EntityTemplate>--%>

<asp:EntityTemplate runat="server">
    <ItemTemplate>
        <asp:CheckBox ID="CheckBoxBig" runat="server"  Checked=‘<%# Convert.ToBoolean(Eval("active")) %>‘ AutoPostBack="False" CssClass="mycheckBig"  /> 
    </ItemTemplate>
</asp:EntityTemplate>

<%--<asp:TemplateField HeaderText="activeSmall">
    <itemtemplate>
        <asp:CheckBox ID="CheckBoxSmall" runat="server"  Checked=‘<%# Convert.ToBoolean(Eval("active")) %>‘ AutoPostBack="False" CssClass="mycheckSmall"  />
</itemtemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="activeBig">
    <itemtemplate> <asp:CheckBox ID="CheckBoxBig" runat="server"  Checked=‘<%# Convert.ToBoolean(Eval("active")) %>‘ AutoPostBack="False" CssClass="mycheckBig"  />
</itemtemplate>
</asp:TemplateField>--%>