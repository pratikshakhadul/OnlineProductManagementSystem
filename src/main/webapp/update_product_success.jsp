```jsp
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Product Added Successfully</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
    min-height: 100vh;

    display: flex;
    justify-content: center;
    align-items: center;

    background: linear-gradient(135deg, #0f172a, #1e293b, #334155);
}

/* Main Card */

.success-card {
    width: 500px;
    padding: 45px 40px;

    text-align: center;

    background: rgba(255, 255, 255, 0.10);
    backdrop-filter: blur(15px);

    border: 1px solid rgba(255, 255, 255, 0.15);
    border-radius: 22px;

    box-shadow: 0 25px 60px rgba(0, 0, 0, 0.35);

    animation: slideUp 0.7s ease;
}

/* Success Icon */

.success-icon {
    width: 80px;
    height: 80px;

    margin: 0 auto 25px;

    border-radius: 50%;

    display: flex;
    justify-content: center;
    align-items: center;

    background: #22c55e;

    color: white;
    font-size: 42px;
    font-weight: bold;

    box-shadow: 0 10px 30px rgba(34, 197, 94, 0.4);

    animation: pop 0.6s ease;
}

/* Heading */

h1 {
    color: #ffffff;
    font-size: 27px;
    margin-bottom: 12px;
}

.message {
    color: #cbd5e1;
    font-size: 15px;
    margin-bottom: 30px;
}

/* Buttons */

.buttons {
    display: flex;
    justify-content: center;
    gap: 15px;
    flex-wrap: wrap;
}

.btn {
    text-decoration: none;
    padding: 12px 22px;

    border-radius: 10px;

    font-size: 14px;
    font-weight: 600;

    transition: all 0.3s ease;
}

/* View Products */

.view-btn {
    background: #3b82f6;
    color: white;
}

.view-btn:hover {
    background: #2563eb;
    transform: translateY(-3px);

    box-shadow: 0 8px 20px rgba(59, 130, 246, 0.35);
}

/* Logout */

.logout-btn {
    background: rgba(255, 255, 255, 0.12);
    color: #ffffff;

    border: 1px solid rgba(255, 255, 255, 0.2);
}

.logout-btn:hover {
    background: #ef4444;
    border-color: #ef4444;

    transform: translateY(-3px);

    box-shadow: 0 8px 20px rgba(239, 68, 68, 0.3);
}

/* Footer */

.footer {
    margin-top: 30px;
    color: #94a3b8;
    font-size: 12px;
}

/* Animations */

@keyframes slideUp {

    from {
        opacity: 0;
        transform: translateY(40px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}

@keyframes pop {

    0% {
        transform: scale(0);
    }

    70% {
        transform: scale(1.15);
    }

    100% {
        transform: scale(1);
    }
}

/* Mobile */

@media(max-width: 600px) {

    .success-card {
        width: 90%;
        padding: 35px 25px;
    }

    h1 {
        font-size: 23px;
    }

    .buttons {
        flex-direction: column;
    }

    .btn {
        width: 100%;
    }
}

</style>

</head>

<body>

<div class="success-card">

    <div class="success-icon">
        ✓
    </div>

    <h1>Product Added Successfully!</h1>

    <div class="message">
        <%=request.getAttribute("msg")%>
    </div>

    <div class="buttons">

        <a href="view_products" class="btn view-btn">
            🛍 View Products
        </a>

        <a href="logout" class="btn logout-btn">
            🚪 Logout
        </a>

    </div>

    <div class="footer">
        Product Management System
    </div>

</div>

</body>
</html>
```
