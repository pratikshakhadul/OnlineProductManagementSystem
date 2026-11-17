
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Admin Login</title>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;

    background: linear-gradient(135deg, #141e30, #243b55);
}

/* Login Container */
.login-box {
    width: 400px;
    padding: 40px;

    background: rgba(255, 255, 255, 0.12);
    backdrop-filter: blur(15px);

    border: 1px solid rgba(255, 255, 255, 0.25);
    border-radius: 20px;

    box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);

    color: white;
    text-align: center;
}

/* Icon */
.icon {
    font-size: 55px;
    margin-bottom: 10px;
}

/* Heading */
h2 {
    margin-bottom: 8px;
    font-size: 28px;
}

.subtitle {
    color: #d5d5d5;
    font-size: 14px;
    margin-bottom: 30px;
}

/* Message */
.message {
    background: rgba(255, 80, 80, 0.2);
    border: 1px solid rgba(255, 100, 100, 0.5);
    padding: 10px;
    border-radius: 8px;
    margin-bottom: 20px;
    color: #ffb3b3;
}

/* Labels */
label {
    display: block;
    text-align: left;
    margin-bottom: 7px;
    font-size: 14px;
}

/* Input */
input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 13px;

    border: none;
    outline: none;

    border-radius: 10px;

    background: rgba(255, 255, 255, 0.15);
    border: 1px solid rgba(255, 255, 255, 0.25);

    color: white;
    font-size: 15px;

    margin-bottom: 18px;
}

input::placeholder {
    color: #cccccc;
}

/* Login Button */
.login-btn {
    width: 100%;
    padding: 13px;

    border: none;
    border-radius: 10px;

    background: linear-gradient(135deg, #0072ff, #00c6ff);

    color: white;
    font-size: 16px;
    font-weight: bold;

    cursor: pointer;

    transition: 0.3s;
}

.login-btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 20px rgba(0, 150, 255, 0.4);
}

/* Register Button */
.register-btn {
    display: block;

    width: 100%;
    padding: 13px;

    margin-top: 12px;

    border-radius: 10px;

    background: linear-gradient(135deg, #ff9800, #ffc107);

    color: white;
    text-decoration: none;

    font-weight: bold;

    transition: 0.3s;
}

.register-btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 20px rgba(255, 165, 0, 0.4);
}

/* Back */
.back {
    display: inline-block;

    margin-top: 22px;

    color: #cfd8dc;
    text-decoration: none;

    font-size: 14px;
}

.back:hover {
    color: white;
}

/* Responsive */
@media(max-width: 500px) {

    .login-box {
        width: 90%;
        padding: 30px 25px;
    }

}

</style>

</head>

<body>

<div class="login-box">

    <div class="icon">👨‍💼</div>

    <h2>Admin Login</h2>

    <p class="subtitle">
        Login to manage products and application settings
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


    <form action="admin_login" method="post">

        <label>Admin Name</label>

        <input type="text"
               name="aname"
               placeholder="Enter admin name"
               required="required">


        <label>Password</label>

        <input type="password"
               name="pwd"
               placeholder="Enter password"
               required="required">


        <input type="submit"
               value="Login"
               class="login-btn">


    </form>


    <a href="admin_register.html"
       class="register-btn">
       Register
    </a>


    <a href="home.html" class="back">
        ← Back to Home
    </a>

</div>

</body>
</html>

