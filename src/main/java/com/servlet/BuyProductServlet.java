package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.beans.ProductBean;
import com.dao.ProductDao;

@WebServlet("/buy_servlet")
public class BuyProductServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if(session!=null)
		{
			String pId = request.getParameter("pid");
			ProductBean pb = new ProductDao().getProductById(pId);
			if(pb!=null)
			{
				request.setAttribute("pb", pb);
				request.getRequestDispatcher("buy_product.jsp").forward(request, response);
			}
		}
		else {
			request.setAttribute("msg", "Session Has Been Expired");
			request.getRequestDispatcher("admin_login.jsp").forward(request, response);
		}
	}

}
