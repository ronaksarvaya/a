<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prac_4c.aspx.cs" Inherits="prac_4c.prac_4c" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" Height="200px" Width="200px" />

        <asp:XmlDataSource runat="server" ID="XmlDataSource1" DataFile="~/XMLFile1.xml"></asp:XmlDataSource>
    </form>
</body>
</html>
