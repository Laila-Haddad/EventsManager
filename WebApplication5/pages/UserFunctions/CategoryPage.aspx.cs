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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
            
        {
            if (!Page.IsPostBack)
            {

                //fetch events from database and write them on a txt file
                WriteEventsOnFile();


                //get the category name parameter from the url to display the events related to the category
                string category = Request.QueryString["cat"];
                DisplayCategory(category);



                //if the user isnt logged in their session is null
                if (Session["UserRole"] == null)

                {
                    //show the login and register buttons, and hide the user personal menu
                    login.Style["display"] = "block";
                    register.Style["display"] = "block";

                }
                else
                {
                    //stringfy the user name from their session to include it in the personal menu
                    string username = (string)Session["Username"];

                    login.Style["display"] = "none";
                    register.Style["display"] = "none";

                    uname.Text += " " + username + "!";
                    image.ImageUrl = getImage(username);

                }
            }
           



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



        private void WriteEventsOnFile() { 
           
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            string query = "SELECT * FROM Eventss";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            string filePath = "upload\\Events.txt";

                            string rootedPath = Server.MapPath(filePath);

                            using (StreamWriter writer = new StreamWriter(rootedPath))
                            {
                                while (reader.Read())
                                {
                                    string name = reader["EventName"].ToString();
                                    string desc = reader["Description"].ToString();
                                    string location = reader["Location"].ToString();
                                    string time = reader["Time"].ToString();
                                    string seats = reader["NumSeats"].ToString();
                                    string activites = reader["Activities"].ToString();

                                    writer.WriteLine($"name:{name}\n{desc}\nlocation: {location}\ntime: {time}\nnumber of seats: {seats}\nactivites: {activites}\n\n");
                                }
                            }
                        }
                    }
                }

                Console.WriteLine("Data written to the text file successfully.");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"An error occurred: {ex.Message}");
            }
        
    }

        protected void download_Click(object sender, EventArgs e)
        {
            string fileName = "Events.txt";
            string filePath = Server.MapPath("upload/" + fileName);

            Response.ContentType = "application/octet-stream";
            Response.AddHeader("Content-Disposition", "attachment; filename=" + fileName);

            Response.TransmitFile(filePath);

            Response.End();
        }

        private void DisplayCategory( string category)
        {
            if (category != null)
            {
                if (category == "art")
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
            else
            {

                SqlDataSource1.SelectCommand = "SELECT * FROM [Eventss]";

            }


            SqlDataSource1.SelectParameters.Clear();
            DataList1.DataBind();
        }

        protected void book_Click(object sender, EventArgs e)
        {
           
        }


       
        
        private int GetUserID(string username)
        {
            int userID = -1; // Default value if user ID is not found

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            string selectQuery = "SELECT [id] FROM [dbo].[Users] WHERE [Username] = @Username";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(selectQuery, connection))
                {
                    command.Parameters.AddWithValue("@Username", username);
                    connection.Open();

                    var result = command.ExecuteScalar();

                    int.TryParse(result.ToString(), out userID);

                }
            }
            return userID;
        }

        private int parseToInt(string value)
        {

            int.TryParse(value, out int num);
            return num;

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            try
            {

                if (e.CommandName == "book")
                {
                    string eventID = e.CommandArgument.ToString();

                    BookEvent(eventID);
                }
            }
            catch (Exception ex)
            {

                lblMessage.Text = "An error occurred while booking. Please try again later.";
                Console.WriteLine("Exception: " + ex.Message);
            }
            
        }


        private void BookEvent(string key)
        {
            try
            {
                string username = (string)Session["Username"];
                int userID = GetUserID(username);
                int eventID = parseToInt(key);

                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

                string insertQuery = "INSERT INTO BookedEvents (UserID, EventID) VALUES (@user, @event)";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(insertQuery, connection))
                    {
                        command.Parameters.AddWithValue("@user", userID);
                        command.Parameters.AddWithValue("@event", eventID);

                        connection.Open();

                        int rowsAffected = command.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            lblMessage.Text = "Booking successful!";
                            userMenu.Style["display"] = "block";
                            

                        }
                        else
                        {
                            lblMessage.Text = "Booking failed. Please try again.";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("../Login.aspx");
                lblMessage.Text = "An error occurred while booking. Please try again later.";
                Console.WriteLine("Exception: " + ex.Message);
            }
        }

    }

}