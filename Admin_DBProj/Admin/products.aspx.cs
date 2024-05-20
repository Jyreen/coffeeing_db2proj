﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Common;


namespace Admin_DBProj
{
    public partial class products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();

                AddPanel.Visible = false;
                UpdateProductPanel.Visible = false;
            }
        }
        private void ClearInputBoxes()
        {
            txtName.Text = "";
            txtDesc.Text = "";
            txtPrice.Text = "";
            txtQuantity.Text = "";
        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string description = txtDesc.Text;
            string price = txtPrice.Text;
            string quantity = txtQuantity.Text;


            int categoryId = 0;
            if (ddlCategory.SelectedItem != null)
            {
                string selectedCategory = ddlCategory.SelectedItem.Value;
                if (selectedCategory == "Donut")
                {
                    categoryId = 0; // Category 1 is for donuts
                }
                else if (selectedCategory == "Coffee")
                {
                    categoryId = 1; // Category 2 is for coffee
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
                    command.Parameters.AddWithValue("@PRODUCT_QUANTITY", quantity);
                    command.Parameters.AddWithValue("@CATEGORY_ID", categoryId); // Pass the category ID
                   

                    try
                    {
                        connection.Open();
                        int productId = Convert.ToInt32(command.ExecuteScalar());

                      
                        BindGridView();
                      
                        ClearInputBoxes();

                        Response.Write("<script>alert('Product added successfully.');</script>");
                    }
                    catch (Exception ex)
                    {
                        Response.Write("An error occurred: " + ex.Message);
                    }
                }
            }
        }


        protected void btnShowAddProduct_Click(object sender, EventArgs e)
        {
            AddPanel.Visible = !AddPanel.Visible;
            UpdateProductPanel.Visible = false;
        }
        protected void btnShowUpdateProduct_Click(object sender, EventArgs e)
        {
            UpdateProductPanel.Visible = !UpdateProductPanel.Visible;
            AddPanel.Visible = false;
        }
        protected void getName_TextChanged(object sender, EventArgs e)
        {
            string searchText = getName.Text.Trim();

   
            Response.Write($"You entered: {searchText}");
        }
        protected void ClearUpdateFields()
        {
            uName.Text = "";
            uDesc.Text = "";
            uPrice.Text = "";
            uQuantity.Text = "";
            uCategory.ClearSelection();
            uStatus.ClearSelection();
        }


        protected void getProductData_Click(object sender, EventArgs e)
        {
            string searchInput = getName.Text.Trim();
            if (string.IsNullOrEmpty(searchInput))
            {
                Response.Write("<script>alert('Input boxes cannot be empty.');</script>");
                return;
            }


            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("SP_GET_PDETAILS", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@SEARCHINPUT", searchInput);


                    try

                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();
                        if (reader.Read())
                        {
                            uName.Text = reader["PRODUCT_NAME"].ToString();
                            uDesc.Text = reader["PRODUCT_DESC"].ToString();
                            uPrice.Text = reader["PRODUCT_PRICE"].ToString();
                            uQuantity.Text = reader["PRODUCT_QUANTITY"].ToString();
                            uCategory.SelectedValue = reader["CATEGORY_ID"].ToString();

                            // Populate the status dropdown list
                            string productStatus = reader["PRODUCT_STATUS"].ToString();
                            if (productStatus == "Available")
                            {
                                uStatus.SelectedValue = "Available";
                            }
                            else if (productStatus == "Unavailable")
                            {
                                uStatus.SelectedValue = "Unavailable";
                            }
                            else
                            {
                                Response.Write("<script>alert('Product found.');</script>");
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");

                    }
                }
            }
        }
        private void BindGridView()
        {
            prod.DataBind();
        }


        protected void btnUpdateProduct_Click(object sender, EventArgs e)
        {


            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("SP_UPDATE_PRODUCT", con))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@PRODUCT_NAME", uName.Text.Trim());
                    command.Parameters.AddWithValue("@PRODUCT_DESC", uDesc.Text.Trim());
                    command.Parameters.AddWithValue("@PRODUCT_PRICE", uPrice.Text.Trim());
                    command.Parameters.AddWithValue("@PRODUCT_QUANTITY", uQuantity.Text.Trim());
                    command.Parameters.AddWithValue("@PRODUCT_CATEGORY", ddlCategory.SelectedItem);
                    command.Parameters.AddWithValue("@PRODUCT_STATUS", ddlStatus.SelectedValue);

                    try
                    {
                        con.Open();
                        command.ExecuteNonQuery();

                        Response.Write("<script>alert('Product updated successfully.');</script>");
                    }
                    catch (Exception ex)
                    {
                        string error = $"<script type=\"text/javascript\">alert('An error occurred: {ex.Message}');</script>";
                        Response.Write(error);
                    }
                }
            }
        }
    }
}