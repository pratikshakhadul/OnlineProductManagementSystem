package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.beans.ProductBean;
public class ProductDao {
	public int addProduct(ProductBean pb)
	{
		int rowCount=0;
	try {
		Connection con = DBConnection.getConnection();
		PreparedStatement ps= con.prepareStatement
		("insert into product_info values(?,?,?,?)");
		ps.setString(1, pb.getpId());
		ps.setString(2, pb.getpName());
		ps.setDouble(3, pb.getPrice());
		ps.setInt(4, pb.getpQty());
		rowCount = ps.executeUpdate();
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	return rowCount;
	}

	public List<ProductBean> viewAllProducts() {
		List<ProductBean> listOfProdBean=new ArrayList<ProductBean>();
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement
					("select * from product_info");
		    ResultSet rs = ps.executeQuery();
	        while(rs.next())
	        {
	        ProductBean pb=new ProductBean();
	        pb.setpId(rs.getString(1));
	        pb.setpName(rs.getString(2));
	        pb.setPrice(rs.getDouble(3));
	        pb.setpQty(rs.getInt(4));
	        listOfProdBean.add(pb);
	        }
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return listOfProdBean;
	}

	public int deleteProduct(String pId) {
		int rowCount =0;
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement
					("delete from product_info where pid=?");
		    ps.setString(1, pId);
		     rowCount = ps.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return rowCount;
	}

	public ProductBean getProductById(String pId) {
		ProductBean pb=null;
		try {
			Connection con = DBConnection.getConnection();
		   PreparedStatement ps= con.prepareStatement("select * from product_info where pid=?");
		   ps.setString(1, pId);
		   ResultSet rs = ps.executeQuery();
		   if(rs.next())
		   {
			   pb=new ProductBean();
			   pb.setpId(rs.getString(1));
			   pb.setpName(rs.getString(2));
			   pb.setPrice(rs.getDouble(3));
			   pb.setpQty(rs.getInt(4));
		   }
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return pb;
	}

	public int updateProduct(double newPrice, int newQty, String pId) {
		int rowCount=0;
		try {
			Connection con = DBConnection.getConnection();
		    PreparedStatement ps = con.prepareStatement
		    		("update product_info set price=?,qty=? where pid=?");
		    ps.setDouble(1, newPrice);
		    ps.setInt(2, newQty);
		    ps.setString(3, pId);
		    rowCount = ps.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return rowCount;
		
	}

	public void removeQty(String pId, int rQty) {
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("update product_info set qty=qty-? where pid=?");
		    ps.setInt(1, rQty);
		    ps.setString(2, pId);
		    ps.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
	}	
}
