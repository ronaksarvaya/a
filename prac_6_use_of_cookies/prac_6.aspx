<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prac_6.aspx.cs" Inherits="prac_6.prac_6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>

        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Select Programming Language"></asp:Label>

        <p>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Java"/><br />

            <asp:CheckBox ID="CheckBox2" runat="server" Text="Python"/><br />

            <asp:CheckBox ID="CheckBox3" runat="server" Text="C++" /><br />
        </p>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        <br />
        <br />

        <asp:Label ID="Label3" runat="server"></asp:Label>
    </form>
</body>
</html>
