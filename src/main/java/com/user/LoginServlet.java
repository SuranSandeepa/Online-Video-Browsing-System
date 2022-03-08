package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String userName = request.getParameter("username");     //catch username
		String password = request.getParameter("password");    //catch password
		
		boolean isTrue;
		
		isTrue = UserDButil.validate(userName, password); // return boolean value
		
		if(isTrue == true) {
			
			List<User> userDetails = UserDButil.getuser(userName); //Create List obj for store customer details
			request.setAttribute("userDetails", userDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");  //direct to useraccount.jsp
			dis.forward(request, response);
			
		}else {
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Your Username Or Password is Incorrect');");
			out.println("location = 'login.jsp'");  //direct to login.jsp
			out.println("</script>");
		}
		
		
		
	}

}  
