<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="prac_7.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="t1" runat="server" Text="Username: "></asp:Label>

        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        <br />
        <br />

        <asp:Label ID="t2" runat="server" Text="Password: "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

        <br />
        <br />

        <asp:CheckBox ID="c1" runat="server" Text="Remember me" />

        <br />
        <br />

        <asp:Button ID="b1" runat="server" Text="Login" OnClick="b1_Click" />
    </form>
</body>
</html>
