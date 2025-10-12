<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prac_1b.aspx.cs" Inherits="prac_1b.prac_1b" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="l1" runat="server" Text="Enter a Number: "></asp:Label>
            <asp:TextBox ID="t1" runat="server"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Fibonacci Series" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Prime No" OnClick="Button2_Click" />
        <br /><br />
        <p>
            <asp:Label ID="l2" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
