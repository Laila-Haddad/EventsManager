using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication5.pages.AdminFunctions
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //check the session variable to see the user role
            if (Session["UserRole"] == null || (string)Session["UserRole"] != "Admin")
            {
                // if null or not admin redirect to unauthorized access page
                Response.Redirect("~/pages/UnauthorizedAccess.aspx");
            }
        }

        protected void password_TextChanged(object sender, EventArgs e)
        {

        }

        protected void removebtn_Click(object sender, EventArgs e)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            string rle = role.SelectedValue;
            string deleteQuery;

            if (rle == "Admin")
            {
                deleteQuery = "DELETE FROM Admins WHERE email = @Email";
            }
            else
            {
                deleteQuery = "DELETE FROM Moderators WHERE email = @Email";
            }

            string Email = TextBox2.Text;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(deleteQuery, connection))
                {
                    command.Parameters.AddWithValue("@Email", Email);

                    try
                    {
                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery();
                        connection.Close();

                        if (rowsAffected > 0)
                        {
                            Label1.Text = "User removed successfully.";
                        }
                        else
                        {
                            Label1.Text = "No user found with the specified email.";
                        }
                    }
                    catch (Exception ex)
                    {
                        Label1.Text = "Error: " + ex.Message;
                    }
                }
            }
        }


        protected void addbtn_Click(object sender, EventArgs e)
        {
            string name = exampleInputUsername1.Text;
            string pass = exampleInputPassword1.Text;
            string eml = exampleInputEmail1.Text;
            string rol = role.SelectedValue;


            if (!VerifyEmailExistsOnce(eml, rol))
            {
                dataEntry.Text = "VerifyEmailExistsOnce";
                AddUser(name, pass, eml, rol);
            }
            else
            {
                dataEntry.Text = "Email already exists. Please choose a different email.";
            }

        }


        private bool VerifyEmailExistsOnce(string email, string role)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            string selectQuery;
            if (role == "Admin")
            {
                // SQL query to check if the email exists in the Admins table
                selectQuery = "SELECT COUNT(*) FROM Admins WHERE email = @Email";
            }
            else
            {
                // SQL query to check if the email exists in the Moderators table
                selectQuery = "SELECT COUNT(*) FROM Moderators WHERE email = @Email";
            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(selectQuery, connection))
                {
                    command.Parameters.AddWithValue("@Email", email);

                    connection.Open();
                    dataEntry.Text = "SqlConnection";
                    int count = (int)command.ExecuteScalar();

                    // If count is greater than 0, the email already exists
                    return count > 0;
                }
            }
        }

        private void AddUser(string username, string password, string email, string role)
        {
           
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            string insertQuery;

            if (role == "Admin")
            {
            
                insertQuery = "INSERT INTO Admins (username, password,email) VALUES (@Username, @Password,@Email)";

            }
            else
            {
                
                insertQuery = "INSERT INTO Moderators (username, password,email) VALUES (@Username, @Password,@Email)";

            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(insertQuery, connection))
                {
                   
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);
                    command.Parameters.AddWithValue("@Email", email);

                    connection.Open();

                    command.ExecuteNonQuery();
                }
            }

            dataEntry.Text = "User Added succedully";
        }

        protected void username_TextChanged(object sender, EventArgs e)
        {

        }

        protected void exampleInputUsername1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}