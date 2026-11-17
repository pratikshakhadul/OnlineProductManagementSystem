<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
import="java.util.*,com.beans.ProductBean"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Order Summary</title>

<style>

    * {
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }

    body {
        margin: 0;
        padding: 40px 20px;
        background: linear-gradient(135deg, #eef2ff, #f8fafc);
    }

    .container {
        max-width: 900px;
        margin: auto;
    }

    .success-box {
        background: white;
        text-align: center;
        padding: 30px;
        border-radius: 15px 15px 0 0;
        box-shadow: 0 5px 20px rgba(0,0,0,0.08);
    }

    .success-icon {
        font-size: 55px;
    }

    .success-box h1 {
        color: #16a34a;
        margin: 10px 0;
    }

    .success-box p {
        color: #64748b;
        font-size: 16px;
    }

    .order-box {
        background: white;
        padding: 25px;
        border-radius: 0 0 15px 15px;
        box-shadow: 0 5px 20px rgba(0,0,0,0.08);
    }

    .order-title {
        font-size: 22px;
        font-weight: bold;
        color: #334155;
        margin-bottom: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    th {
        background: #4f46e5;
        color: white;
        padding: 14px;
        text-align: center;
    }

    td {
        padding: 14px;
        text-align: center;
        border-bottom: 1px solid #e5e7eb;
    }

    tr:hover {
        background: #f8fafc;
    }

    .product-name {
        font-weight: bold;
        color: #334155;
    }

    .price {
        color: #2563eb;
        font-weight: bold;
    }

    .quantity {
        background: #ede9fe;
        color: #6d28d9;
        padding: 5px 12px;
        border-radius: 15px;
        font-weight: bold;
    }

    .subtotal {
        color: #059669;
        font-weight: bold;
    }

    .total-box {
        margin-top: 25px;
        padding: 20px;
        background: #f0fdf4;
        border: 1px solid #bbf7d0;
        border-radius: 10px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .total-label {
        font-size: 20px;
        font-weight: bold;
        color: #334155;
    }

    .total-amount {
        font-size: 28px;
        font-weight: bold;
        color: #16a34a;
    }

    .actions {
        text-align: center;
        margin-top: 30px;
    }

    .btn {
        display: inline-block;
        text-decoration: none;
        padding: 13px 25px;
        margin: 5px;
        border-radius: 8px;
        font-weight: bold;
    }

    .continue {
        background: #4f46e5;
        color: white;
    }

    .home {
        background: #e2e8f0;
        color: #334155;
    }

    .btn:hover {
        opacity: 0.85;
        transform: translateY(-1px);
    }

    @media(max-width: 650px) {

        body {
            padding: 15px 8px;
        }

        .success-box {
            padding: 20px 10px;
        }

        .order-box {
            padding: 15px;
            overflow-x: auto;
        }

        table {
            min-width: 600px;
        }

        .total-box {
            flex-direction: column;
            gap: 10px;
            text-align: center;
        }

    }

</style>


</head>

<body>

<div class="container">


<!-- Order Confirmation -->

<div class="success-box">

    <div class="success-icon">✅</div>

    <h1>Order Placed Successfully!</h1>

    <p>
        Thank you for your purchase.
        Your order has been confirmed.
    </p>

</div>


<!-- Order Details -->

<div class="order-box">

    <div class="order-title">
        🧾 Order Summary
    </div>


<%
List<ProductBean> list =
(List<ProductBean>) session.getAttribute("cart");


double grandTotal = 0.0;

if (list != null && !list.isEmpty()) {


%>


    <table>

        <tr>
            <th>Product Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Sub Total</th>
        </tr>


<%
for (ProductBean pb : list) {


        double subtotal =
            pb.getPrice() * pb.getpQty();

        grandTotal += subtotal;


%>


        <tr>

            <td class="product-name">
                <%= pb.getpName() %>
            </td>

            <td class="price">
                ₹<%= String.format("%.2f", pb.getPrice()) %>
            </td>

            <td>
                <span class="quantity">
                    <%= pb.getpQty() %>
                </span>
            </td>

            <td class="subtotal">
                ₹<%= String.format("%.2f", subtotal) %>
            </td>

        </tr>


<%
}
%>


    </table>


    <!-- Grand Total -->

    <div class="total-box">

        <div class="total-label">
            Total Amount
        </div>

        <div class="total-amount">
            ₹<%= String.format("%.2f", grandTotal) %>
        </div>

    </div>


    <!-- Buttons -->

    <div class="actions">

        <a href="view_cust_products"
           class="btn continue">
            🛍 Continue Shopping
        </a>

        <a href="home.html"
           class="btn home">
            🏠 Home
        </a>

    </div>


<%
} else {
%>


    <div style="text-align:center; padding:40px;">

        <h2>No Order Details Found</h2>

        <p>
            Your order information is not available.
        </p>

        <a href="view_cust_products"
           class="btn continue">
            Continue Shopping
        </a>

    </div>


<%
}
%>


</div>


</div>

</body>

</html>
