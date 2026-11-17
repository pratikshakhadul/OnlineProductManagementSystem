
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product - Online Portal</title>

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
    color: white;

    display: flex;
    justify-content: center;
    align-items: center;
}

/* Main Box */
.product-box {
    width: 480px;
    padding: 40px;

    background: rgba(255, 255, 255, 0.12);
    backdrop-filter: blur(15px);
    -webkit-backdrop-filter: blur(15px);

    border: 1px solid rgba(255, 255, 255, 0.25);
    border-radius: 20px;

    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.4);
}

.product-icon {
    text-align: center;
    font-size: 55px;
    margin-bottom: 10px;
}

h1 {
    text-align: center;
    margin-bottom: 8px;
    font-size: 28px;
}

.subtitle {
    text-align: center;
    color: #d0d0d0;
    margin-bottom: 30px;
}

/* Message */
.message {
    background: rgba(0, 198, 255, 0.15);
    border: 1px solid rgba(0, 198, 255, 0.4);
    padding: 12px;
    border-radius: 8px;
    text-align: center;
    margin-bottom: 20px;
    color: #ffffff;
}

/* Form */
.form-group {
    margin-bottom: 18px;
}

label {
    display: block;
    margin-bottom: 7px;
    font-weight: bold;
}

input {
    width: 100%;
    padding: 12px 14px;

    border: 1px solid rgba(255, 255, 255, 0.3);
    border-radius: 9px;

    background: rgba(255, 255, 255, 0.1);
    color: white;

    font-size: 15px;
    outline: none;
}

input::placeholder {
    color: #cccccc;
}

input:focus {
    border-color: #00c6ff;
    box-shadow: 0 0 8px rgba(0, 198, 255, 0.3);
}

/* Add Button */
.add-btn {
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

.add-btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 18px rgba(0, 114, 255, 0.4);
}

/* Back Button */
.back-btn {
    display: block;
    text-align: center;
    margin-top: 20px;

    color: #ffffff;
    text-decoration: none;
    font-size: 14px;
}

.back-btn:hover {
    color: #00c6ff;
}

/* Responsive */
@media (max-width: 550px) {
    .product-box {
        width: 90%;
        padding: 30px 20px;
    }
}
</style>

</head>

<body>

<div class="product-box">

    <div class="product-icon">📦</div>

    <h1>Add Product</h1>

    <p class="subtitle">
        Add a new product to the Online Portal
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

    <form action="addProduct" method="post">

        <div class="form-group">
            <label>Product ID</label>
            <input type="text" name="pId"
                   placeholder="Enter Product ID" required>
        </div>

        <div class="form-group">
            <label>Product Name</label>
            <input type="text" name="pName"
                   placeholder="Enter Product Name" required>
        </div>

        <div class="form-group">
            <label>Price</label>
            <input type="number" name="price"
                   placeholder="Enter Price" step="0.01" required>
        </div>

        <div class="form-group">
            <label>Quantity</label>
            <input type="number" name="qty"
                   placeholder="Enter Quantity" min="1" required>
        </div>

        <input type="submit" value="ADD PRODUCT" class="add-btn">

    </form>

    <a href="admin_login.jsp" class="back-btn">
        ← Back to Dashboard
    </a>

</div>

</body>
</html>

