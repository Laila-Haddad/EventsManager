<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestEvent.aspx.cs" Inherits="WebApplication5.pages.UserFunctions.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Request Event</title>
    <link rel="stylesheet" href="../../css/home.css" media="screen">
    <link rel="stylesheet" href="../../css/nicepage1.css" media="screen">
    <script class="u-script" type="text/javascript" src="../js/jquery-1.9.1.min.js" defer=""></script>

    <style type="text/css">
        .auto-style2 {
            width: 297px;
        }

        .auto-style3 {
            width: 363px;
        }

        .auto-style4 {
            width: 56%;
        }

        * {
            color: white;
            border-spacing: 0px;
        }

            *:focus {
                outline: none;
            }

        input, textarea, button {
            background-color: transparent;
            border: none;
            border-bottom: solid 1px white;
        }

        td {
            padding: 0 10%;
        }

        .hamburger {
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
            justify-content:space-between ;
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
<body style="background-color: #141414">


    <header class="u-clearfix u-custom-color-1 u-header u-sticky u-sticky-e1a4 u-header" style="padding-left:60px" id="sec-c67f">
        <div class="u-clearfix u-sheet u-sheet-1">
            <img class="u-image u-image-contain u-image-default u-preserve-proportions u-image-1" src="../../images/photo_2023-12-17_19-40-38.png" alt="" data-image-width="700" data-image-height="700">
            <h3 class="u-align-left u-text u-text-default u-text-1">EventFul</h3>


            <div class="data-layout-selected u-clearfix u-layout-custom-sm u-layout-custom-xs u-layout-wrap u-layout-wrap-1">
                <div class="u-layout">
                    <div class="u-layout-row">
                        <div class="u-align-right u-container-style u-layout-cell u-right-cell u-size-30 u-layout-cell-1" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="250">




                            <div>
                                <asp:Label ID="userMenu" runat="server" Text="Label">
                                    <section class="hamburger">

                                        <input id="menu-toggle" type="checkbox" />
                                        <label class='menu-button-container' for="menu-toggle">
                                            <div class='menu-button'></div>
                                        </label>
                                        <ul class="menu" style="width: 150px;">
                                            <li>
                                                <asp:Label ID="uname" runat="server" Text="Hello "></asp:Label></li>
                                            <li><a href="Home.aspx">Home</a></li>
                                            <li><a href="">Booked events</a></li>
                                            <li><a href="UserFunctions/RequestEvent.aspx">Request event</a></li>


                                        </ul>
                                    </section>
                                </asp:Label>
                            </div>
                        </div>



                    </div>
                </div>
            </div>
        </div>
    </header>

    <form id="form1" runat="server">
        <div>
            <h1 style="text-align: center">Request an event</h1>
            <p style="text-align: center">
                        <asp:Label ID="Label1" sty runat="server"></asp:Label>
                        </p>
            <br />
            <table style="margin: auto;" class="auto-style4">
                <tr style="background-color: #1d1d1d;">
                    <td class="auto-style3">
                        <br />
                        Event name:<br />
                        <br />
                        <asp:TextBox ID="eventname" runat="server" required=""></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style2">
                        <br />
                        Time of the event:<br />
                        <br />
                        <asp:TextBox ID="date" runat="server" TextMode="DateTimeLocal" required=""></asp:TextBox>
                        <br />
                    </td>

                </tr>
                <tr style="background-color: #1d1d1d;">
                    <td class="auto-style3">
                        <br />
                        Description :<br />
                        <br />
                        <asp:TextBox ID="desc" runat="server" TextMode="MultiLine" required="" Height="36px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style2">Location:<br />
                        <br />
                        <asp:TextBox ID="loc" runat="server" required=""></asp:TextBox>
                    </td>

                </tr>
                <tr style="background-color: #1d1d1d;">
                    <td class="auto-style3">
                        <br />
                        Upload an image<br />
                        <br />
                        <asp:FileUpload ID="FileUpload1" Style="margin: auto; border: none; cursor: pointer;" accept="image/*" runat="server" required="" />
                        <br />
                        <asp:Label ID="status" runat="server" Text=""></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style2">Activites:<br />
                        <br />
                        <asp:TextBox ID="activity" runat="server" required=""></asp:TextBox>
                    </td>

                </tr>

                <tr style="background-color: #1d1d1d;">
                    <td class="auto-style3">
                        <br />
                        The number of available seats:<br />
                        <br />
                        <asp:TextBox ID="seats" runat="server" TextMode="Number" required=""></asp:TextBox>
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style2">Event type:
                        <br />
                        <br />
                        <asp:DropDownList Style="background-color: #252525; text-align: center" ID="inOut" runat="server" Height="30px" Width="157px">
                            <asp:ListItem Selected="True">Indoors</asp:ListItem>
                            <asp:ListItem>Outdoors</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                    </td>

                </tr>

                <tr>
                    <td colspan="2" style="text-align: center">
                        <br />
                        <br />
                        <asp:Button Style="margin: auto; background-color: #518380; border: none; cursor: pointer; font-size: 18px; height: 50px; width: 200px; border-radius: 100px" ID="request" runat="server" Text="Send Request" OnClick="request_Click" />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>

                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
