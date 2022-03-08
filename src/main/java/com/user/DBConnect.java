package com.user;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/playvid";
	private static String userName = "root";
	private static String password = "root";
	
	private static Connection con;    //create an obj
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");  //create Driver
			
			con = DriverManager.getConnection(url, userName, password); //create database connection using driver class getconnection()
			
		}catch(Exception e) {
			System.out.println("Databse Connection is not success!!!!!!!!");
		}
				
		return con;
	}
	
}
