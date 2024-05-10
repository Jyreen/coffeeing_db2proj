using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin_DBProj
{
    public partial class products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Bind the GridView on initial page load
                BindGridView();
            }
        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string description = txtDesc.Text;
            string price = txtPrice.Text;

            // Assuming category 1 is for donuts and category 2 is for coffee
            int categoryId = 0; // Default to 0 in case no category is selected
            if (DropDownList2.SelectedItem != null)
            {
                string selectedCategory = DropDownList1.SelectedItem.Value;
                if (selectedCategory == "Donut")
                {
                    categoryId = 1; // Category 1 is for donuts
                }
                else if (selectedCategory == "Coffee")
                {
                    categoryId = 2; // Category 2 is for coffee
                }
            }

            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("SP_ADD_PRODUCT", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@PRODUCT_NAME", name);
                    command.Parameters.AddWithValue("@PRODUCT_DESC", description);
                    command.Parameters.AddWithValue("@PRODUCT_PRICE", price);
                    command.Parameters.AddWithValue("@CATEGORY_ID", categoryId); // Pass the category ID

                    try
                    {
                        connection.Open();
                        int productId = Convert.ToInt32(command.ExecuteScalar());

                        // Refresh the GridView after adding the product
                        BindGridView();
                        // Clear the input fields after adding the product
                        ClearInputBoxes();

                        Response.Write("Product added successfully with ID: " + productId);
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
            txtName.Text = "";
            txtDesc.Text = "";
            txtPrice.Text = "";
            // Clear any other input fields you may have
        }

        private void BindGridView()
        {
            // Assuming GridView1 is the ID of your GridView
            prod.DataBind();
        }
    }
}