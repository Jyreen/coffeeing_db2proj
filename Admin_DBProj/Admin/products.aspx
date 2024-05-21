<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="Admin_DBProj.products" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
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
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
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
        .product-form-button {
            width: 100%;
            background-color: #b37333;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .product-form-button:hover {
            background-color: #955f28;
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
        .insert-product-button {
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
        .insert-product-button:hover {
            background-color: #955f28;
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
                    <h1>Coffeeing - Products</h1>
                </div>
                <div class="product-form">
                    <asp:Button runat="server" ID="btnShowAddProduct" Text="Insert Product" CssClass="insert-product-button" OnClick="btnShowAddProduct_Click" />
                    <asp:Button runat="server" ID="btnShowUpdateProduct" Text="Update Product" CssClass="insert-product-button" OnClick="btnShowUpdateProduct_Click" />
                    <asp:Panel runat="server" ID="AddPanel" CssClass="add-product" Visible="false">
                        <asp:TextBox ID="txtName" runat="server" placeholder="Name"></asp:TextBox>
                        <asp:TextBox ID="txtDesc" runat="server" placeholder="Description"></asp:TextBox>
                        <asp:TextBox ID="txtPrice" runat="server" placeholder="Price"></asp:TextBox>
                        <asp:TextBox ID="txtQuantity" runat="server" placeholder="Quantity"></asp:TextBox>
                        <asp:DropDownList ID="ddlCategory" runat="server">
                        <asp:ListItem Value="0" Text="Donut"></asp:ListItem>
                    <asp:ListItem Value="1" Text="Coffee"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlStatus" runat="server">
                            <asp:ListItem Text="Available" Value="Available"></asp:ListItem>
                            <asp:ListItem Text="Unavailable" Value="Unavailable"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="btnAddProduct" runat="server" Text="Add Product" CssClass="insert-product-button" OnClick="btnAddProduct_Click" />
                    </asp:Panel>

                    <asp:Panel runat="server" ID="UpdateProductPanel" CssClass="update-product" Visible="false">
                        <asp:TextBox ID="getName" runat="server" placeholder="Search..." OnTextChanged="getName_TextChanged" AutoPostBack="true"></asp:TextBox>
                        <asp:Button ID="getProductData" runat="server" Text="Get Product"  OnClick="getProductData_Click" CssClass="insert-product-button"  />
                        <asp:TextBox ID="uName" runat="server" placeholder="Name"></asp:TextBox>
                        <asp:TextBox ID="uDesc" runat="server" placeholder="Description"></asp:TextBox>
                        <asp:TextBox ID="uPrice" runat="server" placeholder="Price"></asp:TextBox>
                        <asp:TextBox ID="uQuantity" runat="server" placeholder="Quantity"></asp:TextBox>
                        <asp:DropDownList ID="uCategory" runat="server">
                            <asp:ListItem Text="Donut" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Coffee" Value="1"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="uStatus" runat="server">
                            <asp:ListItem Text="Available" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Unavailable" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="btnUpdateProduct" runat="server" Text="Update Product"  CssClass="insert-product-button" OnClick="btnUpdateProduct_Click"  />
                    </asp:Panel>    
                </div>
                <div class="product-list">
                    <h2>Product List</h2>
                    <asp:GridView ID="prod" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                          <Columns>
                              <asp:BoundField DataField="PRODUCT_NAME" HeaderText="NAME" ReadOnly="True" SortExpression="PRODUCT_NAME"></asp:BoundField>
                              <asp:BoundField DataField="PRODUCT_DESC" HeaderText="DESCRIPTION" SortExpression="PRODUCT_DESC"></asp:BoundField>
                              <asp:BoundField DataField="PRODUCT_QUANTITY" HeaderText="QUANTITY" SortExpression="PRODUCT_QUANTITY"></asp:BoundField>
                              <asp:BoundField DataField="PRODUCT_STATUS" HeaderText="STATUS" SortExpression="PRODUCT_STATUS"></asp:BoundField>
                              <asp:BoundField DataField="PRODUCT_PRICE" HeaderText="PRICE" SortExpression="PRODUCT_PRICE"></asp:BoundField>
                          </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SP_Products_GV" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </form>
</body>
</html>