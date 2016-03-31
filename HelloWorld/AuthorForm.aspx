<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AuthorForm.aspx.cs" Inherits="AuthorForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 168px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Author Data</h1>
        <p><table style="height: 100px; width: 492px;">
        <tr>
        <td class="style1">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="186px"></asp:TextBox></td></tr>
        <tr>
        <td class="style1">
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="184px"></asp:TextBox>
            </td></tr>
        <tr>
        <td class="style1">
            &nbsp;</td>
            <td>
                &nbsp;</td></tr>
        </table></p>
    </div>
    </form>
</body>
</html>
