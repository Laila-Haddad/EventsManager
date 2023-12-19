<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="WebApplication5.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
    <link rel="stylesheet" type="text/css" href="../css/AdminPage.css" />
</head>
<body>
    
      <div class="navbar">
    <asp:Label ID="adminDashboardLabel" runat="server" Text="Admin Dashboard" CssClass="admin-dashboard-heading"></asp:Label>
    </div>

    <form id="form1" runat="server">

        <div>
            <br />
            <asp:Label ID="emailLable" runat="server" Text="Email"></asp:Label>
            <br />
            <asp:TextBox ID="email" runat="server" OnTextChanged="email_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="usernameLabel" runat="server" Text="Username"></asp:Label>
            <br />
            <asp:TextBox ID="username" runat="server" OnTextChanged="username_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="passwordLabel" runat="server" Text="Password"></asp:Label>
            <br />
            <asp:TextBox ID="password" runat="server" OnTextChanged="password_TextChanged"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:DropDownList ID="role" runat="server">
                <asp:ListItem Selected="True">Admin</asp:ListItem>
                <asp:ListItem>Moderator</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="addbtn" runat="server" OnClick="addbtn_Click" Text="Add" />
            <br />
            <br />
            <br />
            <asp:Label ID="dataEntry" runat="server"></asp:Label>
        <p>
            &nbsp;</p>
            <p>
                <asp:Label ID="adminsLabel" runat="server" Text="Admins"></asp:Label>
            </p>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <br />
            <asp:Label ID="moderatorLabel" runat="server" Text="Moderators"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [email], [username] FROM [Moderators]"></asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [email], [username] FROM [Moderators]"></asp:SqlDataSource>
        </div>
        </div>
    </form>
</body>
</html>
