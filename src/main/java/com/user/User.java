package com.user;

public class User {
	
	private int id;
	private String userName;
	private String email;
	private String phone;
	private String password;	
	
	public User(int id, String userName, String email, String phone, String password) {

		this.id = id;
		this.userName = userName;
		this.email = email;
		this.phone = phone;
		this.password = password;		
	}

	public int getId() {
		return id;
	}

	public String getUserName() {
		return userName;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getPassword() {
		return password;
	}
	
}
