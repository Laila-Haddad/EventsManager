<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRemoveAdminsAndModerators.aspx.cs" Inherits="WebApplication5.pages.AdminFunctions.WebForm1" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!DOCTYPE html>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Purple Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="../assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="../assets/images/favicon.ico" />
</head>
<body>
    <form id="form1" runat="server">


     
            <!-- partial:../../partials/_navbar.html -->
        

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
                            <a class="nav-link" href="../Login.aspx">
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
                            <a class="nav-link" href="../AdminPage.aspx">
                                <span class="menu-title">Admins</span>
                                <i class="mdi mdi-table-large menu-icon"></i>
                            </a>
                        </li>


                        <li class="nav-item">
                            <a class="nav-link" href="ModeratorsTable.aspx">
                                <span class="menu-title">Moderators</span>
                                <i class="mdi mdi-table-large menu-icon"></i>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="AddRemoveAdminsAndModerators.aspx">
                                <span class="menu-title">Add/Remove</span>
                                <i class="mdi mdi-format-list-bulleted menu-icon"></i>
                            </a>
                        </li>


                        <li class="nav-item">
                            <a class="nav-link" href="Reports.aspx">
                                <span class="menu-title">Reports</span>
                                <i class="mdi mdi-format-list-bulleted menu-icon"></i>
                            </a>
                        </li>

                    </ul>
                </nav>





                <div class="col-md-6 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Add an Admin or a Moderator</h4>

                            <div class="form-group">
                                <label for="exampleInputUsername1">User  name</label>
                                <asp:TextBox runat="server" class="form-control" ID="exampleInputUsername1" OnTextChanged="exampleInputUsername1_TextChanged"></asp:TextBox>


                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <asp:TextBox runat="server" type="email" class="form-control" ID="exampleInputEmail1"></asp:TextBox>


                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>

                                <asp:TextBox runat="server" type="password" class="form-control" ID="exampleInputPassword1"></asp:TextBox>
                            </div>


                            <asp:Button runat="server" OnClick="addbtn_Click" Text="Add" class="btn btn-gradient-primary me-2" />



                            <asp:DropDownList ID="role" runat="server">
                                <asp:ListItem Selected="True">Admin</asp:ListItem>
                                <asp:ListItem>Moderator</asp:ListItem>
                            </asp:DropDownList>

                            <asp:Label ID="dataEntry" runat="server"></asp:Label>

                        </div>
                    </div>
                </div>



                <div class="col-md-6 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Remove an Admin or a Moderator</h4>



                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <asp:TextBox runat="server" type="email" class="form-control" ID="TextBox2"></asp:TextBox>
                            </div>


                            <asp:Button runat="server" OnClick="removebtn_Click" Text="Remove" class="btn btn-gradient-primary me-2" />



                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem Selected="True">Admin</asp:ListItem>
                                <asp:ListItem>Moderator</asp:ListItem>
                            </asp:DropDownList>

                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;

                             <asp:Label ID="Label1" runat="server"></asp:Label>

                        </div>
                    </div>
                </div>

            </div>
        </div>






        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.html -->
        <footer class="footer">
            <div class="container-fluid d-flex justify-content-between">
                <span class="text-muted d-block text-center text-sm-start d-sm-inline-block">Copyright © bootstrapdash.com 2021</span>
                <span class="float-none float-sm-end mt-1 mt-sm-0 text-end">Free <a href="https://www.bootstrapdash.com/bootstrap-admin-template/" target="_blank">Bootstrap admin template</a> from Bootstrapdash.com</span>
            </div>
        </footer>
        <!-- partial -->
        </div>
        <!-- main-panel ends -->
        </div>
      <!-- page-body-wrapper ends -->
        </div>
    <!-- container-scroller -->
        <!-- plugins:js -->
        <script src="../assets/vendors/js/vendor.bundle.base.js"></script>
        <!-- endinject -->
        <!-- Plugin js for this page -->

        <!-- End plugin js for this page -->
        <!-- inject:js -->
        <script src="../assets/js/off-canvas.js"></script>
        <script src="../assets/js/hoverable-collapse.js"></script>
        <script src="../assets/js/misc.js"></script>
        <!-- endinject -->
        <!-- Custom js for this page -->
        <!-- End custom js for this page -->
    </form>
</body>
</html>
