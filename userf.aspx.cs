////using System;
////using System.Collections.Generic;
////using System.Configuration;
////using System.Data.SqlClient;
////using System.Data;
////using System.Linq;
////using System.Web;
////using System.Web.UI;
////using System.Web.UI.WebControls;
////using System.Reflection.Emit;

////namespace Jaguar
////{
////    public partial class ua : System.Web.UI.Page
////    {
////        protected void Page_Load(object sender, EventArgs e)
////        {

////            if (!this.IsPostBack)
////            {
////                this.BindGrid();



////            }

////        }
////        private void BindGrid()
////        {
////            string constr = ConfigurationManager.ConnectionStrings["dj"].ConnectionString;
////            using (SqlConnection con = new SqlConnection(constr))
////            {
////                string query = "SELECT * FROM jlr";
////                using (SqlDataAdapter sda = new SqlDataAdapter(query, con))
////                {

////                    DataTable dt = new DataTable();
////                    sda.Fill(dt);
////                    GridView1.DataSource = dt;
////                    GridView1.DataBind();

////                    GridView1.UseAccessibleHeader = true;
////                    if (GridView1.HeaderRow != null)
////                    {
////                        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
////                    }


////                }




////            }
////        }
////        [System.Web.Services.WebMethod]
////        public static string Kk(int id)
////        {
////            string constr = ConfigurationManager.ConnectionStrings["dj"].ConnectionString;
////            using (SqlConnection con = new SqlConnection(constr))
////            {
////                using (SqlCommand cmd = new SqlCommand("DELETE FROM jlr WHERE DealerID=@DealerID"))
////                {
////                    cmd.Parameters.AddWithValue("@DealerID", id);
////                    con.Open();
////                    int rowsAffected = cmd.ExecuteNonQuery();
////                    if (rowsAffected > 0)
////                    {
////                        return "{ \"status\": \"success\" }";
////                    }
////                    else
////                    {
////                        return "{ \"status\": \"failed\" }";
////                    }
////                }
////            }
////        }
////        protected void LinkButton4_Click(object sender, EventArgs e)
////        {
////            int dealerID = 1; // This ID can be dynamic based on your requirement
////            string result = Kk(dealerID);
////            Label12.Text = result;
////        }
////    }
////}


//using System;
//using System.Configuration;
//using System.Data.SqlClient;
//using System.Data;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace Jaguar
//{
//    public partial class ua : System.Web.UI.Page
//    {
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
//                string query = "SELECT * FROM jlr";
//                using (SqlDataAdapter sda = new SqlDataAdapter(query, con))
//                {
//                    DataTable dt = new DataTable();
//                    sda.Fill(dt);
//                    GridView1.DataSource = dt;
//                    GridView1.DataBind();

//                    GridView1.UseAccessibleHeader = true;
//                    if (GridView1.HeaderRow != null)
//                    {
//                        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
//                    }
//                }
//            }
//        }

//        [System.Web.Services.WebMethod]
//        public static string Kk(int id)
//        {
//            string constr = ConfigurationManager.ConnectionStrings["dj"].ConnectionString;
//            using (SqlConnection con = new SqlConnection(constr))
//            {
//                using (SqlCommand cmd = new SqlCommand("DELETE FROM jlr WHERE DealerID=@DealerID"))
//                {
//                    cmd.Parameters.AddWithValue("@DealerID", id);
//                    con.Open();
//                    int rowsAffected = cmd.ExecuteNonQuery();
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
//            LinkButton linkButton = (LinkButton)sender;
//            int dealerID = Convert.ToInt32(linkButton.CommandArgument);
//            string result = Kk(dealerID);
//            Label12.Text = result;
//            BindGrid(); // Re-bind the GridView to reflect changes
//        }
//    }
//}
using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jaguar
{
    public partial class ua : System.Web.UI.Page
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
                string query = "SELECT * FROM jlr";
                using (SqlDataAdapter sda = new SqlDataAdapter(query, con))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    GridView1.UseAccessibleHeader = true;
                    if (GridView1.HeaderRow != null)
                    {
                        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
                    }
                }
            }
        }

        [System.Web.Services.WebMethod]
        public static string Kk(int id)
        {
            string constr = ConfigurationManager.ConnectionStrings["dj"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM jlr WHERE DealerID=@DealerID", con)) 
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
            LinkButton linkButton = (LinkButton)sender;
            int dealerID = Convert.ToInt32(linkButton.CommandArgument);
            string result = Kk(dealerID);
            Label12.Text = result;
            BindGrid(); // Re-bind the GridView to reflect changes
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

        }
    }
}

