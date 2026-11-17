
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,com.beans.ProductBean"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Product List</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f4f6f8;
        padding: 30px;
    }

    h2 {
        text-align: center;
        color: #333;
    }

    table {
        width: 80%;
        margin: auto;
        border-collapse: collapse;
        background: white;
        box-shadow: 0px 4px 10px rgba(0,0,0,0.1);
    }

    th, td {
        padding: 12px;
        text-align: center;
        border: 1px solid #ddd;
    }

    th {
        background: #333;
        color: white;
    }

    tr:hover {
        background: #f1f1f1;
    }

    a {
        text-decoration: none;
        padding: 7px 12px;
        border-radius: 5px;
        color: white;
        margin: 3px;
    }

    .cart {
        background: #28a745;
    }

    .buy {
        background: #007bff;
    }

    .cart:hover {
        background: #218838;
    }

    .buy:hover {
        background: #0056b3;
    }
</style>

</head>

<body>

<h2>Product Details</h2>

<%
List<ProductBean> list =
    (List<ProductBean>) request.getAttribute("list");
%>

<table>

    <tr>
        <th>Product ID</th>
        <th>Product Name</th>
        <th>Price</th>
        <th>Available Qty</th>
        <th>Action</th>
    </tr>

<%
for(ProductBean pb : list)
{
%>

    <tr>

        <td><%=pb.getpId()%></td>

        <td><%=pb.getpName()%></td>

        <td><%=pb.getPrice()%></td>

        <td><%=pb.getpQty()%></td>

        <td>

            <a class="cart"
               href="addToCart?pId=<%=pb.getpId()%>">
               🛒 Add To Cart
            </a>

            <a class="buy"
               href="buy_servlet?pid=<%=pb.getpId()%>">
               💳 Buy
            </a>

        </td>

    </tr>

<%
}
%>

</table>

</body>
</html>

