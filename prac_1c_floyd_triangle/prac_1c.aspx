<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prac_1c.aspx.cs" Inherits="prac_1c.prac_1c" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="l1" runat="server" Text="Enter number of rows: "></asp:Label>

        <asp:TextBox ID="t1" runat="server"></asp:TextBox>
        <br />

        <p>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </p>

        <br />
        <asp:Label ID="l2" runat="server"></asp:Label>
    </form>
</body>
</html>
