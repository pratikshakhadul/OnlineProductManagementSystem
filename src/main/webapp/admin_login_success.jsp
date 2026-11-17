<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }

    body {
        min-height: 100vh;
        background: linear-gradient(135deg, #141e30, #243b55);
        color: white;
    }

    /* Header */
    .header {
        width: 100%;
        padding: 20px 50px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        background: rgba(255, 255, 255, 0.08);
        backdrop-filter: blur(15px);
        border-bottom: 1px solid rgba(255, 255, 255, 0.15);
    }

    .logo {
        font-size: 24px;
        font-weight: bold;
    }

    .admin-info {
        color: #d5d5d5;
        font-size: 14px;
    }

    /* Main Container */
    .container {
        max-width: 1000px;
        margin: 70px auto;
        padding: 20px;
        text-align: center;
    }

    .icon {
        font-size: 60px;
        margin-bottom: 10px;
    }

    h1 {
        font-size: 34px;
        margin-bottom: 15px;
    }

    /* Welcome */
    .welcome {
        font-size: 20px;
        color: #d5d5d5;
        margin-bottom: 35px;
    }

    .username {
        color: #00c6ff;
        font-weight: bold;
        font-size: 22px;
    }

    /* Message */
    .message {
        margin: 20px auto 35px;
        padding: 12px 20px;
        width: fit-content;
        background: rgba(0, 200, 120, 0.15);
        border: 1px solid rgba(0, 255, 150, 0.3);
        border-radius: 10px;
        color: #b8ffd9;
    }

    /* Cards */
    .card-container {
        display: flex;
        justify-content: center;
        gap: 25px;
        flex-wrap: wrap;
    }

    .card {
        width: 260px;
        min-height: 210px;
        padding: 30px 20px;
        background: rgba(255, 255, 255, 0.12);
        backdrop-filter: blur(15px);
        border: 1px solid rgba(255, 255, 255, 0.2);
        border-radius: 20px;
        box-shadow: 0 15px 30px rgba(0, 0, 0, 0.3);
        transition: 0.3s;
    }

    .card:hover {
        transform: translateY(-8px);
        box-shadow: 0 20px 40px rgba(0, 0, 0, 0.45);
    }

    .card-icon {
        font-size: 45px;
        margin-bottom: 15px;
    }

    .card h2 {
        margin-bottom: 10px;
    }

    .card p {
        color: #d5d5d5;
        font-size: 14px;
        line-height: 1.5;
        margin-bottom: 20px;
    }

    /* Buttons */
    .btn {
        display: inline-block;
        padding: 11px 25px;
        border-radius: 10px;
        color: white;
        text-decoration: none;
        font-weight: bold;
        transition: 0.3s;
    }

    .add-btn {
        background: linear-gradient(135deg, #0072ff, #00c6ff);
    }

    .view-btn {
        background: linear-gradient(135deg, #00b09b, #96c93d);
    }

    .logout-btn {
        background: linear-gradient(135deg, #ff416c, #ff4b2b);
    }

    .btn:hover {
        transform: translateY(-2px);
    }

    /* Footer */
    .footer {
        text-align: center;
        padding: 30px;
        color: #aeb8c4;
        font-size: 13px;
    }

    /* Responsive */
    @media (max-width: 700px) {
        .header {
            padding: 18px 25px;
        }

        .container {
            margin-top: 40px;
        }

        h1 {
            font-size: 28px;
        }

        .card {
            width: 90%;
            max-width: 320px;
        }
    }
</style>
```

</head>

<body>

```
<!-- Header -->
<div class="header">

    <div class="logo">
        🛒 Online Portal
    </div>

    <div class="admin-info">
        👨‍💼 Admin Panel
    </div>

</div>

<%
    String adminName = (String) session.getAttribute("name");
%>

<!-- Main Content -->
<div class="container">

    <div class="icon">
        👨‍💼
    </div>

    <h1>
        Admin Dashboard
    </h1>

    <!-- Welcome -->
    <p class="welcome">
        Welcome,
        <span class="username">
            <%= adminName %>
        </span>
    </p>

    <%
        String msg = (String) request.getAttribute("msg");

        if (msg != null) {
    %>

        <div class="message">
            <%= msg %>
        </div>

    <%
        }
    %>

    <!-- Dashboard Cards -->
    <div class="card-container">

        <!-- Add Product -->
        <div class="card">

            <div class="card-icon">
                ➕
            </div>

            <h2>
                Add Product
            </h2>

            <p>
                Add new products with product details,
                price and quantity.
            </p>

            <a href="product.jsp" class="btn add-btn">
                Add Product
            </a>

        </div>

        <!-- View Products -->
        <div class="card">

            <div class="card-icon">
                📦
            </div>

            <h2>
                View Products
            </h2>

            <p>
                View all available products and
                manage product information.
            </p>

            <a href="view_products" class="btn view-btn">
                View Products
            </a>

        </div>

        <!-- Logout -->
        <div class="card">

            <div class="card-icon">
                🚪
            </div>

            <h2>
                Logout
            </h2>

            <p>
                Logout from the admin account
                securely and return to the login page.
            </p>

            <a href="admin_logout" class="btn logout-btn">
                Logout
            </a>

        </div>

    </div>

</div>

<!-- Footer -->
<div class="footer">
    © 2026 Online Portal | Admin Dashboard
</div>


</body>
</html>
