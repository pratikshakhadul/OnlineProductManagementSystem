package com.servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import com.dao.ProductDao;
@WebServlet("/update")
public class UpdateServlet extends HttpServlet {	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
	    if(session!=null)
	    {
	    	double newPrice = Double.parseDouble(request.getParameter("price"));
	        int newQty = Integer.parseInt(request.getParameter("qty"));
	        String pId=request.getParameter("pId");
	       int rowCount= new ProductDao().updateProduct(newPrice,newQty,pId);
	       if(rowCount>0)
	       {
	    	   request.setAttribute("msg", "Product Updated SuccessFully");
	    	   request.getRequestDispatcher("update_product_success.jsp").forward(request, response);
	       }
	       
	    }
	    else {
			request.setAttribute("msg", "Session Has Been Expired");
			request.getRequestDispatcher("admin_login.jsp").forward(request, response);
		}
	}

}
