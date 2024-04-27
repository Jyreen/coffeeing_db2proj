<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="Admin_DBProj.products" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Dashboard - Products</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-A/n8r9iKqroIiJsCxpx88lRYabNt7emRyVzR2T+1GnL/LbBCFLhIOBkye5ofd40wYbIB+DxXp1Bcy2r34W0zZA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #F8F5EC;
            margin: 0;
            padding: 0;
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
        .product-form {
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            padding: 20px;
            margin-bottom: 20px;
        }
        .product-form input[type="text"],
        .product-form select {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        .product-form button {
            padding: 10px 20px;
            background-color: #b37333;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .product-form button:hover {
            background-color: #955f28;
        }
        .product-list {
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            padding: 20px;
        }
        .product-list table {
            width: 100%;
            border-collapse: collapse;
        }
        .product-list th, .product-list td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: left;
        }
        .product-list th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
        .product-list tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .product-list tr:hover {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="sidebar">
            <ul>
                <li><a href="home.aspx"><img src="../Images/icons8-home-64.png" /> <span style="font-weight: bold;">Home</span></a></li>
                <li><a href="#"><img src="../Images/icons8-cart-48.png" /> <span style="font-weight: bold;">Orders</span></a></li>
                <li><a href="accounts.aspx"><img src="../Images/icons8-person-64.png"/> <span style="font-weight: bold;">Customers</span></a></li>
                <li><a href="products.aspx"><img src="../Images/icons8-cardboard-box-50.png" /> <span style="font-weight: bold;">Products</span></a></li>
                <li><a href="#"><img src="../Images/icons8-analytics-60.png" /> <span style="font-weight: bold;">Analytics</span></a></li>
            </ul>
        </div>
        <div class="content">
            <div class="header">
                <h1>Coffeeing- Products</h1>
            </div>
            <div class="product-form">
                <form>
                    <input type="text" placeholder="Name" />
                    <input type="text" placeholder="Description" />
                    <input type="text" placeholder="Price" />
                    <select>
                        <option value="available">Available</option>
                        <option value="outofstock">Out of Stock</option>
                    </select>
                    <button type="submit">Add Product</button>
                </form>
            </div>
            <div class="product-list">
                <h2>Product List</h2>
                <asp:GridView ID="product" runat="server"></asp:GridView>
            </div>
        </div>
    </div>
</body>
</html>
