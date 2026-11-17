package com.beans;

import java.io.Serializable;

public class BuyProduct implements Serializable{

	private String pId,pname;
	private double price,totalBill;
	private int rQty;
	public String getpId() {
		return pId;
	}
	public void setpId(String pId) {
		this.pId = pId;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getTotalBill() {
		return totalBill;
	}
	public void setTotalBill(double totalBill) {
		this.totalBill = totalBill;
	}
	public int getrQty() {
		return rQty;
	}
	public void setrQty(int rQty) {
		this.rQty = rQty;
	}
	
}
