package com.servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import com.dao.ProductDao;
@WebServlet("/delete_servlet")
public class DeleteProductServlet extends HttpServlet {	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	HttpSession session = request.getSession(false);
	if(session!=null)
	{
		String pId = request.getParameter("pId");
		int rowCount=new ProductDao().deleteProduct(pId);
		if(rowCount>0)
		{
			
			//request.getRequestDispatcher("/view_products").forward(request, response);
			request.setAttribute("msg", "Product Having Id "+pId+" deleted SuccessFully");
			request.getRequestDispatcher("product_delete_success.jsp").forward(request, response);
		}
		else {
			
		}
	}
	else {
		request.setAttribute("msg", "Session Has Been Expired");
		request.getRequestDispatcher("admin_login.jsp").forward(request, response);
	}
	}

}
