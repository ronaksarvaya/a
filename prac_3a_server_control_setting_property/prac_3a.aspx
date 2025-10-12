<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prac_3a.aspx.cs" Inherits="prac_3a.prac_3a" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ListBox ID="ListBox" runat="server" Width="253px">
            <asp:ListItem Value="C++"></asp:ListItem>
            <asp:ListItem Value="Python"></asp:ListItem>
            <asp:ListItem Value="Java"></asp:ListItem>
            <asp:ListItem Value="C#"></asp:ListItem>
            <asp:ListItem Value="Android"></asp:ListItem>
        </asp:ListBox>

        <asp:Image ID="Image1" runat="server" Height="139px" ImageUrl="~/img.png" style="0px" Width="171px" />

        <p>
            <asp:Button ID="Button" runat="server" Text="Print" OnClick="Button_Click" />
        </p>

        <asp:DropDownList ID="dd1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dd1_SelectedIndexChanged">
            <asp:ListItem Value="10"></asp:ListItem>
            <asp:ListItem Value="20"></asp:ListItem>
            <asp:ListItem Value="30"></asp:ListItem>
            <asp:ListItem Value="40"></asp:ListItem>
            <asp:ListItem Value="50"></asp:ListItem>
        </asp:DropDownList>

        <p>
            <asp:TextBox ID="t1" runat="server"></asp:TextBox>
        </p>

        <p>
            <asp:Label ID="l1" runat="server" Text="Hari-Har"></asp:Label>
        </p>

        <p>
            <asp:CheckBox ID="c1" runat="server" AutoPostBack="True" OnCheckedChanged="c1_CheckedChanged" Text="Bold" />

            <asp:RadioButton ID="r1" runat="server" AutoPostBack="True" GroupName="a" Text="Red" OnCheckedChanged="r1_CheckedChanged" />

            <asp:RadioButton ID="r4" runat="server" AutoPostBack="True" GroupName="a" Text="Yellow" OnCheckedChanged="r4_CheckedChanged" />
        </p>

        <p>
            <asp:CheckBox ID="c2" runat="server" AutoPostBack="True" Text="Italic" OnCheckedChanged="c2_CheckedChanged"/>

            <asp:RadioButton ID="r2" runat="server" AutoPostBack="True" GroupName="a" Text="Blue" OnCheckedChanged="r2_CheckedChanged" />
        </p>

        <p>
            <asp:CheckBox ID="c3" runat="server" AutoPostBack="true" Text="Underline" OnCheckedChanged="c3_CheckedChanged" />

            <asp:RadioButton ID="r3" runat="server" AutoPostBack="True" GroupName="a" Text="Green" OnCheckedChanged="r3_CheckedChanged" />
        </p>

    </form>
</body>
</html>
