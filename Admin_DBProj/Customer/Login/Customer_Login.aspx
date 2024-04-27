<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer_Login.aspx.cs" Inherits="Admin_DBProj.Customer.Login.Customer_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>COFFEING - Login</title>
    <link type="text/css" rel="stylesheet" href="~/Customer/css/style.css">
</head>
<body>
    <form id="form1" runat="server">
    <nav>
        <h1><a href="cust_login.aspx">COFFEING</a></h1>
    </nav>
    <hr />
    <div class="container">
        <h1 class="h1-container">LOGIN</h1>
        <div class="input-group">
            <asp:TextBox runat="server" type="email" name="email" id="email" placeholder="EMAIL" autocomplet="off"></asp:TextBox>
        </div>
        <div class="input-group">
            <asp:TextBox runat="server" type="password" name="password" id="password" placeholder="PASSWORD" autocomplet="off"></asp:TextBox>
        </div>
        <div class="links-container">
            <a href="#">Forgot Password?</a>
            <a href="../Register/Customer_Register.aspx">Sign Up</a>
        </div>
        <asp:Button id="btnlogin" runat="server" text="LOGIN" class="login-button" OnClick="btnLogin_Click" />
    </div>
    <div>
        <img class="bg-design" src="../../Images/Beans.png" />
    </div>
    </form>
</body>
</html>
