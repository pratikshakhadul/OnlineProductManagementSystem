```jsp
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Customer Login</title>

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

/* Login Card */

.login-card {
    width: 420px;

    padding: 40px;

    background: rgba(255, 255, 255, 0.10);

    backdrop-filter: blur(15px);

    border: 1px solid rgba(255, 255, 255, 0.15);

    border-radius: 22px;

    box-shadow: 0 25px 60px rgba(0, 0, 0, 0.35);

    animation: slideUp 0.7s ease;
}

/* Header */

.header {
    text-align: center;

    margin-bottom: 30px;
}

.login-icon {
    width: 75px;
    height: 75px;

    margin: 0 auto 18px;

    display: flex;
    justify-content: center;
    align-items: center;

    border-radius: 50%;

    background: #3b82f6;

    color: white;

    font-size: 35px;

    box-shadow: 0 10px 30px rgba(59, 130, 246, 0.35);
}

.header h1 {
    color: white;

    font-size: 26px;

    margin-bottom: 6px;
}

.header p {
    color: #94a3b8;

    font-size: 13px;
}

/* Error / Message */

.message {
    padding: 12px 15px;

    margin-bottom: 20px;

    border-radius: 8px;

    background: rgba(239, 68, 68, 0.15);

    border: 1px solid rgba(239, 68, 68, 0.30);

    color: #fca5a5;

    font-size: 13px;

    text-align: center;
}

/* Form */

.form-group {
    margin-bottom: 20px;
}

.form-group label {
    display: block;

    margin-bottom: 8px;

    color: #e2e8f0;

    font-size: 14px;

    font-weight: 500;
}

.form-group input {
    width: 100%;

    padding: 13px 15px;

    border: 1px solid rgba(255, 255, 255, 0.15);

    border-radius: 10px;

    outline: none;

    background: rgba(255, 255, 255, 0.08);

    color: white;

    font-family: 'Poppins', sans-serif;

    font-size: 14px;

    transition: 0.3s;
}

.form-group input::placeholder {
    color: #94a3b8;
}

.form-group input:focus {
    border-color: #60a5fa;

    background: rgba(255, 255, 255, 0.12);

    box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.15);
}

/* Login Button */

.login-btn {
    width: 100%;

    padding: 13px;

    border: none;

    border-radius: 10px;

    background: linear-gradient(135deg, #2563eb, #3b82f6);

    color: white;

    font-family: 'Poppins', sans-serif;

    font-size: 15px;

    font-weight: 600;

    cursor: pointer;

    transition: 0.3s;
}

.login-btn:hover {
    transform: translateY(-2px);

    box-shadow: 0 10px 25px rgba(37, 99, 235, 0.35);
}

/* Register */

.register {
    text-align: center;

    margin-top: 22px;

    color: #94a3b8;

    font-size: 13px;
}

.register a {
    color: #60a5fa;

    text-decoration: none;

    font-weight: 600;

    margin-left: 5px;

    transition: 0.3s;
}

.register a:hover {
    color: white;
}

/* Home */

.home {
    display: block;

    text-align: center;

    margin-top: 18px;

    color: #94a3b8;

    font-size: 12px;

    text-decoration: none;
}

.home:hover {
    color: white;
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

/* Mobile */

@media(max-width: 500px) {

    .login-card {
        width: 90%;
        padding: 30px 25px;
    }

}

</style>

</head>

<body>

<%

String msg = (String) request.getAttribute("msg");

%>

<div class="login-card">

    <div class="header">

        <div class="login-icon">
            👤
        </div>

        <h1>Customer Login</h1>

        <p>Login to access your account</p>

    </div>


    <%
    if (msg != null) {
    %>

        <div class="message">
            <%=msg%>
        </div>

    <%
    }
    %>


    <form action="cust_login" method="post">

        <div class="form-group">

            <label>Customer Mail ID</label>

            <input type="email"
                   name="mId"
                   placeholder="Enter your email"
                   required>

        </div>


        <div class="form-group">

            <label>Password</label>

            <input type="password"
                   name="pwd"
                   placeholder="Enter your password"
                   required>

        </div>


        <button type="submit" class="login-btn">
            🔐 Login
        </button>

    </form>


    <div class="register">

        Don't have an account?

        <a href="cust_reg.jsp">
            Register
        </a>

    </div>


    <a href="home.html" class="home">
        ← Back to Home
    </a>

</div>

</body>

</html>
```
