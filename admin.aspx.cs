using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jaguar
{
    public partial class admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-T6G9GPP;Initial Catalog=AJAY;Integrated Security=True");
        private object password;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAddRole_Click(object sender, EventArgs e)
        {
            string username = txtusername.Text;
            string password = txtpassword.Text;
            string userRole = ddlAppRole.SelectedValue;
            string status = ddlStatus.SelectedValue;


            string message = $"User Added: Username - {username}, Role - {userRole}, Status - {status}";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('{message}');", true);

            txtusername.Text = "";
            txtpassword.Text = "";
            ddlAppRole.SelectedIndex = 0; // Set dropdown back to the first item (Admin)
            ddlStatus.SelectedIndex = 0;
        }


        protected void btnregister_Click(object sender, EventArgs e)
        {

            //string connectionString = "Your_Connection_String_Here"; // Retrieve from web.config

            string username = txtusername.Text;
            string email = txtmail.Text;
            string firstName = txtfname.Text;
            string lastName = txtlname.Text;
            string phone = txtphone.Text;
      
            string role = ddlAppRole.SelectedValue;
            string status = ddlStatus.SelectedValue;
            string password = txtpassword.Text;

            string query = "INSERT INTO jlr (Username, Email, FirstName, LastName, contact,  Role, status,password)" +
                           "VALUES (@Username, @Email, @FirstName, @LastName, @contact,  @Role, @status,@password)";

            {
                using (SqlCommand command = new SqlCommand(query, con))
                {
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@FirstName", firstName);
                    command.Parameters.AddWithValue("@LastName", lastName);
                    command.Parameters.AddWithValue("@contact", phone);
                 
                    command.Parameters.AddWithValue("@Role", role);
                    command.Parameters.AddWithValue("@status", status);
                    command.Parameters.AddWithValue("@password", password);

                    con.Open();
                    command.ExecuteNonQuery();
                }
            }

            // Optionally, you can display a success message or redirect the user to another page
            Response.Write("User registered successfully!");
            //Response.Redirect("Login.aspx");
        }

        
    }
}
