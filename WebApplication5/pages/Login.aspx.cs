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
            string password = Password.Text;
            string role = DropDownList1.SelectedValue;

            //open connetion
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString);
            conn.Open();

            //build query depending on dropdown list role choice
            string query= "SELECT * FROM "+role+"s WHERE username=@username AND password = @password ";
            SqlCommand cmd = new SqlCommand(query, conn);

            //build prepared statement
            cmd.Prepare();
            cmd.Parameters.AddWithValue("@username", name);
            cmd.Parameters.AddWithValue("@password", password);
            SqlDataReader data = cmd.ExecuteReader();

            //read the resultset
            bool read = data.Read();
            if (read)
            {
                //set a session variable with the user role
                Session["UserRole"] = role;
                Session["Username"] = name;

                if (role.Equals("Admin"))
                {
                    Response.Redirect("~/pages/AdminPage.aspx");
                }

                else if (role.Equals("Moderator"))
                {
                    //ADD MOD PAGE
                   Response.Redirect("~/pages/ModeratorPage.aspx");
                }

                else if (role.Equals("User"))
                {
                   Response.Redirect("~/pages/Home.aspx");
                }

            }
            else
            {
                Label1.Text = "invalid name or password";
            }

            conn.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Username_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Email_TextChanged(object sender, EventArgs e)
        {

        }
    }
}