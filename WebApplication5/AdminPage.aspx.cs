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

        }

        protected void password_TextChanged(object sender, EventArgs e)
        {

        }

        private void AddUser(string username, string password, string email, string role)
        {
            // Your connection string key from web.config
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBconnection"].ConnectionString;

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

        protected void addbtn_Click(object sender, EventArgs e)
        {
            string uname = username.Text;
            string pass = password.Text;
            string eml = email.Text;
            string rol = role.SelectedValue;

            AddUser(uname, pass, eml , rol);

        }
    }
}