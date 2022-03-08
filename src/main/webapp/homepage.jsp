
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style/main.css">
<title>Insert title here</title>
</head>
<body>

<div id="topbar">
		<img id="image" src="Images/logo.png">
		<button id="name" type="button">PlayVid</button>
	</div>

	<form action="/playvid/result.jsp" method="post" id="search">
		<input type="text" id="searchbox" name="search" class="search"
			placeholder="🔎︎ Search videos"> <input type="submit"
			value="Search" id="searchbtn">
	</form>

	<div id="vidcontainer">
		
	
	</div>
	<div id="bottombar">
		<button id="nav">Home</button>
		<button id="nav">Upload</button>
		<button id="nav">Library</button>
		<a href="useraccount.jsp" ><button id="nav">Account</button></a>
	</div>

</body>
</html>