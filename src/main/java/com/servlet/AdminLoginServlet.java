package com.servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import com.beans.AdminBean;
import com.dao.AdminDao;
@WebServlet("/admin_login")
public class AdminLoginServlet extends HttpServlet {	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aName = request.getParameter("aname");
		String pWord=request.getParameter("pwd");
		AdminBean ab= new AdminDao().adminLogin(aName, pWord);
	   System.out.println(ab);
		if(ab!=null)
	    {
	    	HttpSession session = request.getSession();
	    	session.setAttribute("name", ab.getaName());
	    	request.setAttribute("msg", "Welcome:");
	    	request.getRequestDispatcher("admin_login_success.jsp").forward(request, response);
	    	
	    }else {
	    	request.setAttribute("msg", "Login Failed!!!Invalid Name or Password");
	    	request.getRequestDispatcher("admin_login.jsp").forward(request, response);
	    }
	}

}
