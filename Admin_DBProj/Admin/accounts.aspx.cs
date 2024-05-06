using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Admin_DBProj
{
    public partial class accounts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddCustomer_Click(object sender, EventArgs e)
        {
            string fname = txtFirstName.Text;
            string lname = txtLastName.Text;
            string address = txtAddress.Text;
            string email = txtEmail.Text;
            string contactNumber = txtContactNumber.Text;
            string password = txtPassword.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("SP_CREATE_ACCOUNT", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@ACC_FNAME", fname);
                    command.Parameters.AddWithValue("@ACC_LNAME", lname);
                    command.Parameters.AddWithValue("@ACC_ADDRESS", address);
                    command.Parameters.AddWithValue("@ACC_EMAIL", email);
                    command.Parameters.AddWithValue("@ACC_PNUM", contactNumber);
                    command.Parameters.AddWithValue("@ACC_PASSWORD", password);

                    try
                    {
                        connection.Open();
                        command.ExecuteNonQuery();

                        // Refresh the GridView after adding the customer
                        BindGridView();
                        // Clear the input fields after adding the customer
                        ClearInputBoxes();

                        Response.Write("Customer added successfully!");
                    }
                    catch (Exception ex)
                    {
                        Response.Write("An error occurred: " + ex.Message);
                    }
                }
            }
        }
        private void ClearInputBoxes()
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtAddress.Text = "";
            txtEmail.Text = "";
            txtContactNumber.Text = "";
            txtPassword.Text = "";
        }

        private void BindGridView()
        {
            ctl02.DataBind();
        }
    }
}

