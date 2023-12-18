<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication5.pages.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" >
        <div>
            LOGIN<br />
            <br />
            <asp:TextBox ID="Username" runat="server"></asp:TextBox>
        &nbsp;usename</div>
        <p>
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
            email</p>
        <p>
            <asp:TextBox ID="Password" runat="server"></asp:TextBox>
            password</p>
        <p>
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>admin</asp:ListItem>
                <asp:ListItem>moderator</asp:ListItem>
                <asp:ListItem>user</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="login" />
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="yes"></asp:Label>
        </p>
    </form>
</body>
</html>
