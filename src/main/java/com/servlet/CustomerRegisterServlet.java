package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.beans.CustomerBean;
import com.dao.CustomerDao;

@WebServlet("/cust_reg")
public class CustomerRegisterServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cId = request.getParameter("cid");
		String cName = request.getParameter("cname");
		String pWord=request.getParameter("pwd");
		String mailId=request.getParameter("mid");
		long phno=Long.parseLong(request.getParameter("phno"));
		CustomerBean cb=new CustomerBean();
		cb.setcId(cId);
		cb.setpWord(pWord);
		cb.setcName(cName);
		cb.setPhno(phno);
		cb.setMailId(mailId);
		int rowCount = new CustomerDao().registerCustomer(cb);
		if(rowCount>0)
		{
			request.setAttribute("msg", "Customer Registration SuccessFull");
			request.getRequestDispatcher("customer_login.jsp").forward(request, response);
		}
		else {
			request.setAttribute("msg", "Customer Registration Failed!!!");
			request.getRequestDispatcher("cust_reg.jsp").forward(request, response);
		}
	}

}
