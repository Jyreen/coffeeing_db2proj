﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Admin_DBProj.home" %>

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
            margin-top: 80px;
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
            padding: 5px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap; 
        }
        .report-box {
            text-align: center;
            padding: 20px;
            border-radius: 10px;
            background-color: #b37333;
            color: white;
            width: 150px;
            height: 150px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .report-box h3 {
            margin-top: 0;
            font-size: 18px;
        }
        .report-box p {
            margin: 0;
            font-size: 24px;
        }
        .logout a img {
            width: 35px; 
            height: 35px; 
        }
        .order-section {
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            padding: 20px;
            width: 100%;
            margin-top: 20px; 
        }
    </style>
</head>
<body>
    <form runat="server">
        <div class="container">
            <div class="sidebar">
                <ul>
                    <li><a href="home.aspx"><img src="../Images/icons8-home-64.png" /> <span style="font-weight: bold;">Home</span></a></li>
                    <li><a href="#"><img src="../Images/icons8-cart-48.png" /> <span style="font-weight: bold;">Orders</span></a></li>
                    <li><a href="accounts.aspx"><img src="../Images/icons8-person-64.png"/> <span style="font-weight: bold;">Customers</span></a></li>
                    <li><a href="products.aspx"><img src="../Images/icons8-cardboard-box-50.png" /> <span style="font-weight: bold;">Products</span></a></li>
                    <li><a href="#"><img src="../Images/icons8-analytics-60.png" /> <span style="font-weight: bold;">Analytics</span></a></li>
                </ul>
                <div class="logout">
                    <a href="login.aspx"><img src="../Images/icons8-logout-52.png" /></a>
                </div>
            </div>
            <div class="content">
                <div class="header">
                    <h1>COFFEEING</h1>
                </div>
                <div class="report">
                    <div class="report-box">
                        <h3>Total Customers</h3>
                        <p>100</p> <!-- Change this value dynamically -->
                    </div>
                    <div class="report-box">
                        <h3>Total Products</h3>
                        <p>50</p> <!-- Change this value dynamically -->
                    </div>
                    <div class="report-box">
                        <h3>Total Orders</h3>
                        <p>200</p> <!-- Change this value dynamically -->
                    </div>
                </div>
                <div class="order-section">
                    <h2>Recent Orders</h2>
                    <asp:GridView runat="server"></asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>