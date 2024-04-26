<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer_Register.aspx.cs" Inherits="Admin_DBProj.Customer.Register.Customer_Register" %>

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
        <h1 class="h1-container">CREATE ACCOUNT</h1>
        <div class="input-group-2">
            <input type="text" id="firstName" placeholder="First Name" />
            <input type="text" id="lastName" placeholder="Last Name" />
        </div>
        <div class="input-group-2">
            <input type="text" id="address" placeholder="Address" />
            <input type="text" id="contactNo" placeholder="Contact No." />
        </div>
        <div class="input-group">
            <input type="email" id="email" placeholder="Email" />
        </div>
        <div class="input-group">
            <input type="password" id="password" placeholder="Password" />
            <input type="password" id="confirmPassword" placeholder="Confirm Password" />
        </div>
        <div class="links-container-2">
            <p>Already have an account? <a href="../Login/Customer_Login.aspx" class="login-link">Login</a></p>
        </div>
        <button type="submit" class="register-button">Create Account</button>
        <div class="other-links-container">
            <p class="ch-txt">or sign up with</p>
            <hr />
        </div>
    </div>
    <div class="img-container">
        <img class="bg-design-4" src="../../Images/beans2.png" />
        <img class="bg-design-3" src="../../Images/beans2.png" />
        <img class="bg-design-2" src="../../Images/beans2.png" />
    </div>
    </form>
</body>
</html>
