using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication5
{
    public partial class WebForm2 : System.Web.UI.Page
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

        protected void addbtn_Click(object sender, EventArgs e)
        {
            string name = username.Text;
            string pass = password.Text;
            string eml = email.Text;
            string rol = role.SelectedValue;
            AddUser(name, pass, eml , rol);

        }



        private void AddUser(string username, string password, string email, string role)
        {
            // Your connection string key from web.config
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            string insertQuery;

            if (role == "Admin")
            {
                // SQL query to insert a new user into the Users table
                insertQuery = "INSERT INTO Admins (username, password,email) VALUES (@Username, @Password,@Email)";

            }
            else
            {
                // SQL query to insert a new user into the Users table
                insertQuery = "INSERT INTO Moderators (username, password,email) VALUES (@Username, @Password,@Email)";

            }

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

    }
}