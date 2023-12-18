<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs"
Inherits="WebApplication5.pages.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8" />
    <meta name="keywords" content="Contact Us" />
    <meta name="description" content="" />
    <title>Log In</title>
    <link rel="stylesheet" href="../css/nicepage.css" media="screen" />
    <link rel="stylesheet" href="../css/Page-7.css" media="screen" />
    <script
      class="u-script"
      type="text/javascript"
      src="../js/jquery-1.9.1.min.js"
      defer=""
    ></script>
    <script
      class="u-script"
      type="text/javascript"
      src="../js/nicepage.js"
      defer=""
    ></script>
    <meta name="generator" content="Nicepage 6.1.8, nicepage.com" />
    <meta name="referrer" content="origin" />

    <script type="application/ld+json">
      {
        "@context": "http://schema.org",
        "@type": "Organization",
        "name": "",
        "url": "/"
      }
    </script>
    <meta name="theme-color" content="#478ac9" />
    <meta property="og:title" content="Page 7" />
    <meta property="og:type" content="website" />
    <link rel="canonical" href="/" />
    <meta data-intl-tel-input-cdn-path="intlTelInput/" />
  </head>
  <body
    data-home-page="https://website6101897.nicepage.io/Page-7.html?version=320771b8-c1b3-9d5a-2eab-9c1fcaef8627"
    data-home-page-title="Page 7"
    data-path-to-root="./"
    data-include-products="false"
    class="u-body u-xl-mode"
    data-lang="en"
  >
    <section class="u-clearfix u-section-1" id="sec-e78a">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div
          class="data-layout-selected u-clearfix u-expanded-width u-gutter-0 u-layout-wrap u-layout-wrap-1"
        >
          <div class="u-layout">
            <div class="u-layout-row">
              <div
                class="u-container-style u-image u-layout-cell u-left-cell u-size-30 u-image-1"
                data-image-width="1980"
                data-image-height="1131"
              >
                <div class="u-container-layout u-container-layout-1"></div>
              </div>
              <div
                class="u-container-style u-grey-90 u-layout-cell u-right-cell u-size-30 u-layout-cell-2"
              >
                <div
                  class="u-container-layout u-valign-middle u-container-layout-2"
                >
                  <h3 class="u-text u-text-default u-text-1">Welcome back!</h3>
                  <div class="u-form u-form-1">
                    <form
              
                      class="u-clearfix u-form-spacing-30 u-form-vertical u-inner-form"
                      style="padding: 10px"
                      id="form1"
                      runat="server"
                    >
                        <asp:Label ID="Label1" class="u-label u-label-1" style="color:indianred ;padding-left:30px ; margin:auto" runat="server" Text=""></asp:Label>


                      <div class="u-form-group u-form-name">
                        <label
                          for="name-319a"
                          class="u-label u-text-body-alt-color u-label-1"
                        >
                          Username</label
                        >

                        <asp:TextBox
                          ID="Username"
                          runat="server"
                          class="u-transparent u-border-1 u-border-no-left u-border-no-right u-border-no-top u-border-gray u-input u-input-rectangle"
                          required=""
                            placeholder="Enter username"
                        ></asp:TextBox>
                      </div>

                        <div
                        class="u-form-email u-form-group u-form-partition-factor-2"
                      >
                        <label
                          for="email-319a"
                          class="u-label u-text-body-alt-color u-label-3"
                        >
                          Email</label
                        >

                        <asp:TextBox
                          ID="Email"
                          TextMode="Email"
                          class="u-transparent u-border-1 u-border-no-left u-border-no-right u-border-no-top u-border-gray u-input u-input-rectangle"
                          required=""
                          runat="server"
                          placeholder="Enter email address"
                            style="background-color: transparent !important"
                        ></asp:TextBox>

                      </div>
                      <div
                        class="u-form-group u-form-partition-factor-2 u-form-group-2"
                      >
                        <label
                          for="text-9382"
                          class="u-label u-text-body-alt-color u-label-2"
                        >
                          Password</label
                        >

                        <asp:TextBox
                          ID="Password"
                            TextMode="Password"
                          placeholder="enter your password"
                            required=""
                          runat="server"
                          class="u-transparent u-border-1 u-border-no-left u-border-no-right u-border-no-top u-border-gray u-input u-input-rectangle"
                        ></asp:TextBox>
                      </div>
                      
                      <div class="u-form-group u-form-select u-form-group-4">
                        <label
                          for="select-2fd8"
                          class="u-label u-text-body-alt-color u-label-4"
                        >
                          Select your role</label
                        >
                        <div class="u-form-select-wrapper">
                          <asp:DropDownList
                            ID="DropDownList1"
                            runat="server"
                            OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                            class="u-transparent u-border-1 u-border-no-left u-border-no-right u-border-no-top u-border-gray u-input u-input-rectangle"
                         style="background-color: #1a1a1a"
                          >
                            <asp:ListItem >User</asp:ListItem>

                            <asp:ListItem >Moderator</asp:ListItem>
                            <asp:ListItem >Admin</asp:ListItem>

                          </asp:DropDownList>
                          <svg
                            class="u-caret u-caret-svg"
                            version="1.1"
                            id="Layer_1"
                            xmlns="http://www.w3.org/2000/svg"
                            xmlns:xlink="http://www.w3.org/1999/xlink"
                            x="0px"
                            y="0px"
                            width="16px"
                            height="16px"
                            viewBox="0 0 16 16"
                            style="fill: currentColor"
                            xml:space="preserve"
                          >
                            <polygon
                              class="st0"
                              points="8,12 2,4 14,4 "
                            ></polygon>
                          </svg>
                        </div>
                      </div>
                      <div class="u-align-left u-form-group u-form-submit">
                  

                        <asp:Button
                          ID="Button1"
                          runat="server"
                          OnClick="Button1_Click"
                          class="u-active-white u-border-2 u-border-grey-75 u-btn u-btn-round u-btn-submit u-button-style u-custom-color-1 u-hover-palette-4-dark-2 u-radius u-text-hover-white u-btn-1"
               
                          Text="LOG IN"
                        />


                      </div>

                 
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </body>
</html>
