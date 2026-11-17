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
@WebServlet("/addProduct")
public class AddProductServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String name = (String)session.getAttribute("name");
		System.out.println(name);
		System.out.println("Session:"+session);
		if(session!=null&&(!session.isNew()))
		{
			String pId = request.getParameter("pId");
			String pName = request.getParameter("pName");
			double price=Double.parseDouble(request.getParameter("price"));
			int qty=Integer.parseInt(request.getParameter("qty"));
			ProductBean pb=new ProductBean();
			pb.setpId(pId);
			pb.setpName(pName);
			pb.setpQty(qty);
			pb.setPrice(price);
			int rowCount = new ProductDao().addProduct(pb);
			if(rowCount>0)
			{
				request.setAttribute("msg", "Product Added SuccessFully");
				request.getRequestDispatcher("product_add_success.jsp").forward(request, response);
			}
			else {
				request.setAttribute("msg", "Product Not Added");
				request.getRequestDispatcher("product.jsp").forward(request, response);
			}

		}
		else {
			request.setAttribute("msg", "Session Has Been Expired");
			request.getRequestDispatcher("admin_login.jsp").forward(request, response);
		}
	}

}
