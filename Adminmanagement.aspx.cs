using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jaguar
{
    public partial class Adminmanagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            string onOff = CanAddUsers.Checked ? "On" : "Off";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + onOff + "')", true);
            {





            }
        }
    }
}



       

        



// protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
//{
//    if (e.CommandName == "Toggle")
//    {
//        int id = Convert.ToInt32(e.CommandArgument);
//        GridViewRow row = (GridViewRow)(((Button)e.CommandSource).NamingContainer);
//        bool isActive = !(row.Cells[4].Controls[0] as CheckBox).Checked; // Toggle the current state
//        employeeDAL.ToggleEmployeeStatus(id, isActive);
//        BindGrid();
//        string onOff = isActive ? "Activated" : "Deactivated";
//        ClientScript.RegisterClientScriptBlock(this.GetType(), "alertScript", $"alert('{onOff}');", true);
//    }
//}


//public partial class UserManagement : System.Web.UI.Page
//{
//    private EmployeeDAL employeeDAL = new EmployeeDAL();

//    protected void Page_Load(object sender, EventArgs e)
//    {
//        if (!IsPostBack)
//        {
//            BindGrid();
//        }
//    }

//    protected void BindGrid()
//    {
//        GridView.DataSource = employeeDAL.GetUsers();
//        GridView.DataBind();
//    }

//    protected void GridView_RowCommand(object sender, GridViewCommandEventArgs e)
//    {
//        if (e.CommandName == "Toggle")
//        {
//            int id = Convert.ToInt32(e.CommandArgument);
//            GridViewRow row = (GridViewRow)(((Button)e.CommandSource).NamingContainer);
//            bool isActive = !(row.Cells[4].Controls[0] as CheckBox).Checked; // Toggle the current state
//            employeeDAL.ToggleEmployeeStatus(id, isActive);
//            BindGrid();
//            string onOff = isActive ? "Activated" : "Deactivated";
//            ClientScript.RegisterClientScriptBlock(this.GetType(), "alertScript", $"alert('{onOff}');", true);
//        }

//        if(e.CommandName == "Toggle")
//        {
//            int id = Convert.ToInt32(e.CommandArgument);
//            GridViewRow row = (GridViewRow)(((Button)e.CommandSource)).NamingContainer;
//            bool isActive = !(row.Cells[4].Controls[0]as checked).
//        }
//    }

//    protected void btnAddUser_Click(object sender, EventArgs e)
//    {
//        string TextBox1 = TextBox.checked;
//        string TextBox2 =TextBox.checked;
//        bool isActive = TextBox.checked;
//        employeeDAL.AddUser(TextBox1, TextBox2, isActive);
//        BindGrid();
//    }

//    protected void GridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
//    {
//        int id = Convert.ToInt32(GridView.DataKeys[e.RowIndex].Value);
//        string TextBox1 = ((TextBox)GridView.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
//        bool isActive = ((CheckBox)GridView.Rows[e.RowIndex].Cells[4].Controls[0]).Checked;
//        employeeDAL.UpdateUser(id, TextBox1, isActive);
//        GridView.EditIndex = -1;
//        BindGrid();
//    }

//    protected void GridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
//    {
//        int id = Convert.ToInt32(GridView.DataKeys[e.RowIndex].Value);
//        employeeDAL.DeleteUser(id);
//        BindGrid();
//    }

//    protected void GridView_RowEditing(object sender, GridViewEditEventArgs e)
//    {
//        GridView.EditIndex = e.NewEditIndex;
//        BindGrid();
//    }

//    protected void GridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
//    {
//        GridView.EditIndex = -1;
//        BindGrid();
//    }

//    protected void btnChangePassword_Click(object sender, EventArgs e)
//    {
//        int id = Convert.ToInt32(TextBox1.Text);
//        string newPassword = TextBox2.Text;
//        employeeDAL.ChangePassword(id, newPassword);
//    }
//    protected void GridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
//    {
//        int id = Convert.ToInt32(GridView.Datakeys[e.RowIndex].value);
//        employeeDAL.DeleteUser(id);
//        GridView.EditIndex = -1;
//        BindGrid();
//    }
//}

//public class EmployeeDAL
//{
//    private string connectionString = "your_connection_string";

//    public void AddUser(string username, string password, bool isActive)
//    {
//        using (SqlConnection conn = new SqlConnection(connectionString))
//        {
//            string query = "INSERT INTO Users (Username, Password, IsActive ,NotActive) VALUES (@Username, @Password, @IsActive,@NotActive)";
//            SqlCommand cmd = new SqlCommand(query, conn);
//            cmd.Parameters.AddWithValue("@Username", username);
//            cmd.Parameters.AddWithValue("@Password", password);
//            cmd.Parameters.AddWithValue("@IsActive", isActive);
//            cmd.Parameters.AddWithValue("@IsNotActive", NotActive);
//            conn.Open();
//            cmd.ExecuteNonQuery();
//        }
//    }

//    public void UpdateUser(int id, string username, bool isActive)
//    {
//        using (SqlConnection conn = new SqlConnection(connectionString))
//        {
//            string query = "UPDATE Users SET Username = @Username, IsActive = @IsActive WHERE Id = @Id";
//            SqlCommand cmd = new SqlCommand(query, conn);
//            cmd.Parameters.AddWithValue("@Id", id);
//            cmd.Parameters.AddWithValue("@Username", username);
//            cmd.Parameters.AddWithValue("@IsActive", isActive);
//            conn.Open();
//            cmd.ExecuteNonQuery();
//        }
//    }

//    public void DeleteUser(int id)
//    {
//        using (SqlConnection conn = new SqlConnection(connectionString))
//        {
//            string query = "DELETE FROM Users WHERE Id = @Id";
//            SqlCommand cmd = new SqlCommand(query, conn);
//            cmd.Parameters.AddWithValue("@Id", id);
//            conn.Open();
//            cmd.ExecuteNonQuery();
//        }
//    }

//    public void ChangePassword(int id, string newPassword)
//    {
//        using (SqlConnection conn = new SqlConnection(connectionString))
//        {
//            string query = "UPDATE Users SET Password = @Password WHERE Id = @Id";
//            SqlCommand cmd = new SqlCommand(query, conn);
//            cmd.Parameters.AddWithValue("@Id", id);
//            cmd.Parameters.AddWithValue("@Password", newPassword);
//            conn.Open();
//            cmd.ExecuteNonQuery();
//        }
//    }

//    public void ToggleEmployeeStatus(int id, bool isActive)
//    {
//        using (SqlConnection conn = new SqlConnection(connectionString))
//        {
//            string query = "UPDATE Users SET IsActive = @IsActive WHERE Id = @Id";
//            SqlCommand cmd = new SqlCommand(query, conn);
//            cmd.Parameters.AddWithValue("@Id", id);
//            cmd.Parameters.AddWithValue("@IsActive", isActive);
//            conn.Open();
//            cmd.ExecuteNonQuery();
//        }
//    }

//    // Method to get the list of users
//    public DataTable GetUsers()
//    {
//        using (SqlConnection conn = new SqlConnection(connectionString))
//        {
//            string query = "SELECT * FROM Users";
//            SqlDataAdapter adapter = new SqlDataAdapter(query, conn);
//            DataTable dt = new DataTable();
//            adapter.Fill(dt);
//            return dt;
//        }
//    }
//}
