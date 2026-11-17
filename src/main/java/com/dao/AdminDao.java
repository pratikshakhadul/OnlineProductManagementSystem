package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.beans.AdminBean;
public class AdminDao {
	public int adminRegister(AdminBean ab)
	{
		int rowCount=0;
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement
			("insert into admin_info values(?,?,?,?,?,?)");
			ps.setString(1, ab.getaName());
			ps.setString(2, ab.getpWord());
			ps.setString(3, ab.getfName());
			ps.setString(4, ab.getlName());
			ps.setString(5, ab.getMailId());
			ps.setLong(6, ab.getPhno());
			rowCount = ps.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return rowCount;
	}
	
	public AdminBean adminLogin(String name,String pWord)
	{
		AdminBean ab=null;
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement
			("select * from admin_info where aname=? and password=?");
		    ps.setString(1, name);
		    ps.setString(2, pWord);
		    ResultSet rs = ps.executeQuery();
		    if(rs.next())
		    {
		    ab=new AdminBean(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getLong(6));
		    }
		}
		catch (Exception e) {
		   e.printStackTrace();
		}
		return ab;
	}
}
