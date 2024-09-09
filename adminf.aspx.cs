using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Web.Configuration;

namespace Jaguar
{
    public partial class un : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load existing permissions from the database
                LoadPermissions();
            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            SavePermissions();

        }
        private void LoadPermissions()
        {
            string roleId = GetSelectedRoleId(); // Method to get the selected role ID
            string connectionString = ConfigurationManager.ConnectionStrings["dj"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT CanAddUsers, CanEditUsers, CanDeleteUsers, CanResetUsersPassword FROM RolePermissions WHERE RoleId = @RoleId";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@RoleId", roleId);
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        CanAddUsers.Checked = reader.GetBoolean(0);
                        CanEditUsers.Checked = reader.GetBoolean(1);
                        CanDeleteUsers.Checked = reader.GetBoolean(2);
                        CanResetUsersPassword.Checked = reader.GetBoolean(3);
                    }
                }
            }
        }
        private void SavePermissions()
        {
            string roleId = GetSelectedRoleId(); // Method to get the selected role ID
            bool canAddUsers = CanAddUsers.Checked;
            bool canEditUsers = CanEditUsers.Checked;
            bool canDeleteUsers = CanDeleteUsers.Checked;
            bool canResetUsersPassword = CanResetUsersPassword.Checked;

            string connectionString = ConfigurationManager.ConnectionStrings["dj"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "UPDATE RolePermissions SET CanAddUsers = @CanAddUsers, CanEditUsers = @CanEditUsers, CanDeleteUsers = @CanDeleteUsers, CanResetUsersPassword = @CanResetUsersPassword WHERE RoleId = @RoleId";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@RoleId", roleId);
                    command.Parameters.AddWithValue("@CanAddUsers", canAddUsers);
                    command.Parameters.AddWithValue("@CanEditUsers", canEditUsers);
                    command.Parameters.AddWithValue("@CanDeleteUsers", canDeleteUsers);
                    command.Parameters.AddWithValue("@CanResetUsersPassword", canResetUsersPassword);
                    command.ExecuteNonQuery();
                }
            }

            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Permissions saved successfully.')", true);
        }

        private string GetSelectedRoleId()
        {
            // Replace this with the logic to get the selected role ID
            // For example, it could be based on the selected list item
            return "1"; // Placeholder
        }

        protected void SaveChanges_Click(object sender, EventArgs e)
        {
            string buttonID = ((Button)sender).ID;
            string roleName = string.Empty;
            int roleId = 0;

            switch (buttonID)
            {
                case "btnSaveChangesSuperAdmin":
                    roleName = TextBox2.Text.Trim();
                    roleId = 1; // Example ID, replace with actual role ID logic
                    break;
                case "btnSaveChangesAdmin":
                    roleName = TextBox3.Text.Trim();
                    roleId = 2; // Example ID, replace with actual role ID logic
                    break;
                case "btnSaveChangesMGR":
                    roleName = TextBox4.Text.Trim();
                    roleId = 3; // Example ID, replace with actual role ID logic
                    break;
            }

            if (!string.IsNullOrEmpty(roleName))
            {
                string constr = WebConfigurationManager.ConnectionStrings["RoleManagementConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(constr))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("UPDATE Roles SET RoleName = @RoleName WHERE RoleID = @RoleID", conn);
                    cmd.Parameters.AddWithValue("@RoleName", roleName);
                    cmd.Parameters.AddWithValue("@RoleID", roleId);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }

                // Optionally clear the text box and display a success message
            }
            else
            {
                // Display an error message
            }


        }
    }
}
