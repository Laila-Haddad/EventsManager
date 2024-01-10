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

     
        private bool VerifyEmailExistsOnce(string email, string username)
        {
            // Your connection string key from web.config
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            string selectQuery;
           
                // SQL query to check if the email exists in the Admins table
                selectQuery = "SELECT COUNT(*) FROM Users WHERE email = @Email OR username=@Username ";


            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(selectQuery, connection))
                {
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Username", username);


                    connection.Open();

                    int count = (int)command.ExecuteScalar();

                    // If count is greater than 0, the email already exists
                    return count > 0;
                }
            }
        }
        private void AddUser(string username, string password, string email, string phoneNumber, string image) {
           
            
            // Your connection string key from web.config
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            // SQL query to insert a new user into the Users table
            string insertQuery = "INSERT INTO Users (username, password,email,phoneNumber,image) VALUES (@Username, @Password,@Email,@phoneNumber, @image)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(insertQuery, connection))
                {
                    // Use parameters to prevent SQL injection
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@phoneNumber", phoneNumber);
                    command.Parameters.AddWithValue("@image", image);



                    connection.Open();

                    // Execute the insert query
                    command.ExecuteNonQuery();
                }
            }


            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string uname = userName.Text;
            string pass = password.Text;
            string eml = email.Text;
            string phon =phone.Text ;

            //handle image upload
            string fn = System.IO.Path.GetFileName(file.PostedFile.FileName);
            string image = "UserFunctions/upload/" + fn;

            string rootedPath = Server.MapPath(image);

            try
            {
                file.PostedFile.SaveAs(rootedPath);
            }

            catch (Exception ex)
            {
                //file.Text = "Error: " + ex.Message;
            }

            if (!VerifyEmailExistsOnce(eml, uname))
            {
                AddUser(uname, pass, eml, phon, image);

                Session["UserRole"] = "User";
                Session["Username"] = uname;
                Response.Redirect("~/pages/Home.aspx");
                

            }
            else
            {
                Label2.Text = "User already exists";
            }

        }

        protected void userName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void password_TextChanged(object sender, EventArgs e)
        {

        }

        protected void email_TextChanged(object sender, EventArgs e)
        {

        }
    }
}