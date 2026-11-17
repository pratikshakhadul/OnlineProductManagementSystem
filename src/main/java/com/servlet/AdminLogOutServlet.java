package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/admin_logout")
public class AdminLogOutServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if(session!=null)
		{
		    session.removeAttribute("name");
		    session.invalidate();
		    request.setAttribute("msg", "Logged Out SuccessFully");
		    request.getRequestDispatcher("admin_login.jsp").forward(request, response);
		}
		else {
			request.setAttribute("msg", "Session Has Been Expired");
			request.getRequestDispatcher("admin_login.jsp").forward(request, response);
		}
		
	}

}
