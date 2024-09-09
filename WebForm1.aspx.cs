//using System;
//using System.Collections.Generic;
//using System.Data.SqlClient;
//using System.Data;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using System.Configuration;

//namespace Jaguar
//{
//    public partial class WebForm1 : System.Web.UI.Page
//    {


//        //using System;
//        //using System.Data;
//        //using System.Data.SqlClient;
//        //using System.Web.UI;

//        //namespace YourNamespace
//        //{
//        //    public partial class Default : Page
//        //    {
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            if (!IsPostBack)
//            {
//                BindGrid();
//            }
//        }

//        private void BindGrid()
//        {
//            string constr = ConfigurationManager.ConnectionStrings["dj"].ConnectionString;
//            using (SqlConnection con = new SqlConnection(constr))
//            {
//                using (SqlCommand cmd = new SqlCommand("SELECT * FROM jlr"))
//                {
//                    using (SqlDataAdapter sda = new SqlDataAdapter())
//                    {
//                        cmd.Connection = con;
//                        sda.SelectCommand = cmd;
//                        using (DataTable dt = new DataTable())
//                        {
//                            sda.Fill(dt);
//                            GridView1.DataSource = dt;
//                            GridView1.DataBind();
//                        }
//                    }
//                }
//            }
//        }

//        //[System.Web.Services.WebMethod]
//        //public static string AddUser(string city, string username, string mobile, string email)
//        //{
//        //    string constr = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
//        //    using (SqlConnection con = new SqlConnection(constr))
//        //    {
//        //        using (SqlCommand cmd = new SqlCommand("INSERT INTO Users (City, Name, Mobile, Email) VALUES (@City, @Name, @Mobile, @Email)"))
//        //        {
//        //            cmd.Parameters.AddWithValue("@City", city);
//        //            cmd.Parameters.AddWithValue("@Name", username);
//        //            cmd.Parameters.AddWithValue("@Mobile", mobile);
//        //            cmd.Parameters.AddWithValue("@Email", email);
//        //            cmd.Connection = con;
//        //            con.Open();
//        //            int rowsAffected = cmd.ExecuteNonQuery();
//        //            con.Close();
//        //            if (rowsAffected > 0)
//        //            {
//        //                return "{ \"status\": \"true\" }";
//        //            }
//        //            else
//        //            {
//        //                return "{ \"status\": \"false\" }";
//        //            }
//        //        }
//        //    }
//        //}

//        //[System.Web.Services.WebMethod]
//        //public static string UpdateUser(int id, string city, string username, string mobile, string email)
//        //{
//        //    string constr = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
//        //    using (SqlConnection con = new SqlConnection(constr))
//        //    {
//        //        using (SqlCommand cmd = new SqlCommand("UPDATE Users SET City=@City, Name=@Name, Mobile=@Mobile, Email=@Email WHERE Id=@Id"))
//        //        {
//        //            cmd.Parameters.AddWithValue("@Id", id);
//        //            cmd.Parameters.AddWithValue("@City", city);
//        //            cmd.Parameters.AddWithValue("@Name", username);
//        //            cmd.Parameters.AddWithValue("@Mobile", mobile);
//        //            cmd.Parameters.AddWithValue("@Email", email);
//        //            cmd.Connection = con;
//        //            con.Open();
//        //            int rowsAffected = cmd.ExecuteNonQuery();
//        //            con.Close();
//        //            if (rowsAffected > 0)
//        //            {
//        //                return "{ \"status\": \"true\" }";
//        //            }
//        //            else
//        //            {
//        //                return "{ \"status\": \"false\" }";
//        //            }
//        //        }
//        //    }
//        //}

//        [System.Web.Services.WebMethod]
//        public static string LinkButton5_Click(int id)
//        {
//            string constr = ConfigurationManager.ConnectionStrings["dj"].ConnectionString;
//            using (SqlConnection con = new SqlConnection(constr))
//            {
//                using (SqlCommand cmd = new SqlCommand("DELETE FROM jlr WHERE DealerID=@DealerID"))
//                {
//                    cmd.Parameters.AddWithValue("@DealerID", id);
//                    cmd.Connection = con;
//                    con.Open();
//                    int rowsAffected = cmd.ExecuteNonQuery();
//                    con.Close();
//                    if (rowsAffected > 0)
//                    {
//                        return "{ \"status\": \"success\" }";
//                    }
//                    else
//                    {
//                        return "{ \"status\": \"failed\" }";
//                    }
//                }
//            }
//        }

//        protected void LinkButton4_Click(object sender, EventArgs e)
//        {

//        }

//        //[System.Web.Services.WebMethod]
//        //public static string GetSingleData(int id)
//        //{
//        //    string constr = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
//        //    using (SqlConnection con = new SqlConnection(constr))
//        //    {
//        //        using (SqlCommand cmd = new SqlCommand("SELECT Id, Name, Email, Mobile, City FROM Users WHERE Id=@Id"))
//        //        {
//        //            cmd.Parameters.AddWithValue("@Id", id);
//        //            cmd.Connection = con;
//        //            con.Open();
//        //            SqlDataReader reader = cmd.ExecuteReader();
//        //            string jsonData = "";
//        //            if (reader.Read())
//        //            {
//        //                jsonData = "{ \"id\": \"" + reader["Id"] + "\", \"username\": \"" + reader["Name"] + "\", \"email\": \"" + reader["Email"] + "\", \"mobile\": \"" + reader["Mobile"] + "\", \"city\": \"" + reader["City"] + "\" }";
//        //            }
//        //            con.Close();
//        //            return jsonData;
//        //        }
//        //    }
//        //}
//    }
//}

using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;

namespace Jaguar
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["dj"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM jlr", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        GridView.DataSource = dt;
                        GridView.DataBind();
                    }
                }
            }
        }

        [System.Web.Services.WebMethod]
        public static string LinkButton5_Click(int id)
        {
            string constr = ConfigurationManager.ConnectionStrings["dj"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM jlr WHERE DealerID=@DealerID"))
                {
                    cmd.Parameters.AddWithValue("@DealerID", id);
                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        return "{ \"status\": \"success\" }";
                    }
                    else
                    {
                        return "{ \"status\": \"failed\" }";
                    }
                }
            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            // Add your event handling code here
        }
    }
}
