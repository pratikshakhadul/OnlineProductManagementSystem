```jsp
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Message</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap"
      rel="stylesheet">

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    min-height: 100vh;

    display: flex;
    justify-content: center;
    align-items: center;

    font-family: 'Poppins', sans-serif;

    background: linear-gradient(135deg, #0f172a, #1e3a8a, #312e81);
}

/* Main Card */

.message-card {
    width: 450px;

    padding: 45px 35px;

    text-align: center;

    background: rgba(255, 255, 255, 0.10);

    backdrop-filter: blur(15px);

    border: 1px solid rgba(255, 255, 255, 0.20);

    border-radius: 20px;

    box-shadow: 0 25px 60px rgba(0, 0, 0, 0.35);

    animation: slideUp 0.7s ease;
}

/* Icon */

.icon {
    width: 75px;
    height: 75px;

    margin: 0 auto 20px;

    display: flex;
    justify-content: center;
    align-items: center;

    border-radius: 50%;

    background: #22c55e;

    color: white;

    font-size: 38px;

    box-shadow: 0 10px 30px rgba(34, 197, 94, 0.35);

    animation: pop 0.6s ease;
}

/* Heading */

h1 {
    color: white;

    font-size: 25px;

    margin-bottom: 12px;
}

/* Message */

.message {
    color: #cbd5e1;

    font-size: 15px;

    line-height: 1.6;

    margin-bottom: 28px;
}

/* Button */

.btn {
    display: inline-block;

    padding: 12px 25px;

    background: #3b82f6;

    color: white;

    text-decoration: none;

    border-radius: 10px;

    font-size: 14px;

    font-weight: 600;

    transition: 0.3s;
}

.btn:hover {
    background: #2563eb;

    transform: translateY(-3px);

    box-shadow: 0 8px 20px rgba(59, 130, 246, 0.35);
}

/* Animation */

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

@media(max-width: 500px) {

    .message-card {
        width: 90%;
        padding: 35px 25px;
    }

}

</style>

</head>

<body>

<div class="message-card">

    <div class="icon">
        ✓
    </div>

    <h1>Operation Successful</h1>

    <div class="message">
        <%=request.getAttribute("msg")%>
    </div>

    <a href="view_products" class="btn">
        🛍 View Products
    </a>

</div>

</body>

</html>
```
