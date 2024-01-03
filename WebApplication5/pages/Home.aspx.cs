using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.pages
{
    public partial class WebForm3 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)

        {
            //if the user isnt logged in their session is null
             if (Session["UserRole"] == null)

            {
                //show the login and register buttons, and hide the user personal menu
                login.Style["display"] = "block";
                register.Style["display"] = "block";
               userMenu.Style["display"] = "none";

            }
            else
            {
                //stringfy the user name from their session to include it in the personal menu
               string username = (string)Session["Username"];

                login.Style["display"] = "none";
                register.Style["display"] = "none";
                userMenu.Style["display"] = "block";

                uname.Text +=" "+ username +"!";
            }

        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["UserRole"] = null;
            System.Web.Security.FormsAuthentication.SignOut();

            PurgeSession();

            Response.Redirect("~/pages/Login.aspx");


        }

        private void PurgeSession()
        {
            try
            {
                Session.Clear();
            }
            catch (Exception) { }

            try
            {
                Session.Abandon();
            }
            catch (Exception) { }

            try
            {
                Session.RemoveAll();
            }
            catch (Exception) { }

            try
            {
                Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId")
                { Expires = DateTime.Now.AddYears(-1) });
            }
            catch (Exception) { }
        }
    }
}