<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="prac_3b_2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <p id="l1">
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>

        <br />

        <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>

        <br /><br />

        <asp:Button ID="Button1" runat="server" Text="Button" Width="100px" OnClick="Button1_Click" />

        <br /><br />

        <asp:Label ID="l1" runat="server"></asp:Label>
    </p>

</asp:Content>
