using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //extract info from the page
            string name = Username.Text;
            string email = Email.Text;
            string password = Password.Text;
            string role = DropDownList1.SelectedValue;

            //open connetion
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString);
            conn.Open();

            //build query depending on dropdown list role choice
            string query;
            if (role == "admin")
            {
                query = "SELECT * FROM [Admins] WHERE Username=@username AND email = @email AND password = @password ";
            }
            else if (role =="moderator")
            {
                query = "SELECT * FROM [Moderators] WHERE  Username=@username AND email = @email AND password = @password";
            }
            else
            {
                query = "SELECT * FROM [Users] WHERE  Username=@username AND email = @email AND password = @password";

            }
            SqlCommand cmd = new SqlCommand(query, conn);

            //build prepared statement
            cmd.Prepare();
            cmd.Parameters.AddWithValue("@username", name);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@password", password);
            SqlDataReader data = cmd.ExecuteReader();

            //read the resultset
            bool read = data.Read();
            if (read)
            {
                if (role.Equals("admin"))
                {
                    //set a session variable with the user role
                    Session["UserRole"] = role;
                    //redirect to desired page
                    Response.Redirect("~/pages/AdminPage.aspx");
                }

                else Label1.Text = "not admin";
            }

            conn.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}