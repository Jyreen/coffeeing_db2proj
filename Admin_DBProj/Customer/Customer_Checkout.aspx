<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <title>COFFEEING - Cart</title>
    <!-- Include Bootstrap and Font Awesome CSS -->
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'>
    <!-- Your custom CSS file -->
    <link href="~/Customer/css/checkout.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div class="logo">
                <a href="Customer_Homepage.aspx"><span>COFFEING</span></a>
            </div>
            <nav>
                <a href="#"><i class="fas fa-search"></i></a>
                <a href="#"><i class="fas fa-bell"></i></a>
                <a href="Customer_Homepage.aspx">Home</a>
                <a href="Customer_Products.aspx">Shop</a>
            </nav>
        </header>
       <section class="container mt-5">

           <div class="row justify-content-center text-center">
    <div class="col-md-8 col-lg-6">
        <div class="header">
            <h2>Confirm your Order</h2>
        </div>
    </div>
</div>
                       <div class="card">
                <div class="card-body">
                    <!-- Order Summary -->
                    <div>
                        <h4>Order Summary</h4>
                        <div>
                            <p><strong>Product Name:</strong> Coffee Blend</p>
                            <p><strong>Price:</strong> $10.00</p>
                            <p><strong>Quantity:</strong> 2</p>
                            <p><strong>Subtotal:</strong> $20.00</p>
                            <!-- Payment Method Dropdown -->
                            <label for="payment-method">Payment Method:</label>
                            <select id="payment-method" name="payment-method">
                                <option value="cash">Cash</option>
                                <option value="gcash">GCash</option>
                                <option value="credit">Credit Card</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>


                    <!-- Shipping Address Form -->
                    <form id="addressForm">
                        <h4>Shipping Address</h4>
                        <div class="form-group">
                            <label for="fullName">Full Name:</label>
                            <input type="text" id="fullName" name="fullName" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="address">Address:</label>
                            <input type="text" id="address" name="address" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="city">City:</label>
                            <input type="text" id="city" name="city" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="zipCode">Zip Code:</label>
                            <input type="text" id="zipCode" name="zipCode" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="country">Country:</label>
                            <input type="text" id="country" name="country" class="form-control" required>
                        </div>

                        <!-- Confirm Button -->
                        <button class="btn btn-primary btn-confirm" onclick="confirmOrder()">Confirm Order</button>
                    </form>
                </div>
            </div>
        </section>

    <script src="js/cart.js"></script>
        
    </form>
</body>
</html>
