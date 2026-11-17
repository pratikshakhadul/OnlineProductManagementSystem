package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import com.beans.ProductBean;
import com.dao.ProductDao;

@WebServlet("/view_cust_products")
public class ViewProductsByCustomer extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      HttpSession session = request.getSession(false);
      if(session!=null)
      {
    	 List<ProductBean> viewAllProducts = new ProductDao().viewAllProducts(); 
         if(viewAllProducts!=null)
         {
        	request.setAttribute("list", viewAllProducts);
        	request.getRequestDispatcher("cust_view_products.jsp").forward(request, response);
         }
         else {
        	 request.setAttribute("msg", "Product List is Empty");
        	 request.getRequestDispatcher("product_empty.jsp").forward(request, response);
         }
      }
      else {
			request.setAttribute("msg", "Session Has Been Expired");
			request.getRequestDispatcher("customer_login.jsp").forward(request, response);
		}
	}

}
