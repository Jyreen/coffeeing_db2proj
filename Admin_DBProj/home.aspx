<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Admin_DBProj.home" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Dashboard - Coffee Shop</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-A/n8r9iKqroIiJsCxpx88lRYabNt7emRyVzR2T+1GnL/LbBCFLhIOBkye5ofd40wYbIB+DxXp1Bcy2r34W0zZA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #F8F5EC;
            margin: 0;
            padding: 0;
        }
        .logout {
            text-align: center;
        }
        .container {
            display: flex;
            height: 100vh;
        }
        .sidebar {
            width: 250px;
            background-color: #C2A375;
            color: #fff;
            padding: 20px;
            box-sizing: border-box;
        }
        .sidebar ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }
        .sidebar ul li {
            margin-bottom: 15px;
        }
        .sidebar ul li a {
            color: #fff;
            text-decoration: none;
            display: flex;
            align-items: center;
        }
        .sidebar ul li a img {
            width: 30px;
            height: 30px; 
            margin-right: 10px;
        }
        .content {
            flex: 1;
            padding: 20px;
        }
        .header {
            background-color: #F8F5EC;
            color: black;
            padding: 20px;
            margin-bottom: 10px;
        }
        h1 {
            margin: 0;
            font-weight: bold;
        }
        .report {
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            padding: 20px;
        }
        .logout {
            margin-top: 80px;
        }
        .logout a img {
            width: 35px; /* Set width of logout image */
            height: 35px; /* Set height of logout image */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="sidebar">
            <ul>
                <li><a href="home.aspx"><img src="Images/icons8-home-64.png" /> <span style="font-weight: bold;">Home</span></a></li>
                <li><a href="#"><img src="Images/icons8-cart-48.png" /> <span style="font-weight: bold;">Orders</span></a></li>
                <li><a href="customer.aspx"><img src="Images/icons8-person-64.png"/> <span style="font-weight: bold;">Customers</span></a></li>
                <li><a href="products.aspx"><img src="Images/icons8-cardboard-box-50.png" /> <span style="font-weight: bold;">Products</span></a></li>
                <li><a href="#"><img src="Images/icons8-analytics-60.png" /> <span style="font-weight: bold;">Analytics</span></a></li>
            </ul>
            <div class="logout">
                <a href="login.aspx"><img src="Images/icons8-logout-52.png" /></a>
            </div>
        </div>
        <div class="content">
            <div class="header">
                <h1>COFFEEING</h1>
            </div>
            <div class="report">
                <h2>Welcome to the Admin Dashboard</h2>
                <p>Please select a report from the menu on the left.</p>
            </div>
        </div>
    </div>
</body>
</html>