```jsp
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Customer Registration</title>

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

    padding: 30px;
}

/* Registration Card */

.register-card {
    width: 500px;

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

    margin-bottom: 25px;
}

.register-icon {
    width: 70px;
    height: 70px;

    margin: 0 auto 15px;

    display: flex;
    justify-content: center;
    align-items: center;

    border-radius: 50%;

    background: #3b82f6;

    color: white;

    font-size: 32px;

    box-shadow: 0 10px 30px rgba(59, 130, 246, 0.35);
}

.header h1 {
    color: white;

    font-size: 26px;

    margin-bottom: 5px;
}

.header p {
    color: #94a3b8;

    font-size: 13px;
}

/* Message */

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
    margin-bottom: 17px;
}

.form-group label {
    display: block;

    color: #e2e8f0;

    font-size: 13px;

    font-weight: 500;

    margin-bottom: 7px;
}

.form-group input {
    width: 100%;

    padding: 12px 14px;

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

/* Submit Button */

.register-btn {
    width: 100%;

    padding: 13px;

    margin-top: 5px;

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

.register-btn:hover {
    transform: translateY(-2px);

    box-shadow: 0 10px 25px rgba(37, 99, 235, 0.35);
}

/* Login Link */

.login-link {
    text-align: center;

    margin-top: 20px;

    color: #94a3b8;

    font-size: 13px;
}

.login-link a {
    color: #60a5fa;

    text-decoration: none;

    font-weight: 600;

    margin-left: 5px;
}

.login-link a:hover {
    color: white;
}

/* Home Link */

.home-link {
    display: block;

    text-align: center;

    margin-top: 15px;

    color: #94a3b8;

    font-size: 12px;

    text-decoration: none;
}

.home-link:hover {
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

@media(max-width: 550px) {

    body {
        padding: 20px;
    }

    .register-card {
        width: 100%;
        padding: 30px 25px;
    }

}

</style>

</head>

<body>

<%

String msg = (String) request.getAttribute("msg");

%>

<div class="register-card">

    <div class="header">

        <div class="register-icon">
            👤
        </div>

        <h1>Create Account</h1>

        <p>Register as a new customer</p>

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


    <form action="cust_reg" method="post">

        <!-- Customer ID -->

        <div class="form-group">

            <label>Customer ID</label>

            <input type="text"
                   name="cid"
                   placeholder="Enter customer ID"
                   required>

        </div>


        <!-- Customer Name -->

        <div class="form-group">

            <label>Customer Name</label>

            <input type="text"
                   name="cname"
                   placeholder="Enter your name"
                   required>

        </div>


        <!-- Password -->

        <div class="form-group">

            <label>Password</label>

            <input type="password"
                   name="pwd"
                   placeholder="Create a password"
                   required>

        </div>


        <!-- Email -->

        <div class="form-group">

            <label>Mail ID</label>

            <input type="email"
                   name="mid"
                   placeholder="Enter your email"
                   required>

        </div>


        <!-- Phone -->

        <div class="form-group">

            <label>Phone Number</label>

            <input type="tel"
                   name="phno"
                   placeholder="Enter 10-digit phone number"
                   pattern="[0-9]{10}"
                   maxlength="10"
                   required>

        </div>


        <!-- Submit -->

        <button type="submit" class="register-btn">
            ✨ Create Account
        </button>

    </form>


    <div class="login-link">

        Already have an account?

        <a href="cust_login.jsp">
            Login
        </a>

    </div>


    <a href="home.html" class="home-link">
        ← Back to Home
    </a>

</div>

</body>

</html>
```
