using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin_DBProj.Customer
{
    public partial class Customer_Cart : System.Web.UI.Page
    {
        protected List<CartItem> CartItems { get; set; }
        protected decimal Subtotal { get; set; }
        protected decimal Tax { get; set; }
        protected decimal Shipping { get; set; }
        protected decimal GrandTotal { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCartItems();

                if (Request.QueryString["productName"] != null && Request.QueryString["quantity"] != null)
                {
                    string productName = Request.QueryString["productName"];
                    int quantity;
                    if (int.TryParse(Request.QueryString["quantity"], out quantity))
                    {
                        AddToCart(productName, quantity);
                    }
                }

                CalculateTotals();
            }
        }

        private void AddToCart(string productName, int quantity)
        {
            Product product = GetProductsFromDataBase().FirstOrDefault(p => p.PRODUCT_NAME == productName);
            if (product != null)
            {
                CartItem existingCartItem = CartItems.FirstOrDefault(ci => ci.ProductName == productName);
                if (existingCartItem != null)
                {
                    existingCartItem.Quantity += quantity;
                }
                else
                {
                    CartItem cartItem = new CartItem
                    {
                        ProductName = product.PRODUCT_NAME,
                        Quantity = quantity,
                        ProductDesc = product.PRODUCT_DESC,
                        ProductPrice = product.PRODUCT_PRICE,
                        ProductImg = product.PRODUCT_IMG
                    };
                    CartItems.Add(cartItem);
                }

                Session["CartItems"] = CartItems;
            }
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
        }

        private void CalculateTotals()
        {
            Subtotal = CartItems.Sum(item => item.ProductPrice * item.Quantity);
            Tax = Subtotal * 0.05m;
            Shipping = 15.00m;
            GrandTotal = Subtotal + Tax + Shipping;
        }

        private List<Product> GetProductsFromDataBase()
        {
            List<Product> products = new List<Product>();
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string query = "SELECT * FROM PRODUCT";

            using (System.Data.SqlClient.SqlConnection cn = new System.Data.SqlClient.SqlConnection(connectionString))
            {
                using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(query, cn))
                {
                    cn.Open();
                    using (System.Data.SqlClient.SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Product product = new Product
                            {
                                PRODUCT_NAME = reader["PRODUCT_NAME"].ToString(),
                                PRODUCT_DESC = reader["PRODUCT_DESC"].ToString(),
                                PRODUCT_PRICE = Convert.ToDecimal(reader["PRODUCT_PRICE"]),
                                PRODUCT_IMG = reader["PRODUCT_IMG"].ToString(),
                                PRODUCT_STATUS = Convert.ToDecimal(reader["PRODUCT_STATUS"])
                            };
                            products.Add(product);
                        }
                    }
                }
            }
            return products;
        }
    }

    public class CartItem
    {
        public string ProductName { get; set; }
        public string ProductDesc { get; set; }
        public decimal ProductPrice { get; set; }
        public string ProductImg { get; set; }
        public int Quantity { get; set; }
    }
}
