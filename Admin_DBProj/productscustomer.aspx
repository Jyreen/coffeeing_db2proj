<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Popular Products Section Using HTML, CSS, Bootstrap</title>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'>
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap');

        body {
            font-family: "Poppins", sans-serif;
            color: #444444;
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
            background-attachment: fixed;
            background-color: #c2a375;
            /* Fallback color if the image is not available */
        }

        a,
        a:hover {
            text-decoration: none;
            color: inherit;
        }

        .section-products {
            padding: 80px 0 54px;
        }

        .section-products .header {
            margin-bottom: 50px;
        }

        .section-products .header h3 {
            font-size: 1rem;
            color: black;
            font-weight: 500;
        }

        .section-products .header h2 {
            font-size: 2.2rem;
            font-weight: 400;
            color: black;
        }

        .section-products {
            display: flex;
            flex-wrap: wrap;
         }

        .section-products .single-product {
            width: 25%; /* Set each product to occupy 25% of the container width */
            float: left; /* Float the products left to create a grid layout */
            margin-bottom: 26px;
            color: black;
        }

        .section-products .single-product .part-1 {
            position: relative;
            height: 290px;
            max-height: 290px;
            margin-bottom: 20px;
            overflow: hidden;
        }

        .section-products .single-product .part-1::before {
            position: absolute;
            content: "";
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            transition: all 0.3s;
        }

        .section-products .single-product:hover .part-1::before {
            transform: scale(1.2, 1.2) rotate(5deg);
        }

        .section-products #product-1 .part-1::before {
            background: url("assests/imgs/expresso.jpg") no-repeat center;
            background-size: cover;
            transition: all 0.3s;
            color: #FFFFFF;
        }

        .section-products #product-2 .part-1::before {
            background: url("assests/imgs/Cappucino.jpg") no-repeat center;
            background-size: cover;
            color: #FFFFFF;
        }


        /* Taskbar Styles */
        .taskbar {
            margin-bottom: 20px;
        }

        .taskbar button {
            margin: 0 10px;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            background-color: #fe302f;
            color: #fff;
            cursor: pointer;
        }

        .taskbar button:hover {
            background-color: #d63029;
        }

       header {
            background-color: transparent; 
            padding: 5px 15px; 
            color: #fff;
            display: flex;
            position: fixed; 
            top: 0; 
            width: 100%; 
            z-index: 1000; 
            height: 60px; 
            border-bottom: 2px solid #000; 
        }

        /* Logo styles */
        .logo {
            font-family: 'Arial', sans-serif;
            font-size: 24px;
            text-transform: uppercase;
            margin-right: auto;
            display: flex;
            align-items: center;
        }


        /* Navigation styles */
        nav {
            display: flex;
            align-items: center;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 10px;
            font-size: 16px;
            /* Adjust font size */
        }

        nav a:hover {
            text-decoration: underline;
        }

        /* Contact information styles */
        .contact-info {
            color: #fff;
            font-size: 14px;
            margin-left: auto;
            
        }

        .auto-style1 {
            max-width: 1900px;
            margin: 0 auto;
            You can optionally add padding or margin if needed */
        }

        .cta-button {
            background-color: #3c2a04;
            border: none;
            color: #fff;
            padding: 10px 20px;
            margin-top: 10px;
            margin-bottom: 10px;
            text-decoration: none;
            font-size: 18px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .cta-button:hover {
            background-color: #E4572E;
        }

        /* Hero section styles */
        .hero {
            position: relative;
            overflow: hidden;
            height: 100vh;
            text-align: left;
            /* Align text to the left */
            color: #fff;
        }

        .hero img {
            width: 100%;
            height: auto;
            position: absolute;
            top: 0;
            left: 0;
            opacity: 0;
            transition: opacity 1s ease-in-out;
        }

        .hero img.active {
            opacity: 1;
        }

        .hero-text {
            position: absolute;
            top: 50%;
            left: 20px;
            /* Adjusted left position */
            transform: translateY(-50%);
            z-index: 1;
            color: #fff;
            font-size: 48px;
          
            max-width: 50%;
            font-family: 'Pacifico', cursive;
        }
        .sidebar {
            position: fixed;
            top: 60px; 
            left: 0; 
            height: 100%; 
            width: 200px;
            background-color: transparent;
            padding: 20px;
            box-sizing: border-box; 
            overflow-y: auto; 
            border-right: 2px solid #000; 
         }



        .sidebar input[type="text"] {
            width: 100%;
            padding: 8px 12px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .sidebar ul {
            list-style-type: none;
            padding: 0;
        }

        .sidebar li {
            margin-bottom: 10px;
        }

        .sidebar a {
            color: #FFFFFF;
            text-decoration: none;
        }

        .sidebar a:hover {
            text-decoration: underline;
        }


        /* Product Section Styles */
        .product-section {
            margin-left: 240px; /* Width of the sidebar + some space */
            margin-right: 20px;
        }

        /* Adjustments for smaller screens */
        @media (max-width: 992px) {
            .product-section {
                margin-left: 0;
            }
        }

         .menu-category {
            margin-bottom: 30px;
        }

            .menu-category h2 {
                font-size: 24px;
                color: black; /* White text for category headings */
                margin-bottom: 10px;
            }

               .menu-grid {
          display: grid;
          grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
          gap: 20px;
        }

        .menu-item {
          display: flex;
          flex-direction: column;
          align-items: center;
          justify-content: space-between;
          background-color: #f0f0f0;
          border-radius: 10px;
          box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
          transition: transform 0.3s;
          padding: 20px;
        }

        .menu-item:hover {
          transform: translateY(-5px);
        }

        .menu-item img {
          width: 100px;
          height: 100px;
          border-radius: 50%;
          margin-bottom: 20px;
        }

        .menu-item-details {
          text-align: center;
        }

        .menu-item-name {
          font-size: 20px;
          font-weight: bold;
          color: black;
          margin-bottom: 5px;
        }

        .menu-item-description {
          color: black;
          margin-bottom: 10px;
        }

        .menu-item-price {
          color: #ffd700;
          font-weight: bold;
        }

        .quantity-and-cart {
            display: flex;
            align-items: center;
        }

        .quantity-input {
            width: 50px;
            margin-right: 10px;
            padding: 5px;
        }

        .add-to-cart-button {
            background-color: #3c2a04; 
            color: #ffffff; /* White text for button */
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

            .add-to-cart-button:hover {
                background-color: #e6bb00; /* Darker shade of gold on hover */
            }

        .cart-button {
            background-color: #ffd700;
            color: #ffffff;
            border: none;
            padding: 10px;
            border-radius: 50%;
            cursor: pointer;
            transition: background-color 0.3s;
        }

            .cart-button i {
                font-size: 24px;
            }
    </style>
</head>

<body>

    <header class="auto-style1"  CssClass="center" Height="100px" Width="100px">
        <div class="logo">
            
            <span style="font-family: 'Pacifico', sans-serif;">COFFEING</span> 
        </div>
        <nav>
            <a href="#"><i class="fas fa-search"></i></a> 
            <a href="#"><i class="fas fa-bell"></i></a> 
            <a href="#">Home</a>
            <a href="about.html">About</a> 
            <a href="shop.html">Shop</a> 
            <a href="#">Pages</a>
            <a href="#">Blog</a>
            <a href="login.html">Sign In</a> 
            <a href="#" class="cta-button">Contact Us</a> 
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
  <div class="container">
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

</body>

</html>
