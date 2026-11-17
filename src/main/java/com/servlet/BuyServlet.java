package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.beans.BuyProduct;
import com.dao.ProductDao;

@WebServlet("/buy")
public class BuyServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
	    if(session!=null)
	    {
	    	String pId = request.getParameter("pid");
			String pname = request.getParameter("pname");
			double price = Double.parseDouble(request.getParameter("price"));
		    int qty = Integer.parseInt(request.getParameter("qty"));
		    int rQty = Integer.parseInt(request.getParameter("rqty"));
		   
		    if(rQty>qty)
		    {
		    	request.setAttribute("msg", "Product is out of Stock");
		    	request.getRequestDispatcher("out_of_stock.jsp").forward(request, response);
		    }
		    else {
		    	new ProductDao().removeQty(pId,rQty);
		    	double totalBill=rQty*price;
		    	BuyProduct bp=new BuyProduct();
		    	bp.setpId(pId);
		    	bp.setPname(pname);
		    	bp.setPrice(price);
		    	bp.setrQty(rQty);
		    	bp.setTotalBill(totalBill);
		    	request.setAttribute("bp", bp);
		    	request.getRequestDispatcher("product_bill.jsp").forward(request, response);
		    }
	    }
	    else {
	    	request.setAttribute("msg", "Session Has Been Expired");
	    	request.getRequestDispatcher("admin_login.jsp").forward(request, response);
	    }
	}

}
