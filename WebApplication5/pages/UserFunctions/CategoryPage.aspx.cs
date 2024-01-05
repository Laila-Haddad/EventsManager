using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.pages.UserFunctions
{
    public partial class WebForm2 : System.Web.UI.Page
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
                image.ImageUrl = getImage(username);



            }


        string category = Request.QueryString["cat"];

       
            if (category != null)
            {
                if (category== "art")
                {
                    SqlDataSource1.SelectCommand = "SELECT * FROM [Eventss] where category='Workshop'";
                    title.Text = "Arts & Workshops events";

                }
                else if (category == "concert")
                {
                    title.Text = "Performances & Concerts events";

                    SqlDataSource1.SelectCommand = "SELECT * FROM [Eventss] where category='Performance'";

                }
                else if (category == "sport")
                {
                    title.Text = "Sports & Fitness events";

                    SqlDataSource1.SelectCommand = "SELECT * FROM [Eventss] where category='Sport'";

                }
                else if (category == "camp")

                {
                    title.Text = "Camping & Outdoors events";

                    SqlDataSource1.SelectCommand = "SELECT * FROM [Eventss] where category='Camping'";
                }
                else
                {
                    SqlDataSource1.SelectCommand = "SELECT * FROM [Eventss]";
                }
            }
            else {
               
                SqlDataSource1.SelectCommand = "SELECT * FROM [Eventss]";

            }


            SqlDataSource1.SelectParameters.Clear();
            DataList1.DataBind();

        }

            public string getImage(string username)
            {
                string image = null;

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


            protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}