package com.servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.beans.AdminBean;
import com.dao.AdminDao;
@WebServlet("/admin_register")
public class AdminRegisterServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aName = request.getParameter("aname");
		String pWord=request.getParameter("pwd");
		String fName = request.getParameter("fname");
		String lName = request.getParameter("lname");
		String mailId = request.getParameter("mid");
		long phno=Long.parseLong(request.getParameter("phno"));
		//AdminBean ab=new AdminBean(aName, pWord, fName, lName, mailId, phno);
		AdminBean ab=new AdminBean();
		ab.setaName(aName);
		ab.setfName(fName);
		ab.setlName(lName);
		ab.setPhno(phno);
		ab.setMailId(mailId);
		ab.setpWord(pWord);
		int rowcount=new AdminDao().adminRegister(ab);
		if(rowcount>0)
		{
			request.setAttribute("msg", "Admin Registration SuccessFull");
			request.getRequestDispatcher("admin_login.jsp").forward(request, response);
		}
		else {
			request.setAttribute("msg", "Admin Registration Failed");
			request.getRequestDispatcher("admin_register.html").forward(request, response);
		}
	}

}
