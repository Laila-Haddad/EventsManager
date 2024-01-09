<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewReports.aspx.cs" Inherits="WebApplication5.pages.ModeratorsFunctions.ViewReports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>View Reports</title>
    <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="shortcut icon" href="assets/images/favicon.ico" />
</head>
<body>
    <form runat="server">
        <div class="container-scroller">
  

            <!-- partial:partials/_navbar.html -->
            <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                    <a class="navbar-brand brand-logo" href="index.html">
                        <img src="assets/images/logo.svg" alt="logo" /></a>
                    <a class="navbar-brand brand-logo-mini" href="index.html">
                        <img src="assets/images/logo-mini.svg" alt="logo" /></a>
                </div>
                <div class="navbar-menu-wrapper d-flex align-items-stretch">
                    <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                        <span class="mdi mdi-menu"></span>
                    </button>
      



                    <ul class="navbar-nav navbar-nav-right">
                        <li class="nav-item nav-profile dropdown">

                            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">

                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">
                                    <i class="mdi mdi-logout me-2 text-primary"></i>Signout </a>
                            </div>
                        </li>

      
                        <li class="nav-item nav-logout d-none d-lg-block">
                            <a class="nav-link" href="Login.aspx">
                                <i class="mdi mdi-power"></i>
                            </a>
                        </li>

                    </ul>
                    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                        <span class="mdi mdi-menu"></span>
                    </button>
                </div>
            </nav>




            <!-- partial -->


            <div class="container-fluid page-body-wrapper">
                <!-- partial:partials/_sidebar.html -->
                <nav class="sidebar sidebar-offcanvas" id="sidebar">
                    <ul class="nav">


                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span class="menu-title">Requested Events</span>
                                <i class="mdi mdi-table-large menu-icon"></i>
                            </a>
                        </li>


                        <li class="nav-item">
                            <a class="nav-link" href="ModeratorsFunctions/ViewModerators.aspx">
                                <span class="menu-title">Moderators</span>
                                <i class="mdi mdi-table-large menu-icon"></i>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="ModeratorsFunctions/ViewUsers.aspx">
                                <span class="menu-title">Users</span>
                                <i class="mdi mdi-format-list-bulleted menu-icon"></i>
                            </a>
                        </li>


                        <li class="nav-item">
                            <a class="nav-link" href="ModeratorsFunctions/ViewReports.aspx">
                                <span class="menu-title">My Reports</span>
                                <i class="mdi mdi-format-list-bulleted menu-icon"></i>
                            </a>
                        </li>

                    </ul>
                    <div style="width: 318%; align-content: center; margin-top: 38px; margin-left: auto; margin-right: auto; margin-bottom: auto;">

                        <p class="card-description">
                            Current Requests:

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" class="table">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True" />
                            <asp:BoundField DataField="reportedUserId" HeaderText="reportedUserId" SortExpression="reportedUserId" />
                            <asp:BoundField DataField="reason" HeaderText="reason" SortExpression="reason" />
                            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                        </Columns>
                    </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString4 %>" SelectCommand="SELECT * FROM [Reports]"></asp:SqlDataSource>
                    </p>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString4 %>" SelectCommand="SELECT [Username], [email], [id] FROM [Users]"></asp:SqlDataSource>


                </div>
                </nav>



                <%--    
          <footer class="footer">
            <div class="container-fluid d-flex justify-content-between">
              <span class="text-muted d-block text-center text-sm-start d-sm-inline-block">Copyright © bootstrapdash.com 2021</span>
              <span class="float-none float-sm-end mt-1 mt-sm-0 text-end"> Free <a href="https://www.bootstrapdash.com/bootstrap-admin-template/" target="_blank">Bootstrap admin template</a> from Bootstrapdash.com</span>
            </div>
          </footer>--%>


                <!-- partial -->
            </div>




            <!-- main-panel ends -->
        </div>

        <!-- page-body-wrapper ends -->
        </div>
    <!-- container-scroller -->
        <!-- plugins:js -->




        <script src="assets/vendors/js/vendor.bundle.base.js"></script>
        <!-- endinject -->
        <!-- Plugin js for this page -->
        <script src="assets/vendors/chart.js/Chart.min.js"></script>
        <script src="assets/js/jquery.cookie.js" type="text/javascript"></script>
        <!-- End plugin js for this page -->
        <!-- inject:js -->
        <script src="assets/js/off-canvas.js"></script>
        <script src="assets/js/hoverable-collapse.js"></script>
        <script src="assets/js/misc.js"></script>
        <!-- endinject -->
        <!-- Custom js for this page -->
        <script src="assets/js/dashboard.js"></script>
        <script src="assets/js/todolist.js"></script>
        <!-- End custom js for this page -->



                    <div class="card">
                    </div>



    </form>
</body>
</html>

