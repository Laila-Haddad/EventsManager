using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.pages.UserFunctions
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
            
        {
      
                //if the user isnt logged in their session is null
                if (Session["UserRole"] == null)

                {
                    Response.Redirect("../Login.aspx");
                    login.Style["display"] = "block";
                    register.Style["display"] = "block";

                }
                else
                {
                    string username = (string)Session["Username"];

                    login.Style["display"] = "none";
                    register.Style["display"] = "none";

                    uname.Text += " " + username + "!";
                    image.ImageUrl = getImage(username);

                }
            SqlDataSource1.SelectCommand = "SELECT E.* FROM BookedEvents B JOIN Eventss E ON E.EventID = B.EventID";

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



       
        
       
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            
        }


       
    }

}