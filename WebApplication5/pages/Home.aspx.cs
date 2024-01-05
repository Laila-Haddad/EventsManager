using System;
using System.Data.SqlClient;
using System.Web;

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

                uname.Text += " " + username + "!";    
                image.ImageUrl= getImage(username); 
            }

        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("UserRole");
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


        public string getImage(string username)
        {
            string image=null;

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            string selectQuery = "SELECT image FROM Users WHERE username=@Username ";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(selectQuery, connection))
                {
                    command.Parameters.AddWithValue("@Username", username);
                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        try
                        {
                            if (reader.Read())
                            {
                                image = reader.GetString(0);

                            }
                        }
                        catch { }
                    }
                }
            }


            return image;
        }
    }
}