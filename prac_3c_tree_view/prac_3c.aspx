<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prac_3c.aspx.cs" Inherits="prac_3c.prac_3c" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="XmlDataSource1" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">

           
            <NodeStyle 
                Font-Names="Verdana"
                Font-Size="8pt"
                ForeColor="Black"
                HorizontalPadding="5px"
                NodeSpacing="0px"
                VerticalPadding="0px"
            />

            <ParentNodeStyle Font-Bold="false" />

            <SelectedNodeStyle
                Font-Underline="true"
                ForeColor="#5555DD"
                HorizontalPadding="0px"
                VerticalPadding="0px" 
            />

        </asp:TreeView>

        <asp:XmlDataSource runat="server" ID="XmlDataSource1" DataFile="~/XMLFile1.xml"></asp:XmlDataSource>

        <asp:Label ID="l1" runat="server"></asp:Label>
    </form>
</body>
</html>
