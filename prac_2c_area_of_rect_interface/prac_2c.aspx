<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prac_2c.aspx.cs" Inherits="prac_2c.prac_2c" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="l1" runat="server" Text="<h1> Area Of rectangle </h1>"></asp:Label>

        <p>
            <asp:Label ID="l2" runat="server" Text="Enter length of rectangle: "></asp:Label>
            <asp:TextBox ID="t1" runat="server"></asp:TextBox>
        </p>

        <p>
            <asp:Label ID="l3" runat="server" Text="Enter breadth of rectangle: "></asp:Label>
            <asp:TextBox ID="t2" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" Text="Calculate" OnClick="Button1_Click" />

        <p>
            <asp:Label ID="l4" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
