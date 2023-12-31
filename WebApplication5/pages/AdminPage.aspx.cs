using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.pages
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["UserRole"] == null || (string)Session["UserRole"] != "Admin")
            {
                // if null or not admin redirect to unauthorized access page
                Response.Redirect("~/pages/UnauthorizedAccess.aspx");
            }
        }
    }
}