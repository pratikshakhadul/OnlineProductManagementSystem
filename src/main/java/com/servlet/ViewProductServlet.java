package com.servlet;
import java.io.IOException;
import java.util.List;
import com.beans.ProductBean;
import com.dao.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/view_products")
public class ViewProductServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);	
		if(session!=null)
		{
		List<ProductBean> listOfProductBean= new ProductDao().viewAllProducts();
		if(listOfProductBean!=null&&(!listOfProductBean.isEmpty()))
		{
			request.setAttribute("list", listOfProductBean);
			request.getRequestDispatcher("view_products.jsp").forward(request, response);
		}
		else {
			request.setAttribute("msg", "Product List is Emplty!!!!!");
			request.getRequestDispatcher("product_empty.jsp").forward(request, response);
		}
		}
		else {
			request.setAttribute("msg", "Session Has Been Expired");
			request.getRequestDispatcher("admin_login.jsp").forward(request, response);
		}
		}

}
