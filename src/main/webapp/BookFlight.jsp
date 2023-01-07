<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway</title>
</head>
<body >
<br>
<a href=HomePage.jsp style="color:neon;text-decoration:none ;font-size:35px;font-weight:bold;">Welcome to FlyAway</a>
<br><br>

<%
	@SuppressWarnings("unchecked")
	HashMap<String,String> user=(HashMap<String,String>)session.getAttribute("user");
	if(user==null){
		response.sendRedirect("UserPage.jsp");
	}
%>
<a href="Payment.jsp"><button>Proceed to Pay</a></button>
<!--<p align="center"  style="color:green;font-size:40px;font-weight:bold">Flight Booked Successfully</p>  -->
</body>
</html>