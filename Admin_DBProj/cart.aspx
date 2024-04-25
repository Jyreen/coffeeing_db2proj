<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cart</title>
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
        $color-border: #eee;
        $color-label: #aaa;
        $font-default: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, sans-serif;
        $font-bold: 'HelveticaNeue-Medium', 'Helvetica Neue Medium';

        .product-image {
          
          width: 100px; /* Set a fixed width for the images */
          margin-right: 10px; /* Add some margin between the images and other elements */
        }

        .product-details {
            float: left;
            width: calc(37% - 110px); /* Adjust the width to accommodate the image width and margin */
        }

        .product-price {
          float: left;
          width: 12%;
        }

        .product-quantity {
          float: left;
          width: 10%;
        }

        .product-removal {
          float: left;
          width: 9%;
        }

        .product-line-price {
          float: left;
          width: 12%;
          text-align: right;
        }

        /* This is used as the traditional .clearfix class */
        .group:before,
        .group:after {
        content: '';
        display: table;
        }

        .group:after {
        clear: both;
        }

        .group {
        zoom: 1;
        }


        /* Apply clearfix in a few places */
        .shopping-cart, .column-labels, .product, .totals-item {
            @extend .group;
        }


        /* Apply dollar signs */
        .product .product-price:before, .product .product-line-price:before, .totals-value:before {
            content: '$';
        }


        /* Body/Header stuff */
        body {
            padding: 0px 30px 30px 20px;
            font-family: $font-default;
            font-weight: 100;
        }

        h1 {
            font-weight: 100;
        }

        label {
            color: $color-label;
        }

        .shopping-cart {
            margin-top: 60 px;
        }


        /* Column headers */
        .column-labels {
            label {
            padding-bottom: 15px;
            margin-bottom: 15px;
            border-bottom: 1px solid $color-border;
            }
  
            .product-image, .product-details, .product-removal {
            text-indent: -9999px;
            }
        }


        /* Product entries */
        .product {
            margin-bottom: 20px;
            padding-bottom: 10px;
            border-bottom: 1px solid $color-border;
  
            .product-image {
            text-align: center;
            img {
                width: 100px;
            }
            }
  
            .product-details {
            .product-title {
                margin-right: 20px;
                font-family: $font-bold;
            }
            .product-description {
                margin: 5px 20px 5px 0;
                line-height: 1.4em;
            }
            }
  
            .product-quantity {
            input {
                width: 40px;
      
            }
            }
  
            .remove-product {
            border: 0;
            padding: 4px 8px;
            background-color: #c66;
            color: #fff;
            font-family: $font-bold;
            font-size: 12px;
            border-radius: 3px;
            }
  
            .remove-product:hover {
            background-color: #a44;
            }
        }


        /* Totals section */
        .totals {
            .totals-item {
            float: right;
            clear: both;
            width: 100%;
            margin-bottom: 10px;
    
            label {
                float: left;
                clear: both;
                width: 79%;
                text-align: right;
            }
    
            .totals-value {
                float: right;
                width: 21%;
                text-align: right;
            }
            }
  
            .totals-item-total {
            font-family: $font-bold;
            }
        }

        .checkout {
            float: right;
            border: 0;
            margin-top: 20px;
            padding: 6px 25px;
            background-color: #6b6;
            color: #fff;
            font-size: 25px;
            border-radius: 3px;
        }

        .checkout:hover {
            background-color: #494;
        }

        /* Make adjustments for tablet */
        @media screen and (max-width: 650px) {
  
            .shopping-cart {
            margin: 0;
            padding-top: 20px;
            border-top: 1px solid $color-border;
            }
  
            .column-labels {
            display: none;
            }
  
            .product-image {
            float: right;
            width: auto;
            img {
                margin: 0 0 10px 10px;
            }
            }
  
            .product-details {
            float: none;
            margin-bottom: 10px;
            width: auto;
            }
  
            .product-price {
            clear: both;
            width: 70px;
            }
  
            .product-quantity {
            width: 100px;
            input {
                margin-left: 20px;
            }
            }
  
            .product-quantity:before {
            content: 'x';
            }
  
            .product-removal {
            width: auto;
            }
  
            .product-line-price {
            float: right;
            width: 70px;
            }
  
        }


        /* Make more adjustments for phone */
        @media screen and (max-width: 350px) {
  
            .product-removal {
            float: right;
            }
  
            .product-line-price {
            float: right;
            clear: left;
            width: auto;
            margin-top: 10px;
            }
  
            .product .product-line-price:before {
            content: 'Item Total: $';
            }
  
            .totals {
            .totals-item {
                label {
                width: 60%;
                }
      
                .totals-value {
                width: 40%;
                }
            }
            }
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
            background-color: transparent; /* Changed to transparent */
            padding: 5px 15px; /* Adjusted padding */
            color: #fff;
            display: flex;
            position: fixed; /* Changed to fixed */
            top: 0; /* Placed at the top of the viewport */
            width: 100%; /* Full width */
            z-index: 1000; /* Ensuring it stays on top of other content */
            height: 60px; /* Set height */
            border-bottom: 2px solid #000; /* Added border at the bottom */
          }

        /* Logo styles */
        .logo {
            font-family: 'Arial', sans-serif;
            /* Changed font family */
            font-size: 24px;
            /* Adjusted font size */
            text-transform: uppercase;
            /* All caps */
            margin-right: auto;
            /* Pushes navigation to the right */
            display: flex;
            /* Added to align image and text */
            align-items: center;
            /* Added to align image and text */
        }

        .logo img {
            width: 40px;
            /* Adjust the size of the image */
            margin-right: 10px;
            /* Add some space between image and text */
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
            /* Pushes contact info to the left */
        }

        .auto-style1 {
            max-width: 1900px;
            margin: 0 auto;
            /* Centering the content horizontally */
            /* You can optionally add padding or margin if needed */
        }

        /* Call to action button styles */
        .cta-button {
            background-color: #FF6F61;
            /* Custom color */
            border: none;
            color: #fff;
            padding: 10px 20px;
            /* Adjusted padding */
            margin-top: 10px;
            /* Adjusted margin top */
            text-decoration: none;
            font-size: 18px;
            /* Adjusted font size */
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .cta-button:hover {
            background-color: #E4572E;
            /* Darker shade on hover */
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
            /* Larger font size */
            max-width: 50%;
            /* Added maximum width */
            font-family: 'Pacifico', cursive;
            /* Creative font style */
        }
        .sidebar {
            position: fixed;
            top: 60px; /* Height of the header */
            left: 0; /* Align sidebar to the left */
            height: 100%; /* Fill the entire height of the viewport */
            width: 200px;
            background-color: #f0f0f0;
            padding: 20px;
            box-sizing: border-box; /* Include padding and border in the width */
            overflow-y: auto; /* Enable vertical scrolling if content exceeds sidebar height */
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
            color: #333;
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

            .cart-grid {
              width: 80%;
              margin: 0 auto;
        }
       .cart-item {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 15px;
  background-color: #f0f0f0;
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s;
}

.cart-item:hover {
  transform: translateY(-5px);
}

.cart-item img {
  width: 100px;
  height: 100px;
  border-radius: 50%;
  margin-right: 20px;
  grid-column: 1;
}

.cart-item-details {
  grid-column: 2 / -1;
}

.cart-item-name {
  font-size: 20px;
  font-weight: bold;
  color: black;
  margin-bottom: 5px;
}

.cart-item-description {
  color: black;
  margin-bottom: 10px;
}

.cart-item-price {
  color: #ffd700;
  font-weight: bold;
}

.quantity-and-remove {
  grid-column: 4;
  display: flex;
  align-items: center;
}

.quantity-input {
  width: 50px;
  margin-right: 10px;
  padding: 5px;
}

.remove-from-cart-button {
  background-color: #ffd700;
  color: #ffffff;
  border: none;
  padding: 10px 20px;
  cursor: pointer;
  transition: background-color 0.3s;
  border-radius: 5px;
}

.remove-from-cart-button:hover {
  background-color: #e6bb00;
}

    </style>
</head>

<body>

    <!-- Your JavaScript code -->
  <script>
    var taxRate = 0.05;
    var shippingRate = 15.00; 
    var fadeTime = 300;

    /* Assign actions */
    $('.product-quantity input').change( function() {
      updateQuantity(this);
    });

    $('.product-removal button').click( function() {
      removeItem(this);
    });

    /* Recalculate cart */
    function recalculateCart() {
      var subtotal = 0;
      
      /* Sum up row totals */
      $('.product').each(function () {
        subtotal += parseFloat($(this).children('.product-line-price').text());
      });
      
      /* Calculate totals */
      var tax = subtotal * taxRate;
      var shipping = (subtotal > 0 ? shippingRate : 0);
      var total = subtotal + tax + shipping;
      
      /* Update totals display */
      $('.totals-value').fadeOut(fadeTime, function() {
        $('#cart-subtotal').html(subtotal.toFixed(2));
        $('#cart-tax').html(tax.toFixed(2));
        $('#cart-shipping').html(shipping.toFixed(2));
        $('#cart-total').html(total.toFixed(2));
        if(total == 0){
          $('.checkout').fadeOut(fadeTime);
        }else{
          $('.checkout').fadeIn(fadeTime);
        }
        $('.totals-value').fadeIn(fadeTime);
      });
    }

    /* Update quantity */
    function updateQuantity(quantityInput) {
      /* Calculate line price */
      var productRow = $(quantityInput).parent().parent();
      var price = parseFloat(productRow.children('.product-price').text());
      var quantity = $(quantityInput).val();
      var linePrice = price * quantity;
      
      /* Update line price display and recalc cart totals */
      productRow.children('.product-line-price').each(function () {
        $(this).fadeOut(fadeTime, function() {
          $(this).text(linePrice.toFixed(2));
          recalculateCart();
          $(this).fadeIn(fadeTime);
        });
      });  
    }

    /* Remove item from cart */
    function removeItem(removeButton) {
      /* Remove row from DOM and recalc cart total */
      var productRow = $(removeButton).parent().parent();
      productRow.slideUp(fadeTime, function() {
        productRow.remove();
        recalculateCart();
      });
    }
  </script>

    <header class="auto-style1">
        <div class="logo">
            <asp:Image ID="Image3" runat="server" CssClass="center" Height="100px" ImageUrl="~/assests/imgs/dino-costume.gif" Width="100px" />
            <span style="font-family: 'Arial', sans-serif;">COFFEING</span> <!-- Changed font -->
        </div>
        <nav>
            <a href="#"><i class="fas fa-search"></i></a> <!-- Magnifying glass icon -->
            <a href="#"><i class="fas fa-bell"></i></a> <!-- Notification icon -->
            <a href="#">Home</a>
            <a href="about.html">About</a> <!-- Link to the about page -->
            <a href="shop.html">Shop</a> <!-- Link to your shop page -->
            <a href="#">Pages</a>
            <a href="#">Blog</a>
            <a href="login.html">Sign In</a> <!-- Link to your login page -->
            <a href="#" class="cta-button">Contact Us</a> <!-- Orange "Contact Us" button -->
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

    <!-- Add more cart items as needed -->
  </div>
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


    
</body>

</html>
