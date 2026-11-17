package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import com.beans.ProductBean;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/remove_prod")
public class RemoveServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession(false);	
		if(session!=null)
		{
			String pId = request.getParameter("pId");
			ArrayList<ProductBean> cart=(ArrayList<ProductBean>)session.getAttribute("cart");
		   
			for(int i=0;i<cart.size();i++)
			{
				System.out.println("RemoveServlet.doGet()");
				ProductBean productBean = cart.get(i);
				System.out.println(productBean);
				if(cart.get(i).getpId().equals(pId))
				{
					cart.remove(i);
					break;
				}
			}
		    
		    session.setAttribute("cart", cart);
		    request.getRequestDispatcher("add_to_cart.jsp").forward(request, response);
		}
		else {
			request.setAttribute("msg", "Session Has Been Expired");
			request.getRequestDispatcher("admin_login.jsp").forward(request, response);
		}
	}

}
