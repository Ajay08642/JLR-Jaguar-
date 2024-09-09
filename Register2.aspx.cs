using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jaguar
{
    public partial class Register2 : System.Web.UI.Page
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

            if (Session["SrNo"] != null)
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from jlr where SrNo=@SrNo", con);
                    cmd.Parameters.AddWithValue("@SrNo", Session["SrNo"]);
                    SqlDataReader dr = cmd.ExecuteReader();
                    {
                        if (dr.Read())
                        {
                            txtuser.Text = dr["Username"].ToString();
                            txtemail.Text = dr["Email"].ToString();
                            txtfirst.Text = dr["FirstName"].ToString();
                            txtlast.Text = dr["LastName"].ToString();
                            txtphone.Text = dr["contact"].ToString();
                        }
                        dr.Close();
                    }





                }


            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(constr))

                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("update jlr set FirstName=@FirstName,LastName=@LastName,Role=@Role,status=@status,contact=@contact where SrNo=@SrNO", con);
                    cmd.Parameters.AddWithValue("@SrNo", Session["SrNo"]);
                    cmd.Parameters.AddWithValue("@FirstName", txtfirst.Text);
                    cmd.Parameters.AddWithValue("@LastName", txtlast.Text);
                    cmd.Parameters.AddWithValue("@Role", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@status", DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@contact", txtphone.Text);


                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}
