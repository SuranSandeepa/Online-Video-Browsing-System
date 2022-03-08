package com.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UserInsert")
public class UserInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("uid");     //catch and save data
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");	
		String password = request.getParameter("psw");
		
		boolean result;
		
		result = UserDButil.insertuser(username, email, phone, password);   //call UserDButil class & it return boolean value
		
	    if(result == true) {
	    	
	    	RequestDispatcher dis = request.getRequestDispatcher("login.jsp");  //navigate Success.jsp
	    	dis.forward(request, response);
	    	
	    }else {
	    	
	    	RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp"); //navigate UnSuccess.jsp
	    	dis2.forward(request, response);
	    }
	}

}
 