<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

	<style>
	
		body {
		  font-family: Arial, Helvetica, sans-serif;
		  background-color: black;
		}	
		
		* {
		  box-sizing: border-box;
		}		
		
		.register_head {
			text-align: center;
		}
		
		.main{
			padding: 16px;
			background-color: white;
		}
		
		input[type=text], input[type=password] {
		  width: 100%;
		  padding: 15px;
		  margin: 5px 0 22px 0;
		  display: inline-block;
		  border: none;
		  background: #f1f1f1;
		}		
		
		input[type=text]:focus, input[type=password]:focus {
		  background-color: #ddd;
		  outline: none;
		}		
		
		.registerbtn {
		  background-color: #04AA6D;
		  color: white;
		  padding: 16px 20px;
		  margin: 8px 0;
		  border: none;
		  cursor: pointer;
		  width: 100%;
		  opacity: 0.9;
		}	
		
		.registerbtn:hover {
		  opacity: 1;
		}	
		
		.signin {
		  background-color: #f1f1f1;
		  text-align: center;
		}
		
		a {
		  color: dodgerblue;
		}
								
	</style>

<title>Delete Account</title>
</head>
<body>

	<% 
	    //catch data
	    String id = request.getParameter("id");
		String userName = request.getParameter("uname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String password = request.getParameter("pass");
	%>


		<div class="main">
			<h1>Delete Account</h1>	
			<hr><br>
			
			<form action="delete" method="Post" >
			
				  <label><b>User ID:</b></label><br>
				  <input type="text" name="uid" value="<%=id%>" readonly><br>
				  					
				  <label><b>User Name:</b></label><br>
				  <input type="text" name="uname" value="<%=userName%>" readonly><br>
				  
				  <label><b>Email:</b></label><br>
				  <input type="text" name="email" value="<%=email%>" readonly><br>
				  
				  <label><b>Contact No:</b></label><br>
				  <input type="text" name="phone" value="<%=phone%>" readonly><br>			  
			  
				  <input type="submit" name="submit" value="Delete Account" class="registerbtn">				
			</form>
									  
	</div>

</body>
</html>