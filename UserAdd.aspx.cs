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
    public partial class User_Add : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["dj"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "INSERT INTO jlr(Username,Email,FirstName,Role,LastName,status,contact) " +
                                                   "VALUES(@Username, @Email, @FirstName, @Role, @LastName, @status, @contact)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Username", txtuser.Text);
                    cmd.Parameters.AddWithValue("@Email", txtemail.Text);
                    cmd.Parameters.AddWithValue("@FirstName", txtfirst.Text);
                    cmd.Parameters.AddWithValue("@Role", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@LastName", txtlast.Text); ;
                    cmd.Parameters.AddWithValue("@status", DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@contact", txtphone.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Label1.Text = "Registered successfully";
                }
            }
        
    }
    }
}