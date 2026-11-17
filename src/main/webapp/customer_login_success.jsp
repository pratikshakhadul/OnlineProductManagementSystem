
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Dashboard</title>

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }

    body {
        min-height: 100vh;
        background: linear-gradient(135deg, #667eea, #764ba2);
    }

    .navbar {
        height: 70px;
        background: rgba(255,255,255,0.95);
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 0 50px;
        box-shadow: 0 4px 15px rgba(0,0,0,0.15);
    }

    .logo {
        font-size: 25px;
        font-weight: bold;
        color: #667eea;
    }

    .user {
        color: #444;
        font-weight: bold;
    }

    .container {
        min-height: calc(100vh - 70px);
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .dashboard {
        width: 500px;
        background: white;
        padding: 45px;
        border-radius: 20px;
        text-align: center;
        box-shadow: 0 20px 40px rgba(0,0,0,0.25);
    }

    .icon {
        font-size: 55px;
        margin-bottom: 15px;
    }

    h1 {
        color: #333;
        margin-bottom: 10px;
    }

    .welcome {
        color: #666;
        margin-bottom: 30px;
        font-size: 17px;
    }

    .welcome span {
        color: #667eea;
        font-weight: bold;
    }

    .card {
        padding: 25px;
        border-radius: 15px;
        background: #f5f7ff;
        margin-top: 20px;
    }

    .card h3 {
        color: #444;
        margin-bottom: 10px;
    }

    .card p {
        color: #777;
        margin-bottom: 20px;
    }

    .btn {
        display: inline-block;
        text-decoration: none;
        padding: 13px 30px;
        border-radius: 8px;
        color: white;
        font-weight: bold;
        background: linear-gradient(135deg, #667eea, #764ba2);
        transition: 0.3s;
    }

    .btn:hover {
        transform: translateY(-3px);
        box-shadow: 0 8px 18px rgba(102,126,234,0.4);
    }
</style>
</head>

<body>

<div class="navbar">
    <div class="logo">🛍️ MyStore</div>

    <div class="user">
        👤 <%=session.getAttribute("name")%>
    </div>
</div>

<div class="container">

    <div class="dashboard">

        <div class="icon">🛒</div>

        <h1>Customer Dashboard</h1>

        <div class="welcome">
            Welcome, <span><%=session.getAttribute("name")%></span>!
        </div>

        <div class="card">
            <h3>Explore Our Products</h3>
            <p>Browse available products and choose what you want to buy.</p>

            <a href="view_cust_products" class="btn">
                🛍️ View Products
            </a>
        </div>

    </div>

</div>

</body>
</html>

