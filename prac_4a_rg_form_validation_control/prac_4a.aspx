<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prac_4a.aspx.cs" Inherits="prac_4a.prac_4a" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="l1" runat="server" Text="Name: "></asp:Label>
        <asp:TextBox ID="name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Can't apply, name is compulsory.">*</asp:RequiredFieldValidator>

        <br />

        <asp:Label ID="Label1" runat="server" Text="Age"></asp:Label>
        <asp:TextBox ID="age" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="age" ErrorMessage="Age should not be less than 5 & greater than 50." MaximumValue ="50" MinimumValue="5" Type="Integer"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="age" ErrorMessage="Required age">*</asp:RequiredFieldValidator>

        <br />

        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="pswrd" runat="server" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="confirm" ControlToValidate="pswrd" ErrorMessage="Password incorrect"></asp:CompareValidator>

        <br />

        <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
        <asp:TextBox ID="confirm" runat="server" TextMode="Password"></asp:TextBox>

        <br />

        <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="email" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Invalid email" ValidationExpression="\w+([-\+.'']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>

        <br />

        <asp:Label ID="Label5" runat="server" Text="Phone no."></asp:Label>
        <asp:TextBox ID="phone" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="phone" ErrorMessage="Phone no. should be 10 digit" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>

        <p>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </p>

        <asp:Label ID="l2" runat="server" ></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

    </form>
</body>
</html>
