package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.beans.CustomerBean;

public class CustomerDao {

	public int registerCustomer(CustomerBean cb) {
		int rowCount=0;
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement
			("insert into customer_info values(?,?,?,?,?)");
			ps.setString(1, cb.getcId());
			ps.setString(2, cb.getcName());
			ps.setString(3, cb.getpWord());
			ps.setString(4, cb.getMailId());
			ps.setLong(5, cb.getPhno());
			rowCount = ps.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return rowCount;
	}

	public CustomerBean customerLogin(String mId, String pwd) {
		CustomerBean cb=null;
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select * from customer_info where mailid=? and pword=?");
			ps.setString(1, mId);
			ps.setString(2, pwd);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				cb=new CustomerBean();
				cb.setcId(rs.getString(1));
				cb.setcName(rs.getString(2));
				cb.setpWord(rs.getString(3));
				cb.setMailId(rs.getString(4));
				cb.setPhno(rs.getLong(5));
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return cb;
	}

}
