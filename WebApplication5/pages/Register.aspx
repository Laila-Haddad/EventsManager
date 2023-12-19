<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link rel="stylesheet" type="text/css" href="../css/RegisterPage.css" />
</head>
<body>
    <div class="background-container">
    <form id="form1" runat="server">
<div class="form-section input-section">
            <h1>Register Now!</h1>
            <div class="form-group">
                <asp:Label ID="UsernameLabel" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="userName" runat="server" OnTextChanged="userName_TextChanged"></asp:TextBox>
        
                <asp:Label ID="EmailLabel" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="email" runat="server" OnTextChanged="email_TextChanged"></asp:TextBox>
          
          
                <asp:Label ID="PasswordLabel" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="password" runat="server" OnTextChanged="password_TextChanged"></asp:TextBox>
            </div>
            <p>
                <asp:Button ID="Registerbtn" runat="server" OnClick="Button1_Click" Text="Register" />
            </p>
            <div>
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
                <br />
            </div>
        </div>
    
    </form>
        </div>
</body>
</html>
