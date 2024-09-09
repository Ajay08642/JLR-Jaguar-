//using System;
//using System.Collections.Generic;
//using System.Configuration;
//using System.Data.SqlClient;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Data;
//using System.Web.UI.WebControls;

//namespace Jaguar
//{
//    public partial class UserUpdate : System.Web.UI.Page
//    {
//        string constr = ConfigurationManager.ConnectionStrings["dj"].ConnectionString;
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            UserDataLoad();
//        }

//        public void UserDataLoad()
//        {
//            using (SqlConnection con = new SqlConnection(constr))
//            {
//                con.Open();
//                SqlCommand CMD = new SqlCommand("SELECT * FROM jlr where Username=@Username", con);
//                CMD.Parameters.AddWithValue("@Username", Session["Username"]);
//                SqlDataReader dr = CMD.ExecuteReader();
//                if (dr.Read())
//                {
//                    txtuser.Text = dr[3].ToString();
//                    txtemail.Text = dr[5].ToString();
//                    txtfirst.Text = dr[1].ToString();
//                    DropDownList1.SelectedValue = dr[4].ToString();

//                    txtlast.Text = dr[2].ToString();
//                    DropDownList2.SelectedValue = dr[7].ToString();
//                    txtphone.Text = dr[6].ToString();
//                }
//                dr.Close();
//            }


//        }
//        protected void Unnamed_Click(object sender, EventArgs e)
//        {
//            try
//            {
//                using (SqlConnection con = new SqlConnection(constr))
//                {
//                    con.Open();
//                    SqlCommand cmd = new SqlCommand("update jlr set Username=@Username,Email=@Email,FirstName=@FirstName,Role=@Role,LastName=@LastName,status=@status,contact=@contact ", con);
//                    cmd.Parameters.AddWithValue("@Username", Session["Username"]);
//                    cmd.Parameters.AddWithValue("@Email", txtemail.Text);
//                    cmd.Parameters.AddWithValue("FirstName", txtfirst.Text);
//                    cmd.Parameters.AddWithValue("@Role", DropDownList1.SelectedValue);
//                    cmd.Parameters.AddWithValue("@LastName", txtlast.Text);
//                    cmd.Parameters.AddWithValue("@status", DropDownList2.SelectedValue);
//                    cmd.Parameters.AddWithValue("@contact", txtphone.Text);

//                    cmd.ExecuteNonQuery();

//                }
//            }
//    }
//    } }

using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace Jaguar
{
    public partial class UserUpdate : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["dj"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UserDataLoad();
            }
        }

        public void UserDataLoad()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                SqlCommand CMD = new SqlCommand("SELECT * FROM jlr WHERE Username = @Username", con);
                CMD.Parameters.AddWithValue("@Username", Session["Username"].ToString());
                SqlDataReader dr = CMD.ExecuteReader();
                if (dr.Read())
                {
                    txtuser.Text = dr["Username"].ToString();
                    txtemail.Text = dr["Email"].ToString();
                    txtfirst.Text = dr["FirstName"].ToString();
                    DropDownList1.SelectedValue = dr["Role"].ToString();
                    txtlast.Text = dr["LastName"].ToString();
                    DropDownList2.SelectedValue = dr["status"].ToString();
                    txtphone.Text = dr["contact"].ToString();
                }
                dr.Close();
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("UPDATE jlr SET Email = @Email, FirstName = @FirstName, Role = @Role, LastName = @LastName, status = @status, contact = @contact WHERE Username = @Username", con);
                    cmd.Parameters.AddWithValue("@Username", Session["Username"].ToString());
                    cmd.Parameters.AddWithValue("@Email", txtemail.Text);
                    cmd.Parameters.AddWithValue("@FirstName", txtfirst.Text);
                    cmd.Parameters.AddWithValue("@Role", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@LastName", txtlast.Text);
                    cmd.Parameters.AddWithValue("@status", DropDownList2.SelectedValue);
                    cmd.Parameters.AddWithValue("@contact", txtphone.Text);

                    cmd.ExecuteNonQuery();
                }

               
                Response.Write("<script>alert('User details updated successfully.');</script>");
            }
            catch (Exception ex)
            {
                
                Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
            }
        }
    }
}
