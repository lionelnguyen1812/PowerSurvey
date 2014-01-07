<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SimpleControl.ascx.cs" Inherits="usercontrols_SimpleControl" %>
<table>
    <tr>
        <td><asp:Label ID="label1" runat="server" Text="First Name" ></asp:Label></td>
        <td> <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
    </tr>
     <tr>
        <td><asp:Label ID="label2" runat="server" Text="Last Name" ></asp:Label></td>
        <td> <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Button ID="btnPost"  runat="server" Text="Send Info" OnClick="btnPost_Click" />
        </td>
    </tr>

</table>