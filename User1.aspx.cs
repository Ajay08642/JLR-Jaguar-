using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;



using System.Web.Services;

namespace Jaguar
{
    public partial class User : System.Web.UI.Page
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
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM jlr", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }





        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();


        }
       
        [System.Web.Services.WebMethod]
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {


          

        }
        //[System.Web.Services.WebMethod]
        //public static string LinkButton5_Click(int id)
        //{
        //    string constr = ConfigurationManager.ConnectionStrings["dj"].ConnectionString;
        //    using (SqlConnection con = new SqlConnection(constr))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("DELETE FROM jlr WHERE DealerID=@DealerID"))
        //        {
        //            cmd.Parameters.AddWithValue("@DealerID", id);
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

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

        }
    }
}
















