<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prac_3b_1.aspx.cs" Inherits="prac_3b_1.prac_3b_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <h2>Vacation Planner</h2>
            <h3>
                <asp:Label ID="l1" runat="server" Text="Select Date: "></asp:Label>
            </h3>

            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" OnDayRender="Calendar1_DayRender" >
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px"></DayHeaderStyle>

                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC"></NextPrevStyle>

                <OtherMonthDayStyle ForeColor="#CC9966"></OtherMonthDayStyle>

                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True"></SelectedDayStyle>

                <SelectorStyle BackColor="#FFCC66"></SelectorStyle>

                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC"></TitleStyle>

                <TodayDayStyle BackColor="#FFCC66" ForeColor="White"></TodayDayStyle>
            </asp:Calendar>

            <br /><br />

            <asp:Label ID="l2" runat="server" Text="Vacation Details: "></asp:Label>
            <asp:TextBox ID="t1" runat="server" TextMode="MultiLine"></asp:TextBox>

            <br /><br />

            <asp:Button ID="b1" runat="server" Text="Start Vacation" OnClick="b1_Click" />

            <br /><br />

            <asp:Label ID="result" runat="server"></asp:Label>

        </center>


    </form>
</body>
</html>
