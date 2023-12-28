    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="WebApplication5.WebForm2" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Admin Page</title>
        <link rel="stylesheet" type="text/css" href="../css/AdminPage.css" />
    </head>
    <body>
           <form id="form1" runat="server">
          <div class="navbar">
        <asp:Label ID="adminDashboardLabel" runat="server" Text="Admin Dashboard" CssClass="admin-dashboard-heading"></asp:Label>
        </div>

        <div class="sidebar">
        <h2>Sidebar</h2>
        <nav>
            <ul>
                <li><a href="#tab1">Tab 1</a></li>
                <li><a href="#tab2">Tab 2</a></li>
                <li><a href="#tab3">Tab 3</a></li>
            </ul>
        </nav>
    </div>

    <div class="content">
    
    
        <div id="tab1" class="tab-content">
            <h3>Tab 1 Content</h3>

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
            </div>

        </div>
     

        <div id="tab2" class="tab-content">
            <h3>Tab 2 Content</h3>
      
           <div>
                <p>
                    <asp:Label ID="adminsLabel" runat="server" Text="Admins"></asp:Label>
                </p>
            <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    </Columns>
                </asp:GridView>
                <br />
                <br />
                <br />
           </div>
        </div>
            
            </div>

        <div id="tab3" class="tab-content">
            <h3>Tab 3 Content</h3>





            <div>
           
           
                <asp:Label ID="moderatorLabel" runat="server" Text="Moderators"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [email], [username] FROM [Admins]"></asp:SqlDataSource>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [email], [username] FROM [Moderators]"></asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
                <br />
            <h3>Tab 4 Content</h3>





                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3" Height="113px" Width="279px">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="reportedUserId" HeaderText="reportedUserId" SortExpression="reportedUserId" />
                        <asp:BoundField DataField="reason" HeaderText="reason" SortExpression="reason"></asp:BoundField>
                        <asp:BoundField DataField="status" HeaderText="status" SortExpression="status"></asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT * FROM [Reports]"></asp:SqlDataSource>
                <br />
                <asp:Label ID="userIdLable" runat="server" Text="User Id"></asp:Label>
                <br />
                <asp:TextBox ID="email0" runat="server" OnTextChanged="email_TextChanged"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="rmvbtn0" runat="server" OnClick="addbtn_Click" Text="Remove" />
            </div>
 
        </div>




    </div>


       </form>
    </body>
    </html>
