<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prac_2a.aspx.cs" Inherits="prac_2a.prac_2a" %>

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
        <asp:Button ID="Button1" runat="server" Text="Box And Unbox" OnClick="Button1_Click" />

        <br />

        <p>
            <asp:Label ID="l2" runat="server"></asp:Label>
        </p>
        <asp:Label ID="l3" runat="server"></asp:Label>
    </form>
</body>
</html>
