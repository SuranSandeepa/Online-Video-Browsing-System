<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!--call java class from JSP using JSTL-->
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" type="text/css" href="style/main.css">
<link rel="stylesheet" type="text/css" href="style/button.css">
	<style>
	
	body {
  font-family: "Source Sans Pro", sans-serif;
  background-color: #00ac96;
}
		#user {
		  font-family: Arial, Helvetica, sans-serif;
		  border-collapse: collapse;
		  width: 100%;
		}
		
		#user td, #user th {
		  border: 1px solid #ddd;
		  padding: 8px;
		}
		
		#user tr:nth-child(even){background-color: #f2f2f2;}
		
		#user tr:hover {background-color: #ddd;}
		
		#user th {
		  padding-top: 12px;
		  padding-bottom: 12px;
		  text-align: left;
		  background-color: #04AA6D;
		  color: white;
		}
		
		
		.updatebtn {
		  background-color: #04AA6D;
		  color: white;
		  padding: 16px 20px;
		  margin: 8px 0;
		  border: none;
		  cursor: pointer;
		  width: 100%;
		  opacity: 0.9;
		}	
		
		.updatebtn:hover {
		  opacity: 1;
		}	
		
.edit {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.delete {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
		
.edit {background-color: #000000;} 
.delete {background-color: #FF0000; color: black;}  	
	
	</style>

<title>User-Account</title>
</head>
<body>

<h2><b>Account Details</b></h2>	

	<div id="topbar">
		<img id="image" src="Images/logo.png">
		<button id="name" type="button">PlayVid</button>
	</div>
<br><br><br>

	<c:forEach var="user" items="${userDetails}">
	
	<c:set var="id" value="${user.id}"/>
	<c:set var="username" value="${user.userName}"/>
	<c:set var="email" value="${user.email}"/> 
	<c:set var="phone" value="${user.phone}"/> 
	<c:set var="password" value="${user.password}"/>  
	
	
		<c:url value="updateuser.jsp" var="uupdate">  <!-- carrying data to updateuser.jsp-->	
		<c:param name="id" value="${id}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="pass" value="${password}"/>
		</c:url>
		
		<c:url value="deleteuser.jsp" var="udelete">
		<c:param name="id" value="${id}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="pass" value="${password}"/>
		</c:url>
	
	<br><br>
		<table id="user">
		
		  <tr>
		    <th>ID</th>
		    <th>User Name</th>
		    <th>Email</th>
		    <th>Phone</th>
		    <th>Password</th>	
		    <th>Update</th>	    
		  </tr>
		  <tr>
		    <td>${user.id}</td>
		    <td>${user.userName}</td>
		    <td>${user.email}</td>
		    <td>${user.phone}</td>
		    <td>${user.password}</td>
		    <td><a href="${uupdate}">
				<input type="button" name="update" value="Update" class="edit">
				</a>
				<a href="${udelete}">
				<input type="button" name="delete" value="Delete" class="delete">
				</a>
			</td>		      
		 </tr>
						 
	   </table>	
	<br><br>

							
	</c:forEach>
	

    <div class="wrap">
    	<form action="login.jsp">
        <div class="item">
            <button class="btn">Sign Up</button>
        </div>
        </form>
        <form action="userinsert.jsp">
        <div class="item">
            <button class="btn-outline">Sign In</button>
        </div>
        </form>
    </div>
	
	
<!-- *********************************************************************************************************************************** -->
	<!-- carrying data to updateuser.jsp-->	
<!--	<c:url value="updateuser.jsp" var="uupdate">  
		<c:param name="id" value="${id}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>-->
	
<!-- 	<a href="${uupdate}">
	<input type="button" name="update" value="Update" class="edit">
	</a> -->
	

	
<!-- 	<c:url value="deleteuser.jsp" var="udelete">
		<c:param name="id" value="${id}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>-->
	
	
<!--  	<a href="${udelete}">
	<input type="button" name="delete" value="Delete" class="delete">
	</a>-->

<!-- *********************************************************************************************************************************** -->

	<div id="bottombar">
		<button id="nav">Home</button>
		<a href="upload.jsp" target="_self"><button id="nav">Upload</button></a>
		<button id="nav">Library</button>
		<button id="nav">Account</button>
	</div>
		
</body>
</html>