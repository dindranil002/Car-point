package com.entity;

public class CarDtls {
	private int carId;
	private String carName;
	private String model;
	private String specification;
	private String price;
	private String status;
	private String photoName;
	private String user_email;
	public CarDtls() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CarDtls(String carName, String model, String specification, String price, String status, String photoName,
			String user_email) {
		super();
		this.carName = carName;
		this.model = model;
		this.specification = specification;
		this.price = price;
		this.status = status;
		this.photoName = photoName;
		this.user_email = user_email;
	}
	public int getCarId() {
		return carId;
	}
	public void setCarId(int carId) {
		this.carId = carId;
	}
	public String getCarName() {
		return carName;
	}
	public void setCarName(String carName) {
		this.carName = carName;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getSpecification() {
		return specification;
	}
	public void setSpecification(String specification) {
		this.specification = specification;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	@Override
	public String toString() {
		return "CarDtls [carId=" + carId + ", carName=" + carName + ", model=" + model + ", specification="
				+ specification + ", price=" + price + ", status=" + status + ", photoName=" + photoName
				+ ", user_email=" + user_email + "]";
	}
	

}
