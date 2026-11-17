```jsp
<%@ page import="com.beans.BuyProduct" %>

<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Order Summary</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, sans-serif;
}

body{
    min-height:100vh;
    background:linear-gradient(135deg,#141e30,#243b55);
    display:flex;
    justify-content:center;
    align-items:center;
    padding:30px;
}

/* Main Container */

.container{
    width:500px;
    max-width:100%;
    background:white;
    border-radius:20px;
    overflow:hidden;
    box-shadow:0 20px 50px rgba(0,0,0,0.35);
}

/* Header */

.header{
    background:linear-gradient(135deg,#00c6ff,#0072ff);
    padding:30px;
    text-align:center;
    color:white;
}

.header .icon{
    font-size:55px;
    margin-bottom:10px;
}

.header h1{
    font-size:28px;
    margin-bottom:8px;
}

.header p{
    font-size:14px;
    opacity:0.9;
}

/* Welcome */

.welcome{
    text-align:center;
    padding:18px;
    background:#f4f8ff;
    color:#333;
    font-size:16px;
}

.welcome span{
    color:#0072ff;
    font-weight:bold;
}

/* Order Details */

.order-details{
    padding:25px 30px;
}

.order-details h2{
    font-size:20px;
    color:#333;
    margin-bottom:20px;
}

.detail{
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:14px 0;
    border-bottom:1px solid #eee;
}

.detail:last-child{
    border-bottom:none;
}

.label{
    color:#777;
    font-size:15px;
}

.value{
    color:#222;
    font-weight:bold;
}

/* Total */

.total{
    margin:10px 30px 25px;
    padding:20px;
    border-radius:12px;
    background:linear-gradient(135deg,#e8f8ff,#eef3ff);
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.total span:first-child{
    font-size:18px;
    font-weight:bold;
    color:#333;
}

.total span:last-child{
    font-size:24px;
    font-weight:bold;
    color:#0072ff;
}

/* Button */

.button-area{
    padding:0 30px 30px;
}

.shopping-btn{
    display:block;
    text-align:center;
    text-decoration:none;
    padding:15px;
    border-radius:30px;
    background:linear-gradient(135deg,#00c6ff,#0072ff);
    color:white;
    font-weight:bold;
    font-size:16px;
    transition:0.3s;
}

.shopping-btn:hover{
    transform:translateY(-3px);
    box-shadow:0 10px 20px rgba(0,114,255,0.3);
}

/* Mobile */

@media(max-width:600px){

    body{
        padding:15px;
    }

    .container{
        width:100%;
    }

    .header{
        padding:25px 15px;
    }

    .order-details{
        padding:20px;
    }

    .total{
        margin:10px 20px 20px;
    }

    .button-area{
        padding:0 20px 25px;
    }

}

</style>

</head>

<body>

<%

BuyProduct bp=(BuyProduct)request.getAttribute("bp");

%>

<div class="container">

    <!-- Header -->

    <div class="header">

        <div class="icon">✓</div>

        <h1>Order Confirmed</h1>

        <p>Your product has been successfully purchased</p>

    </div>


    <!-- Welcome -->

    <div class="welcome">

        Welcome,
        <span><%=session.getAttribute("name")%></span>

    </div>


    <!-- Order Details -->

    <div class="order-details">

        <h2>📦 Order Summary</h2>

        <div class="detail">

            <span class="label">Product ID</span>

            <span class="value">
                <%=bp.getpId()%>
            </span>

        </div>


        <div class="detail">

            <span class="label">Product Name</span>

            <span class="value">
                <%=bp.getPname()%>
            </span>

        </div>


        <div class="detail">

            <span class="label">Price</span>

            <span class="value">
                ₹ <%=bp.getPrice()%>
            </span>

        </div>


        <div class="detail">

            <span class="label">Purchase Quantity</span>

            <span class="value">
                <%=bp.getrQty()%>
            </span>

        </div>

    </div>


    <!-- Total -->

    <div class="total">

        <span>Total Bill</span>

        <span>
            ₹ <%=bp.getTotalBill()%>
        </span>

    </div>


    <!-- Continue Shopping -->

    <div class="button-area">

        <a href="view_cust_products" class="shopping-btn">
            🛒 Continue Shopping
        </a>

    </div>

</div>

</body>

</html>
```
