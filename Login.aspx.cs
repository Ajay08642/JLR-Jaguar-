using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jaguar
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dj"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {

                Response.Redirect("Dashboard.aspx");
            }
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            string query = "SELECT COUNT(*) FROM jlr WHERE Username=@username AND Password=@password";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username", username.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);

            con.Open();
            int count = (int)cmd.ExecuteScalar();
            con.Close();

            if (count > 0)
            {
                // Valid login, store username in session and redirect to home page
                Session["username"] = username.Text;
                Response.Redirect("Default.aspx");

            }
            else
            {
                // Assuming you're using C# for ASP.net backend

                string alertMessage = "Invalid username or password. Please try again.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + alertMessage + "');", true);

            }
        }

        protected void forgotButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Forget.aspx");
        }
    }
}