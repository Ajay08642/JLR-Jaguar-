using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jaguar
{
    public partial class Register : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dj"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
          
        protected void Button1_Click1(object sender, EventArgs e)
         {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    string query = "INSERT INTO jlr(SrNo,DealerID,FirstName, LastName,Username, Role, Email, contact, status,CreatedOn) " +
                                   "VALUES(@SrNo,@DealerID,@FirstName,@LastName,@Username, @Role, @Email, @contact, @status,@CreatedOn)";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {

                        cmd.Parameters.AddWithValue("@SrNo", txtsr.Text);
                        cmd.Parameters.AddWithValue("@DealerID", txtdeal.Text);
                        cmd.Parameters.AddWithValue("@FirstName", txtfirst.Text);
                        cmd.Parameters.AddWithValue("@LastName", txtlast.Text);
                        cmd.Parameters.AddWithValue("@Username", txtuser.Text);
                        cmd.Parameters.AddWithValue("@Role", txtrole.Text);
                        cmd.Parameters.AddWithValue("@Email", txtemail.Text);
                        cmd.Parameters.AddWithValue("@contact", txtcontact.Text);
                        cmd.Parameters.AddWithValue("@status", txtstatus.Text);
                        cmd.Parameters.AddWithValue("@CreatedOn", txtcreate.Text);





                        con.Open();
                        cmd.ExecuteNonQuery();
                        Label1.Text = "Registered successfully";
                    }
                }
            }

        }
    }
    