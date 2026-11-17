package com.beans;
import java.io.Serializable;
public class ProductBean implements Serializable{
	private String pId,pName;
	private double price;
	private int pQty;
	public ProductBean() {
		super();
	}
	public String getpId() {
		return pId;
	}
	public void setpId(String pId) {
		this.pId = pId;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getpQty() {
		return pQty;
	}
	public void setpQty(int pQty) {
		this.pQty = pQty;
	}
	@Override
	public String toString() {
		return "ProductBean [pId=" + pId + ", pName=" + pName + ", price=" + price + ", pQty=" + pQty + "]";
	}
	

}
