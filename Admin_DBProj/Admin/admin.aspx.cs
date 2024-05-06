using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin_DBProj
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            if (username == "admincoffee" && password == "coffeeingisthebest123")
            {
                Response.Redirect("home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid username or password. Please try again.');</script>");
            }
        }
    }
}