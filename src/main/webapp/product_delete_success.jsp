
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Product Added</title>

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

            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            width: 450px;
            padding: 40px;
            text-align: center;

            background: rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(15px);

            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 20px;

            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.4);
        }

        .icon {
            font-size: 65px;
            margin-bottom: 15px;
        }

        h1 {
            font-size: 30px;
            margin-bottom: 15px;
        }

        .welcome {
            font-size: 19px;
            color: #d5d5d5;
            margin-bottom: 20px;
        }

        .username {
            color: #00c6ff;
            font-weight: bold;
        }

        .message {
            background: rgba(0, 200, 120, 0.15);
            border: 1px solid rgba(0, 255, 150, 0.3);

            color: #b8ffd9;

            padding: 14px;
            border-radius: 10px;

            margin-bottom: 30px;
        }

        .btn {
            display: inline-block;

            padding: 12px 25px;

            background: linear-gradient(135deg, #0072ff, #00c6ff);

            color: white;
            text-decoration: none;

            border-radius: 10px;

            font-weight: bold;

            transition: 0.3s;
        }

        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
        }

    </style>

</head>

<body>

    <div class="container">

        <!-- Success Icon -->
        <div class="icon">
            ✅
        </div>

        <h1>
            Product Operation Successful
        </h1>

        <!-- Welcome -->
        <div class="welcome">
            Welcome,
            <span class="username">
                <%= session.getAttribute("name") %>
            </span>
        </div>

        <!-- Message -->
        <div class="message">
            <%= request.getAttribute("msg") %>
        </div>

        <!-- View Products -->
        <a href="view_products" class="btn">
            📦 View Products
        </a>

    </div>

</body>

</html>

