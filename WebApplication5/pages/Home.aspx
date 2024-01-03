<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication5.pages.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="​Outdoor Recreation">
    <meta name="description" content="">
    <title>Home</title>
<link rel="stylesheet" href="../css/home.css" media="screen">
    <link rel="stylesheet" href="../css/nicepage1.css" media="screen">

    <script class="u-script" type="text/javascript" src="../js/jquery-1.9.1.min.js" defer=""></script>
    <meta name="generator" content="Nicepage 6.1.8, nicepage.com">
    <meta name="referrer" content="origin">
    <link rel="canonical" href="/">
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

    <body style="background-color:#141414" class="u-body u-xl-mode" data-lang="en">
        <form id="form1" runat="server">
   <header class="u-clearfix u-custom-color-1 u-header u-sticky u-sticky-e1a4 u-header" id="sec-c67f"><div class="u-clearfix u-sheet u-sheet-1">
        <img class="u-image u-image-contain u-image-default u-preserve-proportions u-image-1" src="../images/photo_2023-12-17_19-40-38.png" alt="" data-image-width="700" data-image-height="700">
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
      <li> <asp:Label ID="uname" runat="server" Text="Hello "></asp:Label></li>
      <li><a href="Home.aspx">Home</a></li>
      <li><a href="">Booked events</a></li>
      <li><a href="UserFunctions/RequestEvent.aspx">Request event</a></li>
      <li>
          <asp:Button ID="logout" runat="server" OnClick="logout_Click" Text="log Out" style="border:none; background-color:transparent; color:indianred; cursor:pointer" />
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
    <section class="skrollable skrollable-between u-align-center u-clearfix u-image u-shading u-section-1" src="" id="carousel_74d8" data-image-width="1980" data-image-height="1131">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-align-center u-text u-text-1" data-animation-name="customAnimationIn" data-animation-duration="1000">Your Gateway to Unforgettable Experiences</h1>
        <p class="u-large-text u-text u-text-variant u-text-2" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="250">&nbsp;Immerse yourself in a tapestry of experiences, curated to bring joy, excitement, and enrichment to your life. Explore, engage, and make memories that last a lifetime with EventFul!</p>
      </div>
    </section>
    <section class="u-clearfix u-custom-color-1 u-section-2" id="sec-cf32">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="custom-expanded u-list u-list-1">
          <div class="u-repeater u-repeater-1">
            <div class="u-align-center u-container-style u-custom-color-3 u-list-item u-repeater-item u-shape-rectangle u-list-item-1" data-animation-name="customAnimationIn" data-animation-duration="1250" data-animation-delay="500">
              <div class="u-container-layout u-similar-container u-container-layout-1"><span class="u-align-center u-file-icon u-icon u-text-white u-icon-1"><img src="../images/1941070-27c0c530.png" alt=""></span>
                <h4 class="u-align-center u-custom-font u-text u-text-font u-text-1">concerts &amp; performences</h4>
              </div>
            </div>
            <div class="u-align-center u-container-style u-custom-color-3 u-list-item u-repeater-item u-shape-rectangle u-list-item-2" data-animation-name="customAnimationIn" data-animation-duration="1250" data-animation-delay="500">
              <div class="u-container-layout u-similar-container u-container-layout-2"><span class="u-align-center u-file-icon u-icon u-text-white u-icon-2"><img src="../images/7401471-4294aa1a.png" alt=""></span>
                <h4 class="u-align-center u-custom-font u-text u-text-font u-text-2">Camping &amp; outdoors</h4>
              </div>
            </div>
            <div class="u-align-center u-container-style u-custom-color-3 u-list-item u-repeater-item u-shape-rectangle u-list-item-3" data-animation-name="customAnimationIn" data-animation-duration="1250" data-animation-delay="500">
              <div class="u-container-layout u-similar-container u-container-layout-3"><span class="u-align-center u-file-icon u-icon u-text-white u-icon-3"><img src="../images/7598570-f334a584.png" alt=""></span>
                <h4 class="u-align-center u-text u-text-3">sports &amp; fitness</h4>
              </div>
            </div>
            <div class="u-align-center u-container-style u-custom-color-3 u-list-item u-repeater-item u-shape-rectangle u-list-item-4" data-animation-name="customAnimationIn" data-animation-duration="1250" data-animation-delay="500">
              <div class="u-container-layout u-similar-container u-container-layout-4"><span class="u-align-center u-file-icon u-icon u-text-white u-icon-4"><img src="../images/1756784-328473b4.png" alt=""></span>
                <h4 class="u-align-center u-custom-font u-text u-text-font u-text-4"> art &amp; workshops</h4>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-custom-color-1 u-section-3" id="sec-237f">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-align-center u-text u-text-1">Concerts and Performances</h2>
        <p class="u-align-center u-text u-text-2"> From chart-topping artists to local talents, our Concerts and Performances category brings you an unforgettable experience.</p>
        <div class="u-expanded-width u-gallery u-layout-grid u-lightbox u-show-text-on-hover u-gallery-1">
          <div class="u-gallery-inner u-gallery-inner-1">
            <div class="u-effect-fade u-effect-hover-zoom u-gallery-item">
              <div class="u-back-slide" data-image-width="1280" data-image-height="853">
                <img class="u-back-image u-expanded" src="../images/guitar.jpg" alt="Sample Headline">
              </div>
              <div class="u-over-slide u-shading u-over-slide-1">
                <h3 class="u-gallery-heading">Guitar Performance</h3>
                <p class="u-gallery-text">the local bar offers all sorts of performances with small artists</p>
              </div>
            </div>
            <div class="u-effect-fade u-effect-hover-zoom u-gallery-item">
              <div class="u-back-slide" data-image-width="1280" data-image-height="853">
                <img class="u-back-image u-expanded" src="../images/b61278f8f9cdd3ed2a81c0a328e597d0583f6c2868b686ade383b83e8108742ed5d50bc24752c661c2c63ca6c8574faae8456f62a618f8dbae98ef_1280.jpg" alt="Sample Headline">
              </div>
              <div class="u-over-slide u-shading u-over-slide-2">
                <h3 class="u-gallery-heading">Pop Concerts</h3>
                <p class="u-gallery-text">Feel alive with the local open air conects held in the park</p>
              </div>
            </div>
            <div class="u-effect-fade u-effect-hover-zoom u-gallery-item">
              <div class="u-back-slide" data-image-width="1280" data-image-height="854">
                <img class="u-back-image u-expanded" src="../images/34ca7d33628132fc3065841e8f58f738d6adadebd50469e867ce5d37e07fb2252dbc94a8f076bd5cc79fb5e75dea4486aa8e13e9ddd3f790ea5ade_1280.jpg" alt="Sample Headline">
              </div>
              <div class="u-over-slide u-shading u-over-slide-3">
                <h3 class="u-gallery-heading">Classical Music</h3>
                <p class="u-gallery-text">Let the violin make you forget your sorrow</p>
              </div>
            </div>
          </div>
        </div>
        <a href="#" class="u-align-center u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-palette-2-base u-radius-50 u-btn-1">Go to category</a>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-custom-color-2 u-section-4" id="sec-185a">
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-align-center u-text u-text-default u-text-1" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="0">Camping and Outdoors</h2>
        <p class="u-align-center u-text u-text-2" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="250"> Make new friends, share laughter, and create lasting memories in a welcoming atmosphere.</p>
        <div class="u-expanded-width u-list u-list-1">
          <div class="u-repeater u-repeater-1">
            <div class="u-align-center u-container-align-center u-container-style u-image u-list-item u-repeater-item u-shading u-shape-rectangle u-image-1" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500" data-image-width="800" data-image-height="800">
              <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-1">
                <div class="u-black u-container-align-center u-container-style u-expanded-width u-group u-opacity u-opacity-50 u-group-1">
                  <div class="u-container-layout u-container-layout-2">
                    <h4 class="u-align-center u-text u-text-3" data-animation-name="customAnimationIn" data-animation-duration="1250" data-animation-delay="500">LAKE CAMPING</h4>
                  </div>
                </div>
              </div>
            </div>
            <div class="u-align-center u-container-align-center u-container-style u-image u-list-item u-repeater-item u-shading u-shape-rectangle u-image-2" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500" data-image-width="740" data-image-height="833">
              <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-3">
                <div class="u-black u-container-style u-expanded-width u-group u-opacity u-opacity-50 u-group-2">
                  <div class="u-container-layout u-container-layout-4">
                    <h4 class="u-align-center u-text u-text-4" data-animation-name="customAnimationIn" data-animation-duration="1250" data-animation-delay="500">FOREST hike</h4>
                  </div>
                </div>
              </div>
            </div>
            <div class="u-align-center u-container-align-center u-container-style u-image u-list-item u-repeater-item u-shading u-shape-rectangle u-image-3" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500" data-image-width="1480" data-image-height="833">
              <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-5">
                <div class="u-black u-container-style u-expanded-width u-group u-opacity u-opacity-50 u-group-3">
                  <div class="u-container-layout u-container-layout-6">
                    <h4 class="u-align-center u-text u-text-5" data-animation-name="customAnimationIn" data-animation-duration="1250" data-animation-delay="500"> Beach GATHERINGS</h4>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <a href="https://nicepage.review" class="u-active-white u-border-2 u-border-active-white u-border-hover-white u-border-white u-btn u-btn-round u-button-style u-hover-grey-10 u-radius-50 u-text-active-black u-text-hover-black u-white u-btn-1">GO TO CATEGORY</a>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-container-align-center u-custom-color-1 u-section-5" id="sec-d633">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <h2 class="u-align-center u-text u-text-default u-text-1"> Art and Workshops</h2>
        <div class="u-expanded-width u-list u-list-1">
          <div class="u-repeater u-repeater-1">
            <div class="u-align-center u-container-align-center u-container-style u-list-item u-repeater-item u-list-item-1">
              <div class="u-container-layout u-similar-container u-container-layout-1">
                <img alt="" class="u-expanded-width u-image u-image-default u-image-1" data-image-width="1280" data-image-height="855" src="../images/e0b0394f900757af8c75e5c7c01fe34bad4313226dd73855d78ea71c4932973785b2451e34facf5b7a4e7bd48bb7f404eaeeb85189e57f15d0c32e_1280.jpg">
                <div class="u-align-center u-container-style u-group u-palette-2-base u-group-1">
                  <div class="u-container-layout u-container-layout-2">
                    <h4 class="u-text u-text-2">sewing and knitting</h4>
                  </div>
                </div>
                <p class="u-align-center u-text u-text-3"> Join our Knitting Gatherings to discover the joy of creating beautiful, handcrafted textiles.&nbsp;</p>
                <a href="" class="u-align-center u-border-1 u-border-active-palette-2-base u-border-grey-5 u-border-hover-palette-2-base u-border-no-left u-border-no-right u-border-no-top u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-none u-radius-0 u-text-grey-5 u-text-hover-palette-2-base u-top-left-radius-0 u-top-right-radius-0 u-btn-1">learn more</a>
              </div>
            </div>
            <div class="u-align-center u-container-align-center u-container-style u-list-item u-repeater-item u-list-item-2">
              <div class="u-container-layout u-similar-container u-container-layout-3">
                <img alt="" class="u-expanded-width u-image u-image-default u-image-2" data-image-width="1280" data-image-height="853" src="../images/wood.jpg">
                <div class="u-align-center u-container-style u-group u-palette-2-base u-group-2">
                  <div class="u-container-layout u-container-layout-4">
                    <h4 class="u-text u-text-4">Woodwork</h4>
                  </div>
                </div>
                <p class="u-align-center u-text u-text-5"> Immerse yourself in the art of Woodworking Workshops, where craftsmanship meets creativity.</p>
                <a href="" class="u-align-center u-border-1 u-border-active-palette-2-base u-border-grey-5 u-border-hover-palette-2-base u-border-no-left u-border-no-right u-border-no-top u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-none u-radius-0 u-text-grey-5 u-text-hover-palette-2-base u-top-left-radius-0 u-top-right-radius-0 u-btn-2">learn more</a>
              </div>
            </div>
            <div class="u-align-center u-container-align-center-sm u-container-align-center-xl u-container-align-center-xs u-container-style u-list-item u-repeater-item u-list-item-3">
              <div class="u-container-layout u-similar-container u-container-layout-5">
                <img alt="" class="u-expanded-width u-image u-image-default u-image-3" data-image-width="853" data-image-height="1280" src="../images/9c40b82cfe0b1a977a73515b73d940a66d1198a18bae0d9048e752a80d5891e4c64da73dd3cf52cd71aa6d1e5ca84a92ecb9e61db5f736ef1e48d4_1280.jpg">
                <div class="u-align-center u-container-style u-group u-palette-2-base u-group-3">
                  <div class="u-container-layout u-container-layout-6">
                    <h4 class="u-text u-text-6">painting</h4>
                  </div>
                </div>
                <p class="u-align-center u-text u-text-7"> Channel your inner artist with our Painting Classes, designed for both beginners and seasoned painters.</p>
                <a href="" class="u-align-center u-border-1 u-border-active-palette-2-base u-border-grey-5 u-border-hover-palette-2-base u-border-no-left u-border-no-right u-border-no-top u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-none u-radius-0 u-text-grey-5 u-text-hover-palette-2-base u-top-left-radius-0 u-top-right-radius-0 u-btn-3">learn more</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-container-align-center u-custom-color-3 u-section-6" id="sec-1452">
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-align-center u-text u-text-default u-text-1" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="0"> Sports and Fitness</h2>
        <p class="u-align-center u-text u-text-2" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="250"> Join tournaments, fitness classes, and outdoor adventures that will keep you moving, motivated, and having a blast.</p>
        <div class="u-expanded-width u-list u-list-1">
          <div class="u-repeater u-repeater-1">
            <div class="u-align-center u-container-align-center u-container-style u-image u-list-item u-repeater-item u-shading u-shape-rectangle u-image-1" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500" data-image-width="1280" data-image-height="853">
              <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-1">
                <div class="u-black u-container-align-center u-container-style u-expanded-width u-group u-opacity u-opacity-50 u-group-1">
                  <div class="u-container-layout u-container-layout-2">
                    <h4 class="u-align-center u-text u-text-3" data-animation-name="customAnimationIn" data-animation-duration="1250" data-animation-delay="500">Marathons</h4>
                  </div>
                </div>
              </div>
            </div>
            <div class="u-align-center u-container-align-center u-container-style u-image u-list-item u-repeater-item u-shading u-shape-rectangle u-image-2" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500" data-image-width="1280" data-image-height="1046">
              <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-3">
                <div class="u-black u-container-style u-expanded-width u-group u-opacity u-opacity-50 u-group-2">
                  <div class="u-container-layout u-container-layout-4">
                    <h4 class="u-align-center u-text u-text-4" data-animation-name="customAnimationIn" data-animation-duration="1250" data-animation-delay="500">ice skating</h4>
                  </div>
                </div>
              </div>
            </div>
            <div class="u-align-center u-container-align-center u-container-style u-image u-list-item u-repeater-item u-shading u-shape-rectangle u-image-3" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500" data-image-width="1280" data-image-height="854">
              <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-5">
                <div class="u-black u-container-style u-expanded-width u-group u-opacity u-opacity-50 u-group-3">
                  <div class="u-container-layout u-container-layout-6">
                    <h4 class="u-align-center u-text u-text-5" data-animation-name="customAnimationIn" data-animation-duration="1250" data-animation-delay="500">Cycling</h4>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <a href="https://nicepage.review" class="u-active-white u-border-2 u-border-active-white u-border-hover-white u-border-white u-btn u-btn-round u-button-style u-hover-grey-10 u-radius-50 u-text-active-black u-text-hover-black u-white u-btn-1">GO TO CATEGORY</a>
      </div>
    </section>
    
    
    
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
