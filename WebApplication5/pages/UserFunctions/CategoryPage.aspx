<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategoryPage.aspx.cs" Inherits="WebApplication5.pages.UserFunctions.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8" />
    <meta name="keywords" content="Our Services" />
    <meta name="description" content="" />
    <link rel="stylesheet" href="../../css/nicepage1.css" media="screen" />
    <link rel="stylesheet" href="../../css/category1.css" media="screen" />
    <script
      class="u-script"
      type="text/javascript"
      src="../../js/jquery-1.9.1.min.js"
      defer=""
    ></script>
    <title>Events</title>
     <style>
        

.hamburger{
  
  background-color: transparent;
  width: fit-content;
  height: 50px;
  padding: 1em;
}

.menu {
  display: flex;
  flex-direction: row;
  list-style-type: none;
  margin: 0;
  padding: 0;
}

.menu > li {
  margin: 0 1rem;
  overflow: hidden;
}

.menu-button-container {
  display: none;
  height: 100%;
  width: 30px;
  cursor: pointer;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

#menu-toggle {
  display: none;
}

.menu-button,
.menu-button::before,
.menu-button::after {
  display: block;
  background-color: #fff;
  position: absolute;
  height: 4px;
  width: 30px;
  transition: transform 400ms cubic-bezier(0.23, 1, 0.32, 1);
  border-radius: 2px;
}

.menu-button::before {
  content: '';
  margin-top: -8px;
}

.menu-button::after {
  content: '';
  margin-top: 8px;
}

  .menu-button-container {
    display: flex;
  }
  .menu {
    position: absolute;
    top: 15px;
    margin-top: 50px;
    right: 0;
    flex-direction: column;

    justify-content: center;
    align-items: center;
  }
  #menu-toggle ~ .menu li {
    height: 0;
    margin: 0;
    padding: 0;
    border: 0;
    transition: height 400ms cubic-bezier(0.23, 1, 0.32, 1);
  }
  #menu-toggle:checked ~ .menu li {
    border: 1px solid #1d1d1d;
    height: 2.5em;
    padding: 0.5em;
    transition: height 400ms cubic-bezier(0.23, 1, 0.32, 1);
  }

  #menu-toggle:checked ~ .menu li#img {
    height:100px;
  }
  .menu > li {
    display: flex;
    justify-content: center;
    margin: 0;
    padding: 1em 0;
    width: 100%;
    color: white !important;
    background-color: #141414;
  }
  .menu > li:not(:last-child) {
    border-bottom: 1px solid #151515;
  }

    </style>
