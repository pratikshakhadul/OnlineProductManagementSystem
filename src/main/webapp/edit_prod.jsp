```jsp
<%@page import="com.beans.ProductBean"%>

<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Edit Product</title>

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

.container {
    width: 480px;

    padding: 40px;

    background: rgba(255, 255, 255, 0.10);

    backdrop-filter: blur(15px);

    border: 1px solid rgba(255, 255, 255, 0.15);

    border-radius: 22px;

    box-shadow: 0 25px 60px rgba(0, 0, 0, 0.35);

    animation: slideUp 0.6s ease;
}

/* Header */

.header {
    text-align: center;
    margin-bottom: 30px;
}

.header .icon {
    width: 65px;
    height: 65px;

    margin: 0 auto 15px;

    display: flex;
    justify-content: center;
    align-items: center;

    border-radius: 50%;

    background: #3b82f6;

    color: white;

    font-size: 30px;

    box-shadow: 0 10px 25px rgba(59, 130, 246, 0.35);
}

.header h1 {
    color: white;
    font-size: 25px;
    margin-bottom: 5px;
}

.header p {
    color: #94a3b8;
    font-size: 13px;
}

/* Form */

.form-group {
    margin-bottom: 20px;
}

.form-group label {
    display: block;

    color: #e2e8f0;

    font-size: 14px;

    font-weight: 500;

    margin-bottom: 8px;
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

.form-group input:focus {
    border-color: #60a5fa;

    background: rgba(255, 255, 255, 0.12);

    box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.15);
}

/* Readonly Product Name */

.form-group input[readonly] {
    color: #94a3b8;

    cursor: not-allowed;

    background: rgba(255, 255, 255, 0.05);
}

/* Update Button */

.update-btn {
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

.update-btn:hover {
    transform: translateY(-2px);

    box-shadow: 0 10px 25px rgba(37, 99, 235, 0.35);
}

/* Back Button */

.back-btn {
    display: block;

    text-align: center;

    margin-top: 18px;

    color: #94a3b8;

    text-decoration: none;

    font-size: 13px;

    transition: 0.3s;
}

.back-btn:hover {
    color: white;
}

/* Animation */

@keyframes slideUp {

    from {
        opacity: 0;
        transform: translateY(35px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }

}

/* Mobile */

@media(max-width: 550px) {

    .container {
        width: 90%;
        padding: 30px 25px;
    }

}

</style>

</head>

<body>

<%

ProductBean pb = (ProductBean) request.getAttribute("pbean");

%>

<div class="container">

    <div class="header">

        <div class="icon">
            ✎
        </div>

        <h1>Edit Product</h1>

        <p>Update product price and inventory details</p>

    </div>


    <form action="update" method="post">

        <!-- Product Name -->

        <div class="form-group">

            <label>Product Name</label>

            <input type="text"
                   name="name"
                   value="<%=pb.getpName()%>"
                   readonly>

        </div>


        <!-- Price -->

        <div class="form-group">

            <label>Price (₹)</label>

            <input type="number"
                   name="price"
                   value="<%=pb.getPrice()%>"
                   min="0"
                   step="0.01"
                   required>

        </div>


        <!-- Quantity -->

        <div class="form-group">

            <label>Available Quantity</label>

            <input type="number"
                   name="qty"
                   value="<%=pb.getpQty()%>"
                   min="0"
                   required>

        </div>


        <!-- Product ID -->

        <input type="hidden"
               name="pId"
               value="<%=pb.getpId()%>">


        <!-- Submit -->

        <button type="submit" class="update-btn">
            ✓ Update Product
        </button>

    </form>


    <a href="view_products" class="back-btn">
        ← Back to Products
    </a>

</div>

</body>

</html>
```
