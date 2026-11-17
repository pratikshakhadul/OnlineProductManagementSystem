
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Portal</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    min-height: 100vh;
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #141e30, #243b55);
    display: flex;
    justify-content: center;
    align-items: center;
    color: white;
}

/* Message Box */
.message-box {
    width: 450px;
    padding: 45px 35px;
    text-align: center;

    background: rgba(255, 255, 255, 0.12);
    backdrop-filter: blur(15px);
    -webkit-backdrop-filter: blur(15px);

    border: 1px solid rgba(255, 255, 255, 0.25);
    border-radius: 20px;

    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.4);
}

.icon {
    font-size: 55px;
    margin-bottom: 20px;
}

h1 {
    font-size: 25px;
    margin-bottom: 25px;
    color: white;
    line-height: 1.5;
}

/* Back Button */
.back-btn {
    display: inline-block;
    padding: 12px 25px;
    margin-top: 10px;

    text-decoration: none;
    color: white;
    font-weight: bold;

    background: linear-gradient(135deg, #0072ff, #00c6ff);
    border-radius: 10px;

    transition: 0.3s;
}

.back-btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 18px rgba(0, 114, 255, 0.4);
}

/* Responsive */
@media (max-width: 500px) {
    .message-box {
        width: 90%;
        padding: 35px 20px;
    }

    h1 {
        font-size: 21px;
    }
}
</style>

</head>

<body>

<div class="message-box">

    <div class="icon">✅</div>

    <h1>
        <%=request.getAttribute("msg")%>
    </h1>

    <a href="home.jsp" class="back-btn">
        ← Back to Home
    </a>

</div>

</body>
</html>
