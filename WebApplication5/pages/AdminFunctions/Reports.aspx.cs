using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace WebApplication5.pages.AdminFunctions
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserRole"] == null || (string)Session["UserRole"] != "Admin")
            {
                // if null or not admin redirect to unauthorized access page
                Response.Redirect("~/pages/UnauthorizedAccess.aspx");
            }
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void addbtn_Click(object sender, EventArgs e)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            string deleteQueryfromUsers, deleteQueryfromReports;

            // Assuming "userId" is the TextBox containing the user ID
            string uId = userId.Text;

            // Check if the user ID is a valid integer
            if (int.TryParse(uId, out int userIdValue))
            {
                // SQL query to delete a user with a specific ID from the Moderators table
                deleteQueryfromUsers = "DELETE FROM Users WHERE id = @id";
                deleteQueryfromReports = "DELETE FROM Reports WHERE reportedUserId = @id";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {

                    using (SqlCommand command = new SqlCommand(deleteQueryfromReports, connection))
                    {
                        command.Parameters.AddWithValue("@id", userIdValue);

                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery();

                    }

                    using (SqlCommand command = new SqlCommand(deleteQueryfromUsers, connection))
                    {
                        command.Parameters.AddWithValue("@id", userIdValue);

                        
                        int rowsAffected = command.ExecuteNonQuery();

                        connection.Close();

                    }
              
                }
            }
         
        }

    }
}