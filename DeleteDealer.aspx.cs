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
    public partial class DeleteDealer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                string dealerID = Request.QueryString["id"].ToString();
                string constr = ConfigurationManager.ConnectionStrings["dj"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("DELETE FROM jlr WHERE DealerID=@dealerID", con))
                    {
                        cmd.Parameters.AddWithValue("@DealerID", dealerID);
                        con.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            Response.Write("delte sucessfully");
                        }
                        else
                        {

                        }
                    }
                }
                Response.Redirect("new.aspx");
            }

        }
    }
}