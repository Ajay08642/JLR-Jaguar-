//using System;
//using System.Collections.Generic;
//using System.Data.SqlClient;
//using System.Drawing;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace Jaguar
//{
//    public partial class ResetPassword : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            string forgot_otp = Request.QueryString["forgot_otp"].ToString();
//            string Email = Request.QueryString["Email"].ToString();

//            con.Open();
//            string checkActivation = "select * From jlr where Email='" + Email + "' and forgot_otp='" + forgot_otp + "'";
//            SqlCommand checkCMD = new SqlCommand(checkActivation, con);
//            SqlDataReader read = checkCMD.ExecuteReader();
//            if (read.Read())
//            {
//                PlaceHolder1.Visible = true;
//                PlaceHolder2.Visible = false;
//                con.Close();
//            }
//            else
//            {
//                PlaceHolder1.Visible = false;
//                PlaceHolder2.Visible = true;
//                con.Close();
//            }
//        }

//        protected void resetpwdBtn_Click(object sender, EventArgs e)
//        {
//            string forgot_otp = Request.QueryString["forgot_otp"].ToString();
//            string Email = Request.QueryString["Email"].ToString();
//            if (password.Text.ToString() == Confirm_password.Text.ToString())
//            {
//                con.Open();
//                string updateAcc = "update jlr set forgot_otp=0, password='" + password.Text.ToString() + "' where Email='" + Email + "'";
//                SqlCommand CmdUpdate = new SqlCommand(updateAcc, con);
//                CmdUpdate.ExecuteNonQuery();
//                //lblErrorMsg.Text = "Password Reset Successfully.";
//                //lblErrorMsg.ForeColor = System.Drawing.Color.Green;
//                string script = "<script type=\"text/javascript\">alert('Password reset successfully!'); var alertBox = document.getElementsByClassName('swal-modal'); alertBox[0].style.backgroundColor = 'green'; alertBox[0].style.color = 'white'; document.getElementsByClassName('swal-text')[0].style.color = 'white';</script>";
//                Page.ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script);
//                con.Close();
//            }
//            else
//            {
//                lblErrorMsg.Text = "Password and Confirm Password is Not Same.";
//                lblErrorMsg.ForeColor = System.Drawing.Color.Red;
//            }
//        }
//    }
//}

using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jaguar
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["dj"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string forgotOtp = Request.QueryString["forgot_otp"];
                string email = Request.QueryString["Email"];

                if (!string.IsNullOrEmpty(forgotOtp) && !string.IsNullOrEmpty(email))
                {
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        con.Open();
                        string checkActivation = "SELECT * FROM jlr WHERE Email = @Email AND forgot_otp = @ForgotOtp";
                        using (SqlCommand checkCmd = new SqlCommand(checkActivation, con))
                        {
                            checkCmd.Parameters.AddWithValue("@Email", email);
                            checkCmd.Parameters.AddWithValue("@ForgotOtp", forgotOtp);

                            using (SqlDataReader read = checkCmd.ExecuteReader())
                            {
                                if (read.Read())
                                {
                                    PlaceHolder1.Visible = true;
                                    PlaceHolder2.Visible = false;
                                }
                                else
                                {
                                    PlaceHolder1.Visible = false;
                                    PlaceHolder2.Visible = true;
                                }
                            }
                        }
                    }
                }
                else
                {
                    // Invalid query string parameters
                    PlaceHolder1.Visible = false;
                    PlaceHolder2.Visible = true;
                }
            }
        }

        protected void resetpwdBtn_Click(object sender, EventArgs e)
        {
            string forgotOtp = Request.QueryString["forgot_otp"];
            string email = Request.QueryString["Email"];

            if (password.Text == Confirm_password.Text)
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    con.Open();
                    string updateAcc = "UPDATE jlr SET forgot_otp = 0, password = @password WHERE Email = @Email";
                    using (SqlCommand cmdUpdate = new SqlCommand(updateAcc, con))
                    {
                        cmdUpdate.Parameters.AddWithValue("@password", password.Text);
                        cmdUpdate.Parameters.AddWithValue("@Email", email);
                        cmdUpdate.ExecuteNonQuery();
                    }
                }

                string script = "<script type=\"text/javascript\">alert('Password reset successfully!');</script>";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script);
            }
            else
            {
                lblErrorMsg.Text = "Password and Confirm Password do not match.";
                lblErrorMsg.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
