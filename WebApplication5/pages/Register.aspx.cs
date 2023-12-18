using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplication5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /*private bool IsValidUser(string username, string password)
        {
            // Validate user credentials from the database
            // Return true if the user is valid, otherwise false
            string connectionString = ConfigurationManager.ConnectionStrings["YourConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT COUNT(*) FROM Users WHERE userName = @Username AND password = @Password";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);

                    int count = Convert.ToInt32(command.ExecuteScalar());
                    return count > 0;
                }
            }
         
        }*/


    /*    private void AssignRoles(string username)
        {
            // Retrieve roles for the user from the database
            // and use Roles.AddUserToRole(username, roleName) to assign roles

            string connectionString = ConfigurationManager.ConnectionStrings["YourConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT Role FROM Users WHERE Username = @Username";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Username", username);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            string role = reader["Role"].ToString();

                            // Assign the user to the appropriate role
                            switch (role)
                            {
                                case "Admin":
                                    Roles.AddUserToRole(username, "Admin");
                                    break;
                                case "Moderator":
                                    Roles.AddUserToRole(username, "Moderator");
                                    break;
                                case "User":
                                    Roles.AddUserToRole(username, "User");
                                    break;
                                // Add more cases if needed for additional roles
                                default:
                                    // Handle any unexpected roles
                                    break;
                            }
                        }
                    }
                }
            }
        }*/

        private void AddUser(string username, string password,string email) {
            // Your connection string key from web.config
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            // SQL query to insert a new user into the Users table
            string insertQuery = "INSERT INTO Users (username, password,email) VALUES (@Username, @Password,@Email)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(insertQuery, connection))
                {
                    // Use parameters to prevent SQL injection
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);
                    command.Parameters.AddWithValue("@Email", email);

                    connection.Open();

                    // Execute the insert query
                    command.ExecuteNonQuery();
                }
            }

            Response.Write("User added successfully!");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string uname = userName.Text;
            string pass = password.Text;
            string eml = email.Text;

            AddUser(uname, pass, eml);

            Label1.Text = "Registerd ";

            /* if (IsValidUser(u, p))
             {
                // FormsAuthentication.RedirectFromLoginPage(u, false);
                 // Assign roles if needed
                 //AssignRoles(u);
             }
             else
             {
                 Label1.Text = "Invalid username or password.";
             }*/

        }

        protected void userName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void password_TextChanged(object sender, EventArgs e)
        {

        }
    }
}