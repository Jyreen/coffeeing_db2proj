using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

namespace Admin_DBProj.Customer.Login
{
    public partial class Customer_Login : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\pc\Documents\Visual Studio 2012\Projects\coffeeing_db2proj\Admin_DBProj\App_Data\COFFEING_DB.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(email.Text) && !string.IsNullOrEmpty(password.Text))
            {
                using (SqlConnection cn = new SqlConnection(connectionstring))
                {
                    cn.Open();

                    string query = "SELECT ACC_EMAIL, ACC_PASSWORD FROM ACCOUNT WHERE ACC_EMAIL = @EMAIL AND ACC_PASSWORD = @PASSWORD";
                    using (SqlCommand customerCmd = new SqlCommand(query, cn))
                    {
                        customerCmd.Parameters.AddWithValue("@EMAIL", email.Text);
                        customerCmd.Parameters.AddWithValue("@PASSWORD", password.Text);

                        SqlDataAdapter customerSda = new SqlDataAdapter(customerCmd);
                        DataTable customerDt = new DataTable();
                        customerSda.Fill(customerDt);

                        if (customerDt.Rows.Count > 0)
                        {
                            Response.Redirect("~/Customer/Customer_Homepage.aspx");
                        }
                        else
                        {
                            Response.Write("<script>alert('Invalid email or password');</script>");
                        }
                    }
                }
            }
            else
            {
                Response.Write("<script>alert('Please enter email and password');</script>");
            }
        }
    }
}