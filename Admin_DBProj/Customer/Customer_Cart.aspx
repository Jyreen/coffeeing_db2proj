<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer_Cart.aspx.cs" Inherits="Admin_DBProj.Customer.Customer_Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <title>COFFEEING - Cart</title>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'>
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="~/Customer/css/cart.css">
</head>
<body>
    <form id="form1" runat="server">
    <header class="auto-style1">
        <a href="../App_Start/">../App_Start/</a>
        <div class="logo">
            <a href="Customer_Homepage.aspx"><span>COFFEING</span></a>
        </div>
        <nav>
            <a href="#"><i class="fas fa-search"></i></a> <!-- Magnifying glass icon -->
            <a href="#"><i class="fas fa-bell"></i></a> <!-- Notification icon -->
            <a href="#">Home</a>
            <a href="about.html">About</a> <!-- Link to the about page -->
            <a href="shop.html">Shop</a> <!-- Link to your shop page -->
            <a href="Login/Customer_Login.aspx">Login</a> <!-- Link to your login page -->
        </nav>
    </header>
        <section>
            <div class="shopping-cart">
                <div class="row justify-content-center text-center">
                    <div class="col-md-8 col-lg-6">
                        <div class="header">
                            <h2>Your Cart</h2>
                        </div>
                    </div>
                </div>
                <div class="cart-grid">
                    <!-- Cart items -->
                    <div class="cart-item">
                        <img src="path/to/image1.jpg" alt="Product 1">
                        <div class="cart-item-details">
                            <div class="cart-item-name">Product 1</div>
                            <div class="cart-item-description">Description of Product 1</div>
                            <div class="cart-item-price">$10.99</div>
                        </div>
                        <div class="quantity-and-remove">
                            <input type="number" class="quantity-input" value="1" min="1">
                            <button class="remove-from-cart-button">Remove</button>
                        </div>
                    </div>

                    <div class="cart-item">
                        <img src="path/to/image2.jpg" alt="Product 2">
                        <div class="cart-item-details">
                            <div class="cart-item-name">Product 2</div>
                            <div class="cart-item-description">Description of Product 2</div>
                            <div class="cart-item-price">$15.99</div>
                        </div>
                        <div class="quantity-and-remove">
                            <input type="number" class="quantity-input" value="1" min="1">
                            <button class="remove-from-cart-button">Remove</button>
                        </div>
                    </div>
                </div>
                <!-- Add more cart items as needed -->
            </div>

            <div class="totals">
                <div class="totals-item">
                    <label>Subtotal</label>
                    <div class="totals-value" id="cart-subtotal">71.97</div>
                </div>
                <div class="totals-item">
                    <label>Tax (5%)</label>
                    <div class="totals-value" id="cart-tax">3.60</div>
                </div>
                <div class="totals-item">
                    <label>Shipping</label>
                    <div class="totals-value" id="cart-shipping">15.00</div>
                </div>
                <div class="totals-item totals-item-total">
                    <label>Grand Total</label>
                    <div class="totals-value" id="cart-total">90.57</div>
                </div>
            </div>
            <button class="checkout">Checkout</button>
     </section>
    </form>
    <script src="js/cart.js"></script>
</body>
</html>
