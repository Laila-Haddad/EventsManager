using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.pages.ModeratorsFunctions
{
    public partial class ViewUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserRole"] == null || (string)Session["UserRole"] != "Moderator")
            {
                // if null or not admin redirect to unauthorized access page
                Response.Redirect("~/pages/UnauthorizedAccess.aspx");
            }
        }
    }
}