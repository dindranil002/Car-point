package com.entity;

public class booking {
	private int userId;
	private String userName;
	private String userEmail;
	private String userMobile;
	private String userAddress;
	private String userStartDate;
	private String userReturnDate;
	private String userAmount;
	private String carModel;
	public booking() {
		super();
		// TODO Auto-generated constructor stub
	}
	public booking(String userName, String userEmail, String userMobile, String userAddress, String userStartDate, String userReturnDate,
			String userAmount,String carModel) {
		super();
		
		this.userName = userName;
		this.userEmail = userEmail;
		this.userMobile = userMobile;
		this.userAddress = userAddress;
		this.userStartDate = userStartDate;
		this.userReturnDate = userReturnDate;
		this.userAmount = userAmount;
		this.carModel = carModel;
	}
	public int getuserId() {
		return userId;
	}
	public void setuserId(int userId) {
		this.userId = userId;
	}
	public String getuserName() {
		return userName;
	}
	public void setuserName(String userName) {
		this.userName = userName;
	}
	public String getuserEmail() {
		return userEmail;
	}
	public void setuserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getuserMobile() {
		return userMobile;
	}
	public void setuserMobile(String userMobile) {
		this.userMobile = userMobile;
	}
	public String getuserAddress() {
		return userAddress;
	}
	public void setuserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getuserStartDate() {
		return userStartDate;
	}
	public void setuserStartDate(String userStartDate) {
		this.userStartDate = userStartDate;
	}
	public String getuserReturnDate() {
		return userReturnDate;
	}
	public void setuserReturnDate(String userReturnDate) {
		this.userReturnDate = userReturnDate;
	}
	public String getuserAmount() {
		return userAmount;
	}
	public void setuserAmount(String userAmount) {
		this.userAmount = userAmount;
	}
	public String getcarModel() {
		return carModel;
	}
	public void setcarModel(String carModel) {
		this.carModel = carModel;
	}
	@Override
	public String toString() {
		return "booking [userId=" + userId + ", userName=" + userName + ", userEmail=" + userEmail + ", userMobile="
				+ userMobile + ", userAddress=" + userAddress + ", userStartDate=" + userStartDate + ", userReturnDate="
				+ userReturnDate + ", userAmount=" + userAmount + ", carModel=" + carModel + "]";
	}
	

}
