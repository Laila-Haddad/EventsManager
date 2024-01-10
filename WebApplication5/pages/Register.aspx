<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
       <title>Register</title>
    <link rel="stylesheet" href="../css/nicepage1.css" media="screen">
<link rel="stylesheet" href="../css/register.css" media="screen">
    <script class="u-script" type="../js/text/javascript" src="jquery-1.9.1.min.js" defer=""></script>

    <meta name="generator" content="Nicepage 6.2.4, nicepage.com">
    <meta name="referrer" content="origin">


    <meta property="og:title" content="Page 1">
    <meta property="og:type" content="website">
  <meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body data-home-page-title="Page 1" data-path-to-root="./" data-include-products="false" class="u-body u-xl-mode" data-lang="en">
    <section class="u-clearfix u-section-1" id="sec-e12a" style="background-color: #141414;">
      <div class="u-clearfix u-sheet u-valign-middle-sm u-valign-middle-xs u-sheet-1">
        <div class="data-layout-selected u-clearfix u-expanded-width u-gutter-0 u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-grey-90 u-layout-cell u-left-cell u-size-30 u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1">
                  <h3 class="u-align-center u-text u-text-default u-text-1">Hello There!<br/>
                    <span style="font-size: 0.625rem;">
                      <span style="font-size: 1rem; font-weight: 400;" class="u-text-palette-5-light-3"> Please register to have unlimited access to so many events</span>
                    </span>
                    <br/>
                  </h3>

                  <div class="u-form u-form-1">
                        <asp:Label ID="Label2" class="u-label u-label-1" style="color:indianred ;display:block;text-align:center; margin:auto" runat="server" Text=""></asp:Label>

                    <form runat="server" class="u-clearfix u-form-spacing-30 u-form-vertical u-inner-form" style="padding: 10px" id="form1" runat="server">
                      
                        
                        <div class="u-form-group u-form-name ">
                        <label for="name-319a" class="u-label u-text-body-alt-color u-label-1">Username</label>

                           <asp:TextBox name="name" placeholder="Enter your username" ID="userName" runat="server" OnTextChanged="userName_TextChanged"  class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-input u-input-rectangle" style="background-color: #141414;" required=""></asp:TextBox>
                   
                      </div>

                      <div class="u-form-group u-form-partition-factor-2 u-form-phone u-form-group-2">
                        <label for="phone" class="u-label u-text-body-alt-color u-label-2">Phone</label>
                           <asp:TextBox  placeholder="e.g. +14155552675"  type="tel" pattern="\+?\d{0,3}[\s\(\-]?([0-9]{2,3})[\s\)\-]?([\s\-]?)([0-9]{3})[\s\-]?([0-9]{2})[\s\-]?([0-9]{2})" ID="phone" runat="server"  class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-input u-input-rectangle" style="background-color: #141414;" required="" TextMode="Phone"></asp:TextBox>
                      </div>

                      <div class="u-form-group u-form-partition-factor-2 u-form-phone u-form-group-2">
                        <label for="file" class="u-label u-text-body-alt-color u-label-2">Profile Picture</label>
                        <asp:FileUpload  ID="file" Style="margin: auto; border: none; cursor: pointer;background-color: #141414;" accept="image/*" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-input u-input-rectangle" runat="server" required="" /> 
                 
                      </div>

                      <div class="u-form-email u-form-group">
                        <label for="email" class="u-label u-text-body-alt-color u-label-3">Email</label>
                       <asp:TextBox  placeholder="Enter email address" ID="email" runat="server" OnTextChanged="email_TextChanged"  class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-white  u-input u-input-rectangle" style="background-color: #141414;"  required="" TextMode="Email"></asp:TextBox>    
                      </div>



                      <div class="u-form-group u-form-group-4">
                        <label for="password" class="u-label u-text-body-alt-color u-label-4">Password</label>
                          <asp:TextBox class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-white  u-input u-input-rectangle  " style="background-color: #141414;" required="" placeholder="enter your password" TextMode="Password" ID="password" runat="server" OnTextChanged="password_TextChanged"></asp:TextBox>
                      </div>



                      <div class="u-align-right u-form-group u-form-submit">

                       <asp:Button ID="Registerbtn" runat="server" OnClick="Button1_Click" Text="SIGN UP" class="u-active-white u-border-2 u-border-grey-75 u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-3-light-1 u-palette-3-light-2 u-radius u-text-hover-white u-btn-1"  />
                           
                      
                    
                      </div>
                     
                    </form>
                  </div>
                </div>
              </div>
              <div style="background-image: url('../images/new3-min.jpg')" class="u-container-style u-image u-layout-cell u-right-cell u-size-30 u-image-1" data-image-width="1980" data-image-height="1320">
                <div class="u-container-layout u-container-layout-2"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  
</body>
</html>
