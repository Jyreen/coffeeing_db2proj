using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Script.Serialization;

namespace Admin_DBProj.Customer
{
    public partial class Customer_Checkout : System.Web.UI.Page
    {
        public List<CartItem> CartItems { get; set; }
        public decimal Subtotal { get; set; }
        public decimal Tax { get; set; }
        public decimal Shipping { get; set; }
        public decimal GrandTotal { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCartItems();
                CalculateTotals();
                BindOrderSummary();
                DisplayTotals();
            }
        }

        private void BindOrderSummary()
        {
            rptOrderSummary.DataSource = CartItems;
            rptOrderSummary.DataBind();
        }

        private void LoadCartItems()
        {
            if (Session["CartItems"] != null)
            {
                CartItems = (List<CartItem>)Session["CartItems"];
            }
            else
            {
                CartItems = new List<CartItem>();
            }

            // Load quantities from localStorage if session is empty
            if (CartItems.Count == 0 && Request.Cookies["cartData"] != null)
            {
                string cartDataJson = Request.Cookies["cartData"].Value;
                var cartData = new JavaScriptSerializer().Deserialize<List<CartItem>>(cartDataJson);
                foreach (var item in cartData)
                {
                    CartItems.Add(item);
                }
            }
        }

        private void CalculateTotals()
        {
            Subtotal = CartItems.Sum(item => item.ProductPrice * item.Quantity);
            Tax = Subtotal * 0.05m;
            Shipping = 15.00m;
            GrandTotal = Subtotal + Tax + Shipping;
        }

        private void DisplayTotals()
        {
            ltlSubtotal.Text = Subtotal.ToString("0.00");
            ltlTax.Text = Tax.ToString("0.00");
            ltlShipping.Text = Shipping.ToString("0.00");
            ltlGrandTotal.Text = GrandTotal.ToString("0.00");
        }

        protected void ConfirmOrder(object sender, EventArgs e)
        {   
            // Retrieve account ID from session or authentication context
            if (Session["AccountID"] == null)
            {
                // Handle error: account ID not found
                Response.Write("<script>alert('Account ID not found. Please log in again.');</script>");
                return;
            }
            int accountID = (int)Session["AccountID"];

            // Retrieve payment ID from form input
            int paymentID;
            if (!int.TryParse(Request.Form["payment-method"], out paymentID))
            {
                // Handle error: invalid payment method
                Response.Write("<script>alert('Invalid payment method selected.');</script>");
                return;
            }

            // Other necessary variables
            DateTime orderDate = DateTime.Now;
            decimal orderTotal;
            if (!decimal.TryParse(ltlGrandTotal.Text.Replace("$", ""), out orderTotal))
            {
                // Handle error: invalid order total
                Response.Write("<script>alert('Invalid order total.');</script>");
                return;
            }
            int orderStatusID = 0; // Default status
            int addressID = 1; // Replace with actual retrieval logic
            int? feedbackID = null; // Or set a default value if needed

            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;
            if (cartItems == null || !cartItems.Any())
            {
                Response.Write("<script>alert('Your cart is empty.');</script>");
                return;
            }

            using (SqlConnection cn = new SqlConnection(connectionString))
            {
                cn.Open();

                // Begin a transaction
                SqlTransaction transaction = cn.BeginTransaction();

                try
                {
                    // Insert into ORDER table
                    int newOrderID;
                    using (SqlCommand cmd = new SqlCommand("SP_InsertOrder", cn, transaction))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@OrderDate", orderDate);
                        cmd.Parameters.AddWithValue("@OrderTotal", orderTotal);
                        cmd.Parameters.AddWithValue("@OrderStatusID", orderStatusID);
                        cmd.Parameters.AddWithValue("@AddressID", addressID);
                        cmd.Parameters.AddWithValue("@AccountID", accountID);
                        cmd.Parameters.AddWithValue("@FeedbackID", feedbackID.HasValue ? (object)feedbackID.Value : DBNull.Value);
                        cmd.Parameters.AddWithValue("@PaymentID", paymentID);

                        SqlParameter outputIdParam = new SqlParameter("@NewOrderID", SqlDbType.Int)
                        {
                            Direction = ParameterDirection.Output
                        };
                        cmd.Parameters.Add(outputIdParam);
w3
                        cmd.ExecuteNonQuery();

                        newOrderID = (int)outputIdParam.Value;
                    }

                    // Insert into ORDER_DETAILS table
                    foreach (var item in cartItems)
                    {
                        using (SqlCommand cmd = new SqlCommand("SP_InsertOrderDetails", cn, transaction))
                        {
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@ProductID", item.ProductID);
                            cmd.Parameters.AddWithValue("@ProductPrice", item.ProductPrice);
                            cmd.Parameters.AddWithValue("@OrderID", newOrderID);
                            cmd.Parameters.AddWithValue("@OrderDetailsQuantity", item.Quantity);

                            cmd.ExecuteNonQuery();
                        }
                    }

                    // Commit the transaction
                    transaction.Commit();

                    // Clear the cart after successful order
                    Session["CartItems"] = null;
                    cartItems.Clear();
                    Response.Cookies["cartData"].Expires = DateTime.Now.AddDays(-1);

                    // Redirect to homepage or any other page
                    Response.Redirect("Customer_Homepage.aspx");
                }
                catch (Exception ex)
                {
                    // Rollback the transaction on error
                    transaction.Rollback();
                    throw new Exception("Error processing order: " + ex.Message);
                }
            }
        }
    }
}