package com.beans;
import java.io.Serializable;
public class AdminBean implements Serializable{

	private String aName,pWord,fName,lName,mailId;
	private long phno;
	public AdminBean() {
		super();
	}
	
	public AdminBean(String aName, String pWord, String fName, String lName, String mailId, long phno) {
		super();
		this.aName = aName;
		this.pWord = pWord;
		this.fName = fName;
		this.lName = lName;
		this.mailId = mailId;
		this.phno = phno;
	}

	public String getaName() {
		return aName;
	}
	public void setaName(String aName) {
		this.aName = aName;
	}
	public String getpWord() {
		return pWord;
	}
	public void setpWord(String pWord) {
		this.pWord = pWord;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getMailId() {
		return mailId;
	}
	public void setMailId(String mailId) {
		this.mailId = mailId;
	}
	public long getPhno() {
		return phno;
	}
	public void setPhno(long phno) {
		this.phno = phno;
	}
	
}
