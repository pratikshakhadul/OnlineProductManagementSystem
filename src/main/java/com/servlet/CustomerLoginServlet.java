package com.servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

import com.beans.CustomerBean;
import com.beans.ProductBean;
import com.dao.CustomerDao;
@WebServlet("/cust_login")
public class CustomerLoginServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CustomerBean cb= new CustomerDao().customerLogin(request.getParameter("mId"),request.getParameter("pwd"));
	    if(cb!=null)
	    {
	    	HttpSession session = request.getSession();
	    	session.setAttribute("name", cb.getcName());
	    	session.setAttribute("cart", new ArrayList<ProductBean>());
	    	response.sendRedirect("customer_login_success.jsp");
	    }
	    else {
	    	request.setAttribute("msg", "Login Failed!!!Invalid MailId or Password");
	        response.sendRedirect("customer_login.jsp");
	    }
	}

}
