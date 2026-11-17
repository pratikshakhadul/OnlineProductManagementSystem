
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,com.beans.ProductBean"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Product Management</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Playfair+Display:wght@500;600&display=swap"
      rel="stylesheet">

<style>

/* =========================
   GLOBAL
========================= */

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {

    font-family: 'Inter', sans-serif;

    min-height: 100vh;

    background:
        radial-gradient(circle at top left,
        rgba(78, 205, 196, 0.12),
        transparent 35%),

        radial-gradient(circle at bottom right,
        rgba(120, 90, 200, 0.10),
        transparent 35%),

        #11141d;

    color: #f4f4f5;

    padding: 40px 20px;
}


/* =========================
   MAIN CONTAINER
========================= */

.container {

    width: 100%;
    max-width: 1150px;

    margin: auto;
}


/* =========================
   HEADER
========================= */

.header {

    display: flex;

    justify-content: space-between;

    align-items: center;

    margin-bottom: 30px;

    flex-wrap: wrap;

    gap: 20px;
}


.title-section h1 {

    font-family: 'Playfair Display', serif;

    font-size: 32px;

    font-weight: 600;

    margin-bottom: 6px;
}


.title-section p {

    color: #9297a7;

    font-size: 14px;
}


/* =========================
   ADD PRODUCT BUTTON
========================= */

.add-btn {

    text-decoration: none;

    display: inline-flex;

    align-items: center;

    gap: 8px;

    padding: 12px 20px;

    border-radius: 10px;

    background: #4fada0;

    color: #081311;

    font-size: 14px;

    font-weight: 700;

    transition: 0.25s;
}

.add-btn:hover {

    transform: translateY(-2px);

    filter: brightness(1.1);

    box-shadow:
        0 8px 25px rgba(79,173,160,0.20);
}


/* =========================
   STATS
========================= */

.stats {

    display: grid;

    grid-template-columns:
        repeat(3, 1fr);

    gap: 18px;

    margin-bottom: 25px;
}


.stat-card {

    background: rgba(30, 33, 49, 0.85);

    border: 1px solid #2b2f40;

    border-radius: 14px;

    padding: 20px;

    backdrop-filter: blur(10px);

    transition: 0.25s;
}

.stat-card:hover {

    transform: translateY(-3px);

    border-color: #3d716b;
}


.stat-title {

    color: #8f94a5;

    font-size: 12px;

    text-transform: uppercase;

    letter-spacing: 0.08em;

    margin-bottom: 8px;
}


.stat-value {

    font-size: 25px;

    font-weight: 700;

    color: #f5f5f5;
}


/* =========================
   SEARCH
========================= */

.search-box {

    margin-bottom: 20px;

    position: relative;
}

.search-box input {

    width: 100%;

    padding: 14px 18px;

    border-radius: 10px;

    border: 1px solid #2d3142;

    outline: none;

    background: #1a1d29;

    color: white;

    font-size: 14px;

    transition: 0.2s;
}

.search-box input:focus {

    border-color: #4fada0;

    box-shadow:
        0 0 0 3px rgba(79,173,160,0.10);
}


/* =========================
   TABLE PANEL
========================= */

.panel {

    background: rgba(29, 32, 47, 0.90);

    border: 1px solid #2c3041;

    border-radius: 16px;

    overflow: hidden;

    box-shadow:
        0 20px 60px rgba(0,0,0,0.25);
}


.table-wrapper {

    overflow-x: auto;
}


table {

    width: 100%;

    border-collapse: collapse;

    min-width: 750px;
}


/* =========================
   TABLE HEADER
========================= */

thead {

    background: #191c28;
}

thead th {

    padding: 17px 20px;

    text-align: left;

    color: #8e93a4;

    font-size: 11px;

    text-transform: uppercase;

    letter-spacing: 0.1em;

    font-weight: 700;

    border-bottom: 1px solid #2c3041;
}


/* =========================
   TABLE BODY
========================= */

tbody td {

    padding: 18px 20px;

    border-bottom: 1px solid #292d3d;

    font-size: 14px;

    color: #e7e7ea;
}


tbody tr {

    transition: 0.2s;
}


tbody tr:hover {

    background: #202431;
}


tbody tr:last-child td {

    border-bottom: none;
}


/* =========================
   PRODUCT ID
========================= */

.product-id {

    color: #8e96a9;

    font-size: 13px;
}


/* =========================
   PRODUCT NAME
========================= */

.product-name {

    font-weight: 600;

    color: #ffffff;
}


/* =========================
   PRICE
========================= */

.price {

    color: #55c5b5;

    font-weight: 700;
}


/* =========================
   STOCK BADGES
========================= */

.stock {

    display: inline-block;

    padding: 6px 10px;

    border-radius: 20px;

    font-size: 12px;

    font-weight: 600;
}

.stock-good {

    background: rgba(79,173,160,0.12);

    color: #5bc7b7;
}

.stock-low {

    background: rgba(238,180,80,0.12);

    color: #e8b75d;
}

.stock-out {

    background: rgba(224,138,125,0.12);

    color: #e08a7d;
}


/* =========================
   ACTIONS
========================= */

.actions {

    display: flex;

    justify-content: flex-end;

    gap: 8px;
}


.action-btn {

    text-decoration: none;

    padding: 8px 12px;

    border-radius: 8px;

    font-size: 12px;

    font-weight: 600;

    transition: 0.2s;

    display: inline-flex;

    align-items: center;

    gap: 5px;
}


/* EDIT */

.edit-btn {

    background: rgba(79,173,160,0.10);

    color: #5bc7b7;

    border: 1px solid rgba(79,173,160,0.25);
}

