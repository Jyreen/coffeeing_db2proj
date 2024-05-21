<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="analytics.aspx.cs" Inherits="Admin_DBProj.analytics" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <title>Admin Reports</title>
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
        .report-form {
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            padding: 20px;
            margin-bottom: 20px;
        }
        .report-form input[type="date"] {
            padding: 10px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        .report-form button {
            background-color: #b37333;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-bottom: 20px;
        }
        .report-form button:hover {
            background-color: #955f28;
        }
        .report-list {
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            padding: 20px;
        }
        .report-list table {
            width: 100%;
            border-collapse: collapse;
        }
        .report-list th, .report-list td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: left;
        }
        .report-list th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
        .report-list tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .report-list tr:hover {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <form runat="server">
        <div class="container">
            <div class="sidebar">
                <ul>
                    <li><a href="home.aspx"><img src="../Images/icons8-home-64.png" /> <span style="font-weight: bold;">Home</span></a></li>
                    <li><a href="orders.aspx"><img src="../Images/icons8-cart-48.png" /> <span style="font-weight: bold;">Orders</span></a></li>
                    <li><a href="accounts.aspx"><img src="../Images/icons8-person-64.png"/> <span style="font-weight: bold;">Customers</span></a></li>
                    <li><a href="products.aspx"><img src="../Images/icons8-cardboard-box-50.png" /> <span style="font-weight: bold;">Products</span></a></li>
                    <li><a href="analytics.aspx"><img src="../Images/icons8-analytics-60.png" /> <span style="font-weight: bold;">Reports</span></a></li>
                </ul>
            </div>
            <div class="content">
                <div class="header">
                    <h1>Coffeeing- Reports</h1>
                </div>
                <div class="report-form">
                    <asp:Label ID="lblStartDate" runat="server" Text="Start Date: " />
                    <asp:TextBox ID="txtStartDate" runat="server" TextMode="Date" ></asp:TextBox>   
                    <asp:Label ID="lblEndDate" runat="server" Text="End Date: " />
                    <asp:TextBox ID="txtEndDate" runat="server" TextMode="Date"></asp:TextBox>                      
                    <asp:Button ID="btnViewReport" runat="server" Text="View" CssClass="report-form button" OnClick="btnViewReport_Click" />
                    <asp:Button ID="btnExportCSV" runat="server" Text="Export to CSV" CssClass="report-form button" OnClick="btnExportCSV_Click" />
                </div>
                <div class="report-list">
                    <h2> Total Sales </h2>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True"></asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>