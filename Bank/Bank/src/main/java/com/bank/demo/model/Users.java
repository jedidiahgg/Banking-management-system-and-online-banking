package com.bank.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Users {
	
	@Id
	private String uname;
	private String upass;
	private String paycode;
	private double balance;
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname; 
	}
	public String getUpass() {
		return upass;
	}
	public void setUpass(String upass) {
		this.upass = upass;
	}
	public String getPaycode() {
		return paycode;
	}
	public void setPaycode(String paycode) {
		this.paycode = paycode;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	@Override
	public String toString() {
		return "Users [uname=" + uname + ", upass=" + upass + ", paycode=" + paycode + ", balance=" + balance + "]";
	}
	
	
	
}
