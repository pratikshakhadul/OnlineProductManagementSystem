<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,com.beans.ProductBean"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>My Cart</title>

<style>

body {
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #667eea, #764ba2);
    margin: 0;
    padding: 40px;
}

.cart-container {
    width: 90%;
    max-width: 1000px;
    margin: auto;
    background: white;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 15px 35px rgba(0,0,0,0.2);
}

h1 {
    text-align: center;
    color: #333;
    margin-bottom: 30px;
}

table {
    width: 100%;
    border-collapse: collapse;
}

th {
    background: #667eea;
    color: white;
    padding: 15px;
}

td {
    padding: 15px;
    text-align: center;
    border-bottom: 1px solid #ddd;
}

tr:hover {
    background: #f5f5f5;
}

.total {
    text-align: right;
    font-size: 22px;
    font-weight: bold;
    color: #333;
    margin-top: 25px;
}

.buttons {
    text-align: center;
    margin-top: 25px;
}

.btn {
    display: inline-block;
    padding: 12px 25px;
    margin: 5px;
    text-decoration: none;
    color: white;
    border-radius: 8px;
    background: #667eea;
}

.btn:hover {
    background: #764ba2;
}

</style>

</head>

<body>

<div class="cart-container">

<h1>🛒 My Shopping Cart</h1>

<%
ArrayList<ProductBean> list =
    (ArrayList<ProductBean>) session.getAttribute("cart");

double grandTotal = 0.0;
%>

<table>

<tr>
    <th>Product ID</th>
    <th>Product Name</th>
    <th>Price</th>
    <th>Quantity</th>
    <th>Sub Total</th>
</tr>

<%
for(ProductBean pb : list)
{
    int pQty = 1;

    double subTotal = pb.getPrice() * pQty;

    grandTotal = grandTotal + subTotal;
%>

<tr>

    <td><%=pb.getpId()%></td>

    <td><%=pb.getpName()%></td>

    <td>₹ <%=pb.getPrice()%></td>

    <td><%=pQty%></td>

    <td>₹ <%=subTotal%></td>
    
    <td><a href="remove_prod?pId=<%=pb.getpId()%>">Remove</a></td>

</tr>

<%
}
%>

</table>

<div class="total">
    Grand Total: ₹ <%=grandTotal%>
</div>

<div class="buttons">

    <a href="view_cust_products" class="btn">
        🛍️ Add More Products
    </a>
    
    <a href="cart_summary.jsp" class="btn">
        🛍️ CheckOut
    </a>

</div>

</div>

</body>
</html>