.edit-btn:hover {

    background: rgba(79,173,160,0.20);

    transform: translateY(-1px);
}


/* DELETE */

.delete-btn {

    background: rgba(224,138,125,0.08);

    color: #e08a7d;

    border: 1px solid rgba(224,138,125,0.20);
}

.delete-btn:hover {

    background: rgba(224,138,125,0.16);

    transform: translateY(-1px);
}


/* =========================
   EMPTY
========================= */

.empty {

    padding: 60px 20px;

    text-align: center;

    color: #8f94a5;

    font-size: 15px;
}


/* =========================
   FOOTER
========================= */

.footer {

    text-align: center;

    color: #727789;

    font-size: 12px;

    margin-top: 20px;
}


/* =========================
   RESPONSIVE
========================= */

@media (max-width: 700px) {

    body {

        padding: 25px 12px;
    }

    .title-section h1 {

        font-size: 27px;
    }

    .stats {

        grid-template-columns: 1fr;
    }

    .header {

        align-items: flex-start;
    }

    .add-btn {

        width: 100%;

        justify-content: center;
    }
}

</style>

</head>


<body>


<div class="container">


    <!-- HEADER -->

    <div class="header">

        <div class="title-section">

            <h1>Product Management</h1>

            <p>Manage your products, pricing and inventory</p>

        </div>


        <a href="product.jsp" class="add-btn">

            ＋ Add Product

        </a>

    </div>



    <%

        List<ProductBean> listOfProductBean =
            (List<ProductBean>)request.getAttribute("list");

        int totalProducts = 0;
        int totalStock = 0;
        int outOfStock = 0;

        if(listOfProductBean != null) {

            totalProducts = listOfProductBean.size();

            for(ProductBean pb : listOfProductBean) {

                totalStock += pb.getpQty();

                if(pb.getpQty() <= 0) {

                    outOfStock++;

                }

            }

        }

    %>


    <!-- STATISTICS -->

    <div class="stats">

        <div class="stat-card">

            <div class="stat-title">
                Total Products
            </div>

            <div class="stat-value">
                <%=totalProducts%>
            </div>

        </div>


        <div class="stat-card">

            <div class="stat-title">
                Total Stock
            </div>

            <div class="stat-value">
                <%=totalStock%>
            </div>

        </div>


        <div class="stat-card">

            <div class="stat-title">
                Out of Stock
            </div>

            <div class="stat-value">
                <%=outOfStock%>
            </div>

        </div>

    </div>



    <!-- SEARCH -->

    <div class="search-box">

        <input type="text"
               id="searchInput"
               placeholder="🔍  Search product by ID or name..."
               onkeyup="searchProducts()">

    </div>



    <!-- TABLE -->

    <div class="panel">

        <div class="table-wrapper">

            <table id="productTable">


                <thead>

                    <tr>

                        <th>Product ID</th>

                        <th>Product Name</th>

                        <th>Price</th>

                        <th>Stock</th>

                        <th style="text-align:right;">
                            Actions
                        </th>

                    </tr>

                </thead>


                <tbody>


                <%

                if(listOfProductBean != null &&
                   !listOfProductBean.isEmpty()) {

                    for(ProductBean pb : listOfProductBean) {

                        String stockClass = "stock-good";
                        String stockText = "In Stock";

                        if(pb.getpQty() <= 0) {

                            stockClass = "stock-out";
                            stockText = "Out of Stock";

                        }
                        else if(pb.getpQty() <= 5) {

                            stockClass = "stock-low";
                            stockText = "Low Stock";

                        }

                %>


                    <tr>


                        <td class="product-id">

                            #<%=pb.getpId()%>

                        </td>


                        <td class="product-name">

                            <%=pb.getpName()%>

                        </td>


                        <td class="price">

                            ₹ <%=pb.getPrice()%>

                        </td>


                        <td>

                            <span class="stock <%=stockClass%>">

                                <%=pb.getpQty()%>
                                &nbsp; <%=stockText%>

                            </span>

                        </td>


                        <td>

                            <div class="actions">


                                <a href="edit_servlet?pId=<%=pb.getpId()%>"
                                   class="action-btn edit-btn">

                                    ✎ Edit

                                </a>


                                <a href="delete_servlet?pId=<%=pb.getpId()%>"
                                   class="action-btn delete-btn"
                                   onclick="return confirmDelete();">

                                    🗑 Delete

                                </a>


                            </div>

                        </td>


                    </tr>


                <%

                    }

                }
                else {

                %>


                    <tr>

                        <td colspan="5">

                            <div class="empty">

                                📦 No products available

                                <br><br>

                                Add your first product to get started.

                            </div>

                        </td>

                    </tr>


                <%

                }

                %>


                </tbody>

            </table>

        </div>

    </div>


    <div class="footer">

        Product Management System &nbsp;•&nbsp;
        <%=totalProducts%> products

    </div>


</div>



<script>

/* =========================
   SEARCH PRODUCTS
========================= */

function searchProducts() {

    let input =
        document.getElementById("searchInput")
        .value
        .toLowerCase();

    let rows =
        document.querySelectorAll("#productTable tbody tr");


    rows.forEach(function(row) {

        let text = row.innerText.toLowerCase();

        if(text.includes(input)) {

            row.style.display = "";

        }
        else {

            row.style.display = "none";

        }

    });

}


/* =========================
   DELETE CONFIRMATION
========================= */

function confirmDelete() {

    return confirm(
        "Are you sure you want to delete this product?"
    );

}

</script>


</body>

</html>

