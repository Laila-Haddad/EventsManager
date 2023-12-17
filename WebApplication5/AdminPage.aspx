<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="WebApplication5.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="username" runat="server"></asp:TextBox>
            <br />
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
        </div>
    </form>
</body>
</html>
