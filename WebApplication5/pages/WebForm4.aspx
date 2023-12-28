<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication5.pages.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" >
                <Columns>
                    <asp:BoundField HeaderText="Event name" SortExpression="email" />
                    <asp:BoundField  HeaderText="Host" SortExpression="username" />
                    <asp:BoundField  HeaderText="Event page" />
                    <asp:BoundField  HeaderText="Rejected" />
                    <asp:BoundField  HeaderText="reason" /> 
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
