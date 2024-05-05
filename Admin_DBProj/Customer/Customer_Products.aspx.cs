using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

namespace Admin_DBProj.Customer
{
    public partial class Customer_Products : System.Web.UI.Page
    {
        protected List<Product> Products { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Products = GetProductsFromDataBase();
            }
        }

        private List<Product> GetProductsFromDataBase()
        {
            List<Product> products = new List<Product>();
            string connectionstring = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\pc\Documents\Visual Studio 2012\Projects\coffeeing_db2proj\Admin_DBProj\App_Data\COFFEING_DB.mdf;Integrated Security=True";
            string query = "SELECT * FROM PRODUCT";

            using (SqlConnection cn = new SqlConnection(connectionstring))
            {
                using (SqlCommand cmd = new SqlCommand(query, cn))
                {
                    cn.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Product product = new Product();
                            product.PRODUCT_NAME = reader["PRODUCT_NAME"].ToString();
                            product.PRODUCT_DESC = reader["PRODUCT_DESC"].ToString();
                            product.PRODUCT_PRICE = Convert.ToInt64(reader["PRODUCT_PRICE"]);
                            product.PRODUCT_IMG = reader["PRODUCT_IMG"].ToString();
                            product.PRODUCT_STATUS = Convert.ToInt64(reader["PRODUCT_STATUS"]);
                            products.Add(product);
                        }
                    }
                }
            }
            return products;
        }
    }

    public class Product
    {
        public string PRODUCT_NAME { get; set; }
        public string PRODUCT_DESC { get; set; }
        public decimal PRODUCT_PRICE { get; set; }
        public string PRODUCT_IMG { get; set; }
        public decimal PRODUCT_STATUS { get; set; }
    }
}