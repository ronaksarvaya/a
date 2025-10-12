<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prac_1a.aspx.cs" Inherits="pract_1a.prac_1a" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="l1" runat="server" Text="Enter 1st Number: "></asp:Label>
        <asp:TextBox ID="t1" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="l2" runat="server" Text="Enter 2nd Number: "></asp:Label>
            <asp:TextBox ID="t2" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        <p>
            <asp:Label ID="l3" runat="server" ></asp:Label>
        </p>
        <asp:Label ID="l4" runat="server"></asp:Label>

        <p>
            <asp:Label ID="l5" runat="server" ></asp:Label>
        </p>
        <asp:Label ID="l6" runat="server"></asp:Label>
    </form>
</body>
</html>
