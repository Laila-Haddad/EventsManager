using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication5.pages
{
    public partial class ModeratorPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserRole"] == null || (string)Session["UserRole"] != "Moderator")
            {
                // if null or not admin redirect to unauthorized access page
                Response.Redirect("~/pages/UnauthorizedAccess.aspx");
            }
        }




        protected void addbtn_Click(object sender, EventArgs e)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString4"].ConnectionString;

            string deleteQuery;
            string addReport;
            deleteQuery = "DELETE FROM EventRequests WHERE RequestID = @requestid";
            addReport = "INSERT INTO Reports(reason,reportedUserId) VALUES  (@reason,@reportedUserId)";

            string requestid = exampleInputRequestID1.Text;
            string reportedUserId = exampleInputUserID1.Text;
            string reason = exampleInputReport1.Text;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(deleteQuery, connection))
                {
                    using (SqlCommand command2 = new SqlCommand(addReport, connection))
                    {
                        command.Parameters.AddWithValue("@requestid", requestid);
                        command2.Parameters.AddWithValue("@reportedUserId", reportedUserId);
                        command2.Parameters.AddWithValue("@reason", reason);

                        try
                        {
                            connection.Open();
                            int rowsAffected = command.ExecuteNonQuery();
                            int rowsAffected2 = command2.ExecuteNonQuery();
                            connection.Close();

                            if (rowsAffected > 0 && rowsAffected2 > 0)
                            {
                                Label1.Text = "Request removed successfully.";
                            }
                            else
                            {
                                Label1.Text = "No request found with the specified id.";
                            }
                        }
                        catch (Exception ex)
                        {
                            Label1.Text = "Error: " + ex.Message;
                        }
                    }
                }
            }
        }

        protected void removebtn_Click(object sender, EventArgs e)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString4"].ConnectionString;

            string conferm;
            conferm = "DELETE FROM EventRequests WHERE RequestID = @requestid";
           
            string requestid = TextBox2.Text;
            
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(conferm, connection))
                {
                        command.Parameters.AddWithValue("@requestid", requestid);
                       
                        try
                        {
                            connection.Open();
                            int rowsAffected = command.ExecuteNonQuery();
                            
                            connection.Close();

                            if (rowsAffected > 0 )
                            {
                                Label1.Text = "Request accepted successfully.";
                            }
                            else
                            {
                                Label1.Text = "No request found with the specified id.";
                            }
                        }
                        catch (Exception ex)
                        {
                            Label1.Text = "Error: " + ex.Message;
                        }
                    }
                }
            
        }

        protected void InputRequestID1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void exampleInputUsername1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void exampleInputEmail1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}