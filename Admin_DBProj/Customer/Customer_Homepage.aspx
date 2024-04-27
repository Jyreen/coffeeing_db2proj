<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer_Homepage.aspx.cs" Inherits="Admin_DBProj.Customer.Customer_Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>COFFEEING - Home</title>
    <link type="text/css" rel="stylesheet" href="~/Customer/css/home.css">
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'>
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <!-- Header -->
    <header>
        <div class="logo">
            <a href="Customer_Homepage.aspx"><span>COFFEING</span></a>
        </div>
            <nav>
                <a href="#"><i class="fas fa-search"></i></a> 
                <a href="#"><i class="fas fa-bell"></i></a> 
                <a href="#">Home</a>
                <a href="Customer_Products.aspx">Shop</a> 
                <a href="Login/Customer_Login.aspx"">Login</a>
                <a href="Register/Customer_Register.aspx" class="cta-button">Join Now</a>


            </nav>
    </header>
    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-text">
            <h2 class="hero-title">COFFEING</h2> <!-- Title with creative font -->
            <p style="font-size: 28px;">Awaken your senses</p> <!-- Larger font size -->
            <!-- "Shop Now" button -->
            <a href="Customer_Products.aspx" class="cta-button">Shop Now</a> <!-- "Shop Now" button -->
        </div>
        <img class="active" src="../Images/3cupswbeans.jpg" alt="3cupview"/> <!-- First image -->
        <img class="active" src="../Images/topviewmugs.jpg" alt="Coffee Making"/> <!-- Second image -->
        <img class="active" src="../Images/topviewroasted.jpg" alt="topviewcup2"/> <!-- Second image -->

        <!-- Add more images for slideshow as needed -->
    </section>
    </form>
    <script src="js/main.js"></script>
</body>
</html>
