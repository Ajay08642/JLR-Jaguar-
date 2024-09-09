

using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jaguar
{
    public partial class _new : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();

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

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {

        }
        //[System.Web.Services.WebMethod]
        //public static string Aj(int id)
        //{
        //    string constr = ConfigurationManager.ConnectionStrings["dj"].ConnectionString;
        //    using (SqlConnection con = new SqlConnection(constr))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("DELETE FROM jlr WHERE DealerID=@DealerID"))
        //        {
        //            cmd.Parameters.AddWithValue("@id", id);
        //            con.Open();
        //            int rowsAffected = cmd.ExecuteNonQuery();
        //            if (rowsAffected > 0)
        //            {
        //                return "{ \"status\": \"success\" }";
        //            }
        //            else
        //            {
        //                return "{ \"status\": \"failed\" }";
        //            }
        //        }
        //    }
        //}

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click2(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click3(object sender, EventArgs e)
        {
            //{
            //    string constr = ConfigurationManager.ConnectionStrings["dj"].ConnectionString;
            //    using (SqlConnection con = new SqlConnection(constr))
            //    {
            //        using (SqlCommand cmd = new SqlCommand("DELETE FROM jlr WHERE DealerID=@DealerID"))
            //        {
            //            cmd.Parameters.AddWithValue("@DealerID", DealerID.Text);
            //            con.Open();
            //            int rowsAffected = cmd.ExecuteNonQuery();
            //            if (rowsAffected > 0)
            //            {
                          
            //            }
            //            else
            //            {
            //                ;
            //            }
            //        }
            //    }
            //}
        }
        [System.Web.Services.WebMethod]
        public static string Kk(int id)
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



        protected void LinkButton5_Click(object sender, EventArgs e)
        {

        }
    }
}
