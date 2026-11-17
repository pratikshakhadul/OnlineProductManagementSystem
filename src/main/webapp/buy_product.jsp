```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.beans.ProductBean"%>

<%
ProductBean pb = (ProductBean) request.getAttribute("pb");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buy Product</title>

<style>
    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
    }

    body {
        min-height: 100vh;
        background: linear-gradient(135deg, #667eea, #764ba2);
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        width: 420px;
        background: white;
        padding: 30px;
        border-radius: 18px;
        box-shadow: 0 15px 35px rgba(0,0,0,0.25);
    }

    .header {
        text-align: center;
        margin-bottom: 25px;
    }

    .header h2 {
        color: #333;
        margin-bottom: 8px;
    }

    .header p {
        color: #777;
        font-size: 14px;
    }

    .product-info {
        background: #f5f7ff;
        padding: 18px;
        border-radius: 12px;
        margin-bottom: 20px;
    }

    .row {
        display: flex;
        justify-content: space-between;
        padding: 10px 0;
        border-bottom: 1px solid #ddd;
    }

    .row:last-child {
        border-bottom: none;
    }

    .label {
        font-weight: bold;
        color: #555;
    }

    .value {
        color: #333;
    }

    .qty-section {
        margin-top: 20px;
    }

    .qty-section label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
        color: #444;
    }

    .qty-section input {
        width: 100%;
        padding: 12px;
        border: 2px solid #ddd;
        border-radius: 8px;
        font-size: 16px;
        outline: none;
    }

    .qty-section input:focus {
        border-color: #667eea;
    }

    .buy-btn {
        width: 100%;
        margin-top: 22px;
        padding: 13px;
        border: none;
        border-radius: 8px;
        background: linear-gradient(135deg, #667eea, #764ba2);
        color: white;
        font-size: 17px;
        font-weight: bold;
        cursor: pointer;
        transition: 0.3s;
    }

    .buy-btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 8px 18px rgba(102,126,234,0.4);
    }

    .icon {
        font-size: 42px;
        margin-bottom: 10px;
    }
</style>
</head>

<body>

<div class="container">

    <div class="header">
        <div class="icon">🛒</div>
        <h2>Buy Product</h2>
        <p>Review your product details</p>
    </div>

    <form action="buy" method="post">

        <div class="product-info">

            <div class="row">
                <span class="label">Product Name</span>
                <span class="value"><%=pb.getpName()%></span>
            </div>

            <div class="row">
                <span class="label">Product ID</span>
                <span class="value"><%=pb.getpId()%></span>
            </div>

            <div class="row">
                <span class="label">Price</span>
                <span class="value">₹ <%=pb.getPrice()%></span>
            </div>

            <div class="row">
                <span class="label">Available Qty</span>
                <span class="value"><%=pb.getpQty()%></span>
            </div>

        </div>

        <!-- Hidden values sent to Servlet -->
        <input type="hidden" name="pname" value="<%=pb.getpName()%>">
        <input type="hidden" name="pid" value="<%=pb.getpId()%>">
        <input type="hidden" name="price" value="<%=pb.getPrice()%>">
        <input type="hidden" name="qty" value="<%=pb.getpQty()%>">

        <div class="qty-section">
            <label>Required Quantity</label>
            <input type="number" name="rqty"
                   min="1"
                   max="<%=pb.getpQty()%>"
                   placeholder="Enter quantity"
                   required>
        </div>

        <button type="submit" class="buy-btn">
            🛍️ Buy Now
        </button>

    </form>

</div>

</body>
</html>
```
