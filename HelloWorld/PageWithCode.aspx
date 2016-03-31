<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        myLabel.Text = "Value set at server";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Page with Code</h1>
        <p>
            <asp:Label ID="myLabel" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                Text="Click Me" />
        </p>
    </div>
    </form>
</body>
</html>
