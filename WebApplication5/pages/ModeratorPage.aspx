<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModeratorPage.aspx.cs" Inherits="WebApplication5.pages.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../css/AdminPage.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            current requests:<br />
            <br />
        </div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="175px" Width="428px" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
            <Columns>
                <asp:BoundField HeaderText="Event Name" />
                <asp:BoundField HeaderText="Host" />
                <asp:BoundField HeaderText="Event page" />
                <asp:CheckBoxField HeaderText="Rejected" />
                <asp:BoundField HeaderText="Reason" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
