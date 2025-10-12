<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prac_2b.aspx.cs" Inherits="prac_2b.prac_2b" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="l1" runat="server" Text="Enter 1st number: "></asp:Label>
            <asp:TextBox ID="t1" runat="server"></asp:TextBox>
        </p>

        <p>
            <asp:Label ID="l2" runat="server" Text="Enter 2nd number: "></asp:Label>
            <asp:TextBox ID="t2" runat="server"></asp:TextBox>
        </p>
        <br />

        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

        <p>
            <asp:Label ID="l3" runat="server"></asp:Label>
            <br /><br />
            <asp:Label ID="l4" runat="server"></asp:Label>
        </p>

    </form>
</body>
</html>
