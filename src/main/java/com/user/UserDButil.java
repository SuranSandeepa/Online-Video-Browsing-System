package com.user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class UserDButil {
	
	private static boolean isSuccess;  // instance variable
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	//For Validate 
	public static boolean validate(String username,String password) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from user where username = '"+username+"' AND password = '"+password+"'";
			
			rs = stmt.executeQuery(sql); 
			
			if(rs.next()) {  //2 values return (true 1 or false 0)
				
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch (Exception e) { //SQL Exception 
			e.printStackTrace(); 
		}
		
		return isSuccess;
	}
	
	//get values from database and assign values
	public static List<User> getuser(String userName){
		
		ArrayList<User> user = new ArrayList<>(); //store user details
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from user where username = '"+userName+"'";
			
			rs = stmt .executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String username = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String password = rs.getString(5);
				
				User u = new User(id, username, email, phone, password); //Create an obj from user class
				user.add(u);                                        //User obj pass to UserarrayList obj
				
			}
			
		}catch(Exception e){
			
		}
		
		return user;
	}
	
	
	
	//For Insert
	public static boolean insertuser(String username, String email, String phone, String password) {
		
		boolean isSuccess = false;
		
		
		//insert data
		try {
			
			con = DBConnect.getConnection(); //call DBConnect class
			stmt = con.createStatement();
			
			String sql = "insert into user values (0,'"+username+"','"+email+"','"+phone+"','"+password+"')";
			int result = stmt.executeUpdate(sql);  //return 0 or 1
			
			if(result > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	
		return isSuccess;
	}
	
	
	
	public static boolean updateuser(String id, String username, String email, String phone,String password ) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "update user set username='"+username+"',email='"+email+"',phone='"+phone+"',password='"+password+"'"
					+"where id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	//Retrieve data
	public static List<User>getUserDetails(String Id){
		
		int covertedID = Integer.parseInt(Id);
		
		ArrayList<User> user = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();	
			
			String sql = "select * from user where id ='"+covertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) { //return boolean value
				
				int id = rs.getInt(1);
				String username = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String password = rs.getString(5);
				
				User u = new User(id, username, email, phone, password);
				user.add(u);  //obj created from array list - user
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	
		
		return user;
	}
	
	
	//Delete data
	public static boolean deleteUser(String id) {
		
		int convId = Integer.parseInt(id);
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from user where id='"+convId+"'";
			int rs = stmt.executeUpdate(sql);
			
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
		
}
