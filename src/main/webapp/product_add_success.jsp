
<%@ page language="java" contentType="text/html; charset=UTF-8"
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

.admin-label {
    color: #d5d5d5;
}


/* Dashboard */

.container {
    max-width: 1000px;
    margin: 70px auto;
    padding: 20px;
    text-align: center;
}

.admin-icon {
    font-size: 65px;
    margin-bottom: 10px;
}

h1 {
    font-size: 34px;
    margin-bottom: 12px;
}

.welcome {
    color: #d5d5d5;
    font-size: 16px;
    margin-bottom: 30px;
}

.username {
    color: #00c6ff;
    font-weight: bold;
}


/* Message */

.message {
    display: inline-block;

    padding: 12px 25px;
    margin-bottom: 35px;

    border-radius: 10px;

    background: rgba(0, 200, 120, 0.15);
    border: 1px solid rgba(0, 255, 150, 0.3);

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
    width: 280px;
    min-height: 220px;

    padding: 30px 20px;

    background: rgba(255, 255, 255, 0.12);
    backdrop-filter: blur(15px);

    border: 1px solid rgba(255, 255, 255, 0.2);

    border-radius: 20px;

    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.35);

    transition: 0.3s;
}

.card:hover {
    transform: translateY(-8px);

    box-shadow: 0 20px 45px rgba(0, 0, 0, 0.45);
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
    margin-bottom: 22px;
}


/* Buttons */

.btn {
    display: inline-block;

    padding: 12px 25px;

    border-radius: 10px;

    color: white;
    text-decoration: none;

    font-weight: bold;

    transition: 0.3s;
}

.view-btn {
    background: linear-gradient(135deg, #0072ff, #00c6ff);
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

    padding: 25px;

    color: #aeb8c4;

    font-size: 13px;
}


/* Responsive */

@media(max-width: 700px) {

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

</head>


<body>


<!-- Header -->

<div class="header">

    <div class="logo">
        🛒 Online Portal
    </div>

    <div class="admin-label">
        👨‍💼 Admin Panel
    </div>

</div>


<!-- Dashboard -->

<div class="container">

    <div class="admin-icon">
        👨‍💼
    </div>

    <h1>Admin Dashboard</h1>

    <p class="welcome">
        Welcome,
        <span class="username">
            <%=session.getAttribute("name")%>
        </span>
    </p>


    <%
        String msg = (String)request.getAttribute("msg");

        if(msg != null)
        {
    %>

        <div class="message">
            <%=msg%>
        </div>

    <%
        }
    %>


    <!-- Dashboard Cards -->

    <div class="card-container">


        <!-- View Products -->

        <div class="card">

            <div class="card-icon">
                📦
            </div>

            <h2>View Products</h2>

            <p>
                View all products available in the
                online portal and manage product details.
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

            <h2>Logout</h2>

            <p>
                Logout from your admin account
                and return to the login page.
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

