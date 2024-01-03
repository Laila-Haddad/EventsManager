using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.pages.UserFunctions
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string image;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserRole"] == null)
            {
                Response.Redirect("~/pages/login.aspx");

            }
        }

        protected void upload_Click(object sender, EventArgs e)
        {

        }


        protected void request_Click(object sender, EventArgs e)
        {
            //get user id
            string username = (string)Session["Username"];
            int userID = GetUserID(username);

            //get all the event information from the form
            int numSeats = parseToInt(seats.Text);
            string eventName = eventname.Text, location = loc.Text, activities = activity.Text, description = desc.Text, indoorOutdoor = inOut.Text;
           
            DateTime time;
            DateTime.TryParse(date.Text, out DateTime selectedDateTime);
            time = selectedDateTime;

            //handle image upload
            string fn = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
            string SaveLocation = Server.MapPath("upload") + "\\" + fn;
            image = SaveLocation;
            try
            {
                FileUpload1.PostedFile.SaveAs(SaveLocation);
            }

            catch (Exception ex)
            {
                status.Text = "Error: " + ex.Message;
            }

            
            RequestEvent(userID, eventName, time, location, activities, description, numSeats, indoorOutdoor, image);

        }




        private void RequestEvent(int userID, string eventName, DateTime time, string location, string activities, string description, int numSeats, string indoorOutdoor, string image)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            string insertQuery = "INSERT INTO EventRequests (UserID, EventName, Time, Location, Activities, Description, NumSeats, IndoorOutdoor,Images) " +
                                 "VALUES (@UserID, @EventName, @Time, @Location, @Activities, @Description, @NumSeats, @IndoorOutdoor,@Images)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(insertQuery, connection))
                {
                    // Use parameters to prevent SQL injection
                    command.Parameters.AddWithValue("@UserID", userID);
                    command.Parameters.AddWithValue("@EventName", eventName);
                    command.Parameters.AddWithValue("@Time", time);
                    command.Parameters.AddWithValue("@Location", location);
                    command.Parameters.AddWithValue("@Activities", activities);
                    command.Parameters.AddWithValue("@Description", description);
                    command.Parameters.AddWithValue("@NumSeats", numSeats);
                    command.Parameters.AddWithValue("@IndoorOutdoor", indoorOutdoor);
                    command.Parameters.AddWithValue("@Images", image);


                    try
                    {
                        connection.Open();

                        // Execute the insert query
                        command.ExecuteNonQuery();
                        Label1.Text = "request successful";

                    }
                    catch (Exception ex)
                    {
                        Label1.Text = "error occured";

                    }
                }
            }



        }

        private int parseToInt(string value)
        {
            
            int.TryParse(value, out int num);
            return num;

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

    }

}