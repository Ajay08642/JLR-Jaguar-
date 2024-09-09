//using System;
//using System.Collections.Generic;
//using System.Data.SqlClient;
//using System.Drawing;
//using System.Linq;
//using System.Net.Mail;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace Jaguar
//{
//    public partial class Forget : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {

//        }

//        protected void forgotpwdbtn_Click(object sender, EventArgs e)
//        {
//            con.Open();
//            String selectUser = "select contact from jlr where Email ='" + email.Text.ToString() + "' and Status='Active'";
//            SqlCommand selCmd = new SqlCommand(selectUser, con);
//            SqlDataReader read = selCmd.ExecuteReader();
//            if (read.Read())
//            {
//                con.Close();
//                Random random = new Random();
//                int myRandom = random.Next(10000000, 99999999);
//                string forgot_otp = myRandom.ToString();

//                con.Open();
//                string updateAcc = "update jlr set forgot_otp='" + forgot_otp + "' where Email='" + email.Text.ToString() + "'";
//                SqlCommand CmdUpdate = new SqlCommand(updateAcc, con);
//                CmdUpdate.ExecuteNonQuery();
//                con.Close();

//                MailMessage mail = new MailMessage();
//                mail.To.Add(email.Text.ToString());
//                mail.From = new MailAddress("jabir.k@mobilestyx.co.in");
//                mail.Subject = "Reset Password Link";

//                string emailBody = "";

//                emailBody += "<h1>Hello User </h1>";
//                emailBody += "Click Below Link for Reset Your Password.<br/>";
//                emailBody += "<p><a href='" + "https://localhost:44396/ResetPassword.aspx?forgot_otp=" + forgot_otp + "&email=" + email.Text.ToString() + "'>Click Here To Reset Your Password</a></p>";
//                emailBody += "Thank You ...";

//                mail.Body = emailBody;
//                mail.IsBodyHtml = true;

//                SmtpClient smtp = new SmtpClient();
//                smtp.Port = 587;
//                smtp.EnableSsl = true;
//                smtp.UseDefaultCredentials = false;
//                smtp.Host = "smtp.gmail.com";
//                smtp.Credentials = new System.Net.NetworkCredential("jabir.k@mobilestyx.co.in", "axjmyboiljfqgekf");
//                smtp.Send(mail);

//                //lblErrorMsg.Text = "Reset Password Link sent Successfully";
//                //lblErrorMsg.ForeColor = System.Drawing.Color.Green;

//                string script = "<script type=\"text/javascript\">alert('Reset password link sent successfully!'); var alertBox = document.getElementsByClassName('swal-modal'); alertBox[0].style.backgroundColor = 'white'; alertBox[0].style.color = 'green'; document.getElementsByClassName('swal-text')[0].style.color = 'green';</script>";
//                Page.ClientScript.RegisterStartupScript(this.GetType(), "ResetLinkSentMessage", script);


//                //ClientScript.RegisterStartupScript(this.GetType(), "redirectScript", "setTimeout(function(){ window.location.href = 'ResetPassword.aspx'; }, 7000);", true);
//            }
//            else
//            {
//                lblErrorMsg.Text = "This Mail ID Is Not Register With Us.";
//                lblErrorMsg.ForeColor = System.Drawing.Color.Red;
//                con.Close();
//            }


//        }
//    }
//}using System;
using System.Configuration;
using System;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Web.UI;

namespace Jaguar
{
    public partial class Forget : System.Web.UI.Page
    {
         string constr = ConfigurationManager.ConnectionStrings["dj"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void forgotpwdbtn_Click(object sender, EventArgs e)
        {
            string emailText = email.Text.Trim();

            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                string selectUser = "SELECT contact FROM jlr WHERE Email=@Email AND Status='Active'";
                using (SqlCommand selCmd = new SqlCommand(selectUser, con))
                {
                    selCmd.Parameters.AddWithValue("@Email", emailText);
                    using (SqlDataReader read = selCmd.ExecuteReader())
                    {
                        if (read.Read())
                        {
                            con.Close();

                            Random random = new Random();
                            int myRandom = random.Next(10000000, 99999999);
                            string forgotOtp = myRandom.ToString();

                            using (SqlConnection conUpdate = new SqlConnection(constr))
                            {
                                conUpdate.Open();
                                string updateAcc = "UPDATE jlr SET forgot_otp=@ForgotOtp WHERE Email=@Email";
                                using (SqlCommand cmdUpdate = new SqlCommand(updateAcc, conUpdate))
                                {
                                    cmdUpdate.Parameters.AddWithValue("@ForgotOtp", forgotOtp);
                                    cmdUpdate.Parameters.AddWithValue("@Email", emailText);
                                    cmdUpdate.ExecuteNonQuery();
                                }
                            }

                            MailMessage mail = new MailMessage();
                            mail.To.Add(emailText);
                            mail.From = new MailAddress("jabir.k@mobilestyx.co.in");
                            mail.Subject = "Reset Password Link";

                            string emailBody = "";
                            emailBody += "<h1>Hello User </h1>";
                            emailBody += "Click Below Link for Reset Your Password.<br/>";
                            emailBody += $"<p><a href='https://localhost:44349/ResetPassword.aspx?forgot_otp={forgotOtp}&email={emailText}'>Click Here To Reset Your Password</a></p>";
                            emailBody += "Thank You ...";

                            mail.Body = emailBody;
                            mail.IsBodyHtml = true;

                            SmtpClient smtp = new SmtpClient();
                            smtp.Port = 587;
                            smtp.EnableSsl = true;
                            smtp.UseDefaultCredentials = false;
                            smtp.Host = "smtp.gmail.com";
                            smtp.Credentials = new System.Net.NetworkCredential("jabir.k@mobilestyx.co.in", "axjmyboiljfqgekf");
                            smtp.Send(mail);

                            string script = "<script type=\"text/javascript\">alert('Reset password link sent successfully!'); var alertBox = document.getElementsByClassName('swal-modal'); alertBox[0].style.backgroundColor = 'white'; alertBox[0].style.color = 'green'; document.getElementsByClassName('swal-text')[0].style.color = 'green';</script>";
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "ResetLinkSentMessage", script);
                        }
                        else
                        {
                            lblErrorMsg.Text = "This Mail ID Is Not Registered With Us.";
                            lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                }
            }
        }
    }
}
