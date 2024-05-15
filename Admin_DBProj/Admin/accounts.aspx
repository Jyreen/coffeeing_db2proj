<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accounts.aspx.cs" Inherits="Admin_DBProj.accounts" %>

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
        .add-customer-button {
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

        .add-customer-button:hover {
            background-color: #955f28;
        }

        .insert-customer-button {
            width: calc(20% - 10px);
            padding: 10px 20px;
            background-color: #b37333;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-bottom: 20px;
        }

        .insert-customer-button:hover {
            background-color: #955f28;
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
                    <h1>Coffeeing - Customers</h1>
                </div>
                <div class="customer-form">
                    <asp:Button runat="server" ID="btnShowAddCustomer" Text="Insert Customer" CssClass="insert-customer-button" OnClick="btnShowAddCustomer_Click" />
                    <asp:Button runat="server" ID="btnShowUpdateCustomer" Text="Update Customer" CssClass="insert-customer-button" OnClick="btnShowUpdateCustomer_Click" />
                    <asp:Panel runat="server" ID="AddPanel" class="add-customer" visible="false">
                        <asp:TextBox ID="txtFirstName" runat="server" placeholder="First Name"></asp:TextBox>
                        <asp:TextBox ID="txtLastName" runat="server" placeholder="Last Name"></asp:TextBox>
                        <asp:TextBox ID="txtAddress" runat="server" placeholder="Address"></asp:TextBox>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
                        <asp:TextBox ID="txtContactNumber" runat="server" placeholder="Contact Number"></asp:TextBox>
                        <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        <asp:Button ID="btnAddCustomer" runat="server" Text="Add Customer" OnClick="btnAddCustomer_Click" CssClass="add-customer-button"/>
                    </asp:Panel>
                    <asp:Panel runat="server" ID="UpdatePanel" class="add-customer" visible="false">
                        <asp:Button ID="getCustomerData" runat="server" Text="Get Customer" CssClass="insert-customer-button" OnClick="getCustomerData_Click1" />
                        <asp:TextBox ID="getName" runat="server" placeholder="Search..."></asp:TextBox>
                        <asp:TextBox ID="uFirstName" runat="server" placeholder="First Name"></asp:TextBox>
                        <asp:TextBox ID="uLastName" runat="server" placeholder="Last Name"></asp:TextBox>
                        <asp:TextBox ID="uAddress" runat="server" placeholder="Address"></asp:TextBox>
                        <asp:TextBox ID="uEmail" runat="server" placeholder="Email"></asp:TextBox>
                        <asp:TextBox ID="uContactNumber" runat="server" placeholder="Contact Number"></asp:TextBox>
                        <asp:TextBox ID="uPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        <asp:DropDownList ID="ddlStatus" runat="server">
                            <asp:ListItem Value="1">Active</asp:ListItem>
                            <asp:ListItem Value="0">Inactive</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="btnUpdateCustomer" runat="server" Text="Update Customer" CssClass="add-customer-button" OnClick="btnUpdateCustomer_Click1" />
                    </asp:Panel>
                </div>
                <div class="customer-list">
                    <h2>Customer List</h2>
                    <asp:GridView runat="server" DataSourceID="SqlDataSource1" ID="ctl02" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="ACC_NAME" HeaderText="NAME" ReadOnly="True" SortExpression="ACC_NAME"></asp:BoundField>
                            <asp:BoundField DataField="ACC_EMAIL" HeaderText="EMAIL" SortExpression="ACC_EMAIL"></asp:BoundField>
                            <asp:BoundField DataField="ACC_ADDRESS" HeaderText="ADDRESS" SortExpression="ACC_ADDRESS"></asp:BoundField>
                            <asp:BoundField DataField="ACC_PNUM" HeaderText="CONTACT NUMBER" SortExpression="ACC_PNUM"></asp:BoundField>
                            <asp:BoundField DataField="ACC_STATUS" HeaderText="STATUS" SortExpression="ACC_STATUS"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SP_Customers_GV" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </form>
</body>
</html>