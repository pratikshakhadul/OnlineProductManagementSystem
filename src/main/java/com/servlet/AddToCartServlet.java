package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.beans.ProductBean;
import com.dao.ProductDao;

@WebServlet("/addToCart")
public class AddToCartServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);	
		if(session!=null)
		{
			String pId = request.getParameter("pId");
			ProductBean prodBean = new ProductDao().getProductById(pId);
		
			ArrayList<ProductBean> listOfProduct =( ArrayList<ProductBean>) session.getAttribute("cart");
		    listOfProduct.add(prodBean);
			session.setAttribute("cart", listOfProduct);
		   request.getRequestDispatcher("add_to_cart.jsp").forward(request, response);
		   //System.out.println(pId+"    "+listOfProduct);
		}
		else {
			request.setAttribute("msg", "Session Has Been Expired");
			request.getRequestDispatcher("admin_login.jsp").forward(request, response);
		}
	}

}
