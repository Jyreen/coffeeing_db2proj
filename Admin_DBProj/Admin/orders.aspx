﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="Admin_DBProj.orders" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Orders - Coffee Shop</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-A/n8r9iKqroIiJsCxpx88lRYabNt7emRyVzR2T+1GnL/LbBCFLhIOBkye5ofd40wYbIB+DxXp1Bcy2r34W0zZA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #F8F5EC;
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: #F8F5EC;
            color: black;
            padding: 20px;
            margin-bottom: 10px;
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
        h1 {
            margin: 0;
            font-weight: bold;
        }
        .table-container {
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            padding: 20px;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #b37333;
            color: white;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="sidebar">
            <ul>
                <li><a href="home.aspx"><img src="../Images/icons8-home-64.png" /> <span style="font-weight: bold;">Home</span></a></li>
                <li><a href="orders.aspx"><img src="../Images/icons8-cart-48.png" /> <span style="font-weight: bold;">Orders</span></a></li>
                <li><a href="accounts.aspx"><img src="../Images/icons8-person-64.png"/> <span style="font-weight: bold;">Customers</span></a></li>
                <li><a href="products.aspx"><img src="../Images/icons8-cardboard-box-50.png" /> <span style="font-weight: bold;">Products</span></a></li>
                <li><a href="analytics.aspx"><img src="../Images/icons8-analytics-60.png" /> <span style="font-weight: bold;">Analytics</span></a></li>
            </ul>
        </div>
        <div class="content">
             <div class="header">
                 <h1>Coffeeing- Orders</h1>
             </div>
            <div class="table-container">
                <asp:GridView ID="order" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="ORDER_ID_PK">
                    <Columns>
                        <asp:BoundField DataField="ORDER_ID_PK" HeaderText="ORDER ID" ReadOnly="True" InsertVisible="False" SortExpression="ORDER_ID_PK"></asp:BoundField>
                        <asp:BoundField DataField="ORDER_DATE" HeaderText="ORDER DATE" SortExpression="ORDER_DATE"></asp:BoundField>
                        <asp:BoundField DataField="ORDER_TOTAL" HeaderText="ORDER TOTAL" SortExpression="ORDER_TOTAL"></asp:BoundField>
                        <asp:BoundField DataField="ORDER_STATUS_ID_FK" HeaderText="ORDER STATUS ID" SortExpression="ORDER_STATUS_ID_FK"></asp:BoundField>
                        <asp:BoundField DataField="SD_ADD_ID_FK" HeaderText="SAVED DELIVER ADD ID" SortExpression="SD_ADD_ID_FK"></asp:BoundField>
                        <asp:BoundField DataField="ACC_ID_FK" HeaderText="ACCOUNT ID" SortExpression="ACC_ID_FK"></asp:BoundField>
                        <asp:BoundField DataField="FBACK_ID_FK" HeaderText="FEEDBACK ID" SortExpression="FBACK_ID_FK"></asp:BoundField>
                        <asp:BoundField DataField="PAY_ID" HeaderText="PAY ID" SortExpression="PAY_ID"></asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ORDER]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</body>
</html>