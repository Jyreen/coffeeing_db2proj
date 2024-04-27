<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer_Products.aspx.cs" Inherits="Admin_DBProj.Customer.Customer_Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <title>COFFEEING - Products</title>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'>
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="~/Customer/css/prod.css">
</head>
<body>
    <form id="form1" runat="server">
    <header class="auto-style1"  CssClass="center" Height="100px" Width="100px">
        <div class="logo">
            <a href="Customer_Homepage.aspx"><span>COFFEING</span></a>
        </div>
        <nav>
            <a href="#"><i class="fas fa-search"></i></a> 
            <a href="#">Home</a>
            <a href="Customer_Profile.aspx">Profile</a> 
            <a href="Customer_products.aspx">Shop</a> 
            <a href="Login/Customer_Login.aspx">Login</a> 
        </nav>
    </header>

    <!-- Sidebar -->
    <div class="sidebar">
        <input type="text" id="searchInput" placeholder="Search...">
        <ul>
            <li><a href="#">Coffee</a></li>
            <li><a href="#">Pastries</a></li>
            <li><a href="#">Cakes</a></li>
            <li><a href="#">Donuts</a></li>
            <!-- Add more categories as needed -->
        </ul>
    </div>


    <!-- Product Section -->
    <section class="section-products product-section">
        <div class="container" >
            <div class="row justify-content-center text-center">
                <div class="col-md-8 col-lg-6">
                    <div class="header">
                        <h2>Popular Products</h2>
                    </div>
                </div>
            </div>
            <div class="menu-grid">
                <div class="menu-item">
                    <asp:Image ID="Image1" runat="server" CssClass="center" ImageUrl="~/assests/imgs/prod1.webp" />
                    <div class="menu-item-details">
                        <div class="menu-item-name">Coffeing Mocha</div>
                        <div class="menu-item-description">Indulge in the velvety smoothness of our classic espresso paired with decadent chocolate for a delightful mocha experience.</div>
                        <div class="menu-item-price">$4.45</div>
                    </div>
                    <div class="quantity-and-cart">
                        <input type="number" class="quantity-input" value="1" min="1">
                        <button class="add-to-cart-button" onclick="addToCart('Coffeing Mocha', 4.45, 1)">Add to Cart</button>
                    </div>
                </div>
                <div class="menu-item">
                    <img src="" alt="Coffeing 3">
                    <div class="menu-item-details">
                        <div class="menu-item-name">Coffeing Caramel Macchiato</div>
                        <div class="menu-item-description">A harmonious blend of rich espresso, steamed milk, and luscious caramel drizzle, creating a symphony of flavors in every sip.</div>
                        <div class="menu-item-price">$4.25</div>
                    </div>
                    <div class="quantity-and-cart">
                        <input type="number" class="quantity-input" value="1" min="1">
                        <button class="add-to-cart-button" onclick="addToCart('Rexpresso Caramel Macchiato', 4.25, 1)">Add to Cart</button>
                    </div>
                </div>
                <div class="menu-item">
                    <asp:Image ID="Image2" runat="server" CssClass="center" ImageUrl="~/assests/imgs/prod1.webp" />
                    <div class="menu-item-details">
                        <div class="menu-item-name">Coffeing Mocha</div>
                        <div class="menu-item-description">Indulge in the velvety smoothness of our classic espresso paired with decadent chocolate for a delightful mocha experience.</div>
                        <div class="menu-item-price">$4.45</div>
                    </div>
                    <div class="quantity-and-cart">
                        <input type="number" class="quantity-input" value="1" min="1">
                        <button class="add-to-cart-button" onclick="addToCart('Coffeing Mocha', 4.45, 1)">Add to Cart</button>
                    </div>
                </div>
                <div class="menu-item">
                    <asp:Image ID="Image3" runat="server" CssClass="center" ImageUrl="~/assests/imgs/prod1.webp" />
                        <div class="menu-item-details">
                        <div class="menu-item-name">Coffeing Mocha</div>
                        <div class="menu-item-description">Indulge in the velvety smoothness of our classic espresso paired with decadent chocolate for a delightful mocha experience.</div>
                        <div class="menu-item-price">$4.45</div>
                    </div>
                    <div class="quantity-and-cart">
                        <input type="number" class="quantity-input" value="1" min="1">
                        <button class="add-to-cart-button" onclick="addToCart('Coffeing Mocha', 4.45, 1)">Add to Cart</button>
                    </div>
                </div>
                <div class="menu-item">
                    <asp:Image ID="Image4" runat="server" CssClass="center" ImageUrl="~/assests/imgs/prod1.webp" />
                    <div class="menu-item-details">
                        <div class="menu-item-name">Coffeing Mocha</div>
                        <div class="menu-item-description">Indulge in the velvety smoothness of our classic espresso paired with decadent chocolate for a delightful mocha experience.</div>
                        <div class="menu-item-price">$4.45</div>
                    </div>
                    <div class="quantity-and-cart">
                        <input type="number" class="quantity-input" value="1" min="1">
                        <button class="add-to-cart-button" onclick="addToCart('Coffeing Mocha', 4.45, 1)">Add to Cart</button>
                    </div>
                </div>
              <!-- Add more menu items here -->
            </div>
        </div>
    </section>
    </form>
</body>
</html>