</head>
<body  style="background-color:#141414"   class="u-body u-xl-mode">


     <header class="u-clearfix u-custom-color-1 u-header u-sticky u-sticky-e1a4 u-header" id="sec-c67f"><div class="u-clearfix u-sheet u-sheet-1">
        <img class="u-image u-image-contain u-image-default u-preserve-proportions u-image-1" src="../../images/photo_2023-12-17_19-40-38.png" alt="" data-image-width="700" data-image-height="700">
        <h3 class="u-align-left u-text u-text-default u-text-1">EventFul</h3>


        <div class="data-layout-selected u-clearfix u-layout-custom-sm u-layout-custom-xs u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-align-right u-container-style u-layout-cell u-left-cell u-size-30 u-layout-cell-1" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="250">
                <div class="u-container-layout u-valign-middle u-container-layout-1">
                    
                  
                    <asp:HyperLink ID="login" NavigateUrl="~/pages/Login.aspx" runat="server" class="u-border-2 u-border-custom-color-2 u-btn u-btn-round u-button-style u-custom-color-2 u-radius-50 u-btn-1">Login</asp:HyperLink>
                </div>
              </div>
              <div class="u-align-left u-container-style u-layout-cell u-right-cell u-size-30 u-layout-cell-2" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="250">
                <div class="u-container-layout u-container-layout-2">
              
                    <asp:HyperLink ID="register" NavigateUrl="~/pages/Register.aspx" runat="server" class="u-active-white u-border-2 u-border-active-white u-border-hover-white u-border-white u-btn u-btn-round u-button-style u-hover-white u-none u-radius-50 u-text-active-black u-text-hover-black u-btn-2">Register</asp:HyperLink>
                    </div>


                    <div>
                        <asp:Label ID="userMenu" runat="server" Text="Label">
       <section  class="hamburger">

    <input id="menu-toggle" type="checkbox" />
    <label class='menu-button-container' for="menu-toggle">
    <div class='menu-button'></div>
  </label>
    <ul class="menu" style="width: 150px;">
        <li id="img">
            <asp:Image ID="image" runat="server" ImageUrl="" Width="100px" Height="100px"/></li>
      <li> <asp:Label ID="uname" runat="server" Text="Hello "></asp:Label></li>
      <li><a href="Home.aspx">Home</a></li>
      <li><a href="../UserFunctions/CategoryPage.aspx">Events</a></li>

      <li><a href="">Booked events</a></li>
      <li><a href="UserFunctions/RequestEvent.aspx">Request event</a></li>
      <li>
          </li>

    </ul>
  </section>
                            </asp:Label>
                </div>
              </div>

              

            </div>
          </div>
        </div>
      </div></header>


    <form id="form1" runat="server">
        <div>

            <section
      class="u-align-center u-clearfix u-container-align-center u-custom-color-1 u-section-1"
      id="sec-1e4a"
    >
      <div class="u-clearfix u-sheet u-sheet-1">
          <asp:Label ID="title" runat="server" Text="Events Near You" class="u-align-center u-text u-text-white u-text-1"></asp:Label>
          <br />

          <asp:Button  class="u-border-none u-btn u-btn-round u-button-style u-hover-palette-4-light-3 u-radius u-white u-btn-1"
                 ID="download" runat="server" Text="Download Events info" OnClick="download_Click" />

          <br />


          <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>


          <asp:DataList ID="DataList1" runat="server" DataKeyField="EventID" DataSourceID="SqlDataSource1" CellSpacing="5" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
              <ItemTemplate>
                 
                       
                     
              <div
              class="u-container-style u-custom-color-4 u-list-item u-repeater-item u-shape-rectangle u-video-cover u-list-item-1"
            >
              <div
                class="u-container-layout u-similar-container u-valign-bottom u-container-layout-1"
              >

             <asp:Image ID="image" runat="server" ImageUrl='<%# Eval("image") %>' class="u-expanded-width u-image u-image-default u-image-1"
                /></li>
                <h4
                  class="u-align-center u-custom-font u-font-roboto-condensed u-hover-feature u-text u-text-2"
                >
                  <asp:Label ID="EventNameLabel" runat="server" Text='<%# Eval("EventName") %>' />
                </h4>
                <p class="u-align-center u-hover-feature u-text u-text-3">
                  <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                </p>
                <p class="u-align-left u-text u-text-4">
                  <span class="u-file-icon u-icon u-text-white u-icon-1"
                    ><img src="../../images/535239.png" alt="" /></span
                  >&nbsp; Location: &nbsp; <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' />
                </p>
                <p class="u-align-left u-hover-feature u-text u-text-5">
                  <span class="u-file-icon u-icon u-text-white u-icon-2"
                    ><img src="../../images/3114812.png" alt="" /></span
                  >&nbsp; Time:&nbsp;<asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' /><br />
                </p>
                <p class="u-align-left u-hover-feature u-text u-text-6">
                  <span class="u-file-icon u-icon u-text-white u-icon-3"
                    ><img src="../../images/686648.png" alt="" /></span
                  >&nbsp; Seats :&nbsp;<asp:Label  ID="NumSeatsLabel" runat="server" Text='<%# Eval("NumSeats") %>' /><br />
                </p>
              
                  <asp:Button  class="u-border-none u-btn u-btn-round u-button-style u-hover-palette-4-light-3 u-radius u-white u-btn-1"
                 runat="server" EnableViewState="true" CommandName="book" CommandArgument='<%# Eval("EventID") %>' Text="Book now!" />

                  


          
          </div>
        </div>
       
             
              </ItemTemplate>
          </asp:DataList>          
              
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ></asp:SqlDataSource>

           
              
              
           
    
    </section>

        </div>

         <footer class="u-clearfix u-custom-color-1 u-footer" id="sec-b7f2"><div class="u-clearfix u-sheet u-sheet-1">
        <div class="custom-expanded data-layout-selected u-align-left u-clearfix u-gutter-30 u-layout-wrap u-layout-wrap-1">
          <div class="u-gutter-0 u-layout">
            <div class="u-layout-row">
              <div class="u-align-left u-container-style u-layout-cell u-left-cell u-size-20 u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1">
                  <img class="u-image u-image-contain u-image-default u-preserve-proportions u-image-1" src="../images/photo_2023-12-17_19-40-38.png" alt="" data-image-width="700" data-image-height="700">
                  <h3 class="u-align-left u-text u-text-default u-text-1">EventFul</h3>
                </div>
              </div>
              <div class="u-align-left u-container-style u-layout-cell u-size-20 u-layout-cell-2">
                <div class="u-container-layout u-valign-top u-container-layout-2">
                  <h6 class="u-text u-text-2">Contact us</h6>
                  <p class="u-small-text u-text u-text-variant u-text-3">eventful@event.com</p>
                </div>
              </div>
              <div class="u-align-left u-container-style u-layout-cell u-right-cell u-size-20 u-layout-cell-3">
                <div class="u-container-layout u-valign-top u-container-layout-3">
                  <h6 class="u-text u-text-4">
                    <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-white u-btn-1" data-href="https://nicepage.com">Request an event</a>
                  </h6>
                  <p class="u-small-text u-text u-text-variant u-text-5">
                    <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-grey-5 u-text-hover-white u-btn-2" data-href="https://nicepage.com">categories</a>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div></footer>
    </form>
</body>
</html>
