<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_customer.aspx.cs" Inherits="Admin_DBProj.customer" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Dashboard - Customers</title>
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
        .customer-form {
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            padding: 20px;
            margin-bottom: 20px;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .customer-form input[type="text"],
        .customer-form input[type="email"],
        .customer-form input[type="tel"],
        .customer-form input[type="password"],
        .customer-form select {
            width: calc(50% - 10px);
            padding: 10px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        .customer-form button {
            width: calc(50% - 10px);
            padding: 10px 20px;
            background-color: #b37333;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .customer-form button:hover {
            background-color: #955f28;
        }
        .customer-list {
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            padding: 20px;
        }
        .customer-list table {
            width: 100%;
            border-collapse: collapse;
        }
        .customer-list th, .customer-list td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: left;
        }
        .customer-list th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
        .customer-list tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .customer-list tr:hover {
            background-color: #f2f2f2;
        }
        .search-bar {
            margin-bottom: 20px;
        }
        .search-bar input[type="text"] {
            width: calc(100% - 20px);
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
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
        </div>
        <div class="content">
            <div class="header">
                <h1>Coffeeing - Customers</h1>
            </div>
            <div class="customer-form">
                <form>
                    <input type="text" placeholder="Name" />
                    <input type="text" placeholder="Address" />
                    <input type="email" placeholder="Email" />
                    <input type="tel" placeholder="Contact Number" />
                    <input type="password" placeholder="Password" />
                    <button type="submit">Add Customer <i class="fas fa-plus"></i></button>
                </form>
            </div>
            <div class="search-bar">
                <input type="text" placeholder="Search...">
            </div>
            <div class="customer-list">
                <h2>Customer List</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Address</th>
                            <th>Email</th>
                            <th>Contact Number</th>
                            <th>Password</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Populate this section dynamically from database -->
                        <tr>
                            <td>Customer 1</td>
                            <td>Address of Customer 1</td>
                            <td>customer1@example.com</td>
                            <td>1234567890</td>
                            <td>******</td>
                            <td>
                                <button><i class="fas fa-edit"></i></button>
                                <button><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>Customer 2</td>
                            <td>Address of Customer 2</td>
                            <td>customer2@example.com</td>
                            <td>9876543210</td>
                            <td>******</td>
                            <td>
                                <button><i class="fas fa-edit"></i></button>
                                <button><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <!-- Add more rows as needed -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>