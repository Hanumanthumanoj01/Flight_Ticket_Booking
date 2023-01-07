<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page  import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Done with FlyAway !!</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<a href=HomePage.jsp style="color:neon;text-decoration:none ;font-size:35px;font-weight:bold;">Welcome to FlyAway</a>
<h1>Booking done successfully..Happy Journey!!</h1>
	<div class="container1">
<form>

<%
	@SuppressWarnings("unchecked")
	HashMap<String,String> user=(HashMap<String,String>)session.getAttribute("user");
%>

<h1 class="item" style="color:blue;">Thank you <%=user.get("name")%> for booking with FlyAway !</h1>
<h1 class="item">Your AirTicket</h1>
<%
	@SuppressWarnings("unchecked")
	List<String[]> flights=(List<String[]>)session.getAttribute("flights");
%>

<table border="1">
<tr>
    <th>PassengerName</th>
	<th>FlightName</th>
	<th>DepartureTime</th>
	<th>Price</th>
</tr>

<%
	for(String[] flight:flights){
%>
<tr>
<td><%=user.get("name")%>
<td><%=flight[0]%></td>
<td><%=flight[1]%></td>
<td><%=flight[2]%></td>
</tr>
</table>
<%
	}
%>
		
	<div ><input type="submit" onclick="window.print()" value="Print ticket" class="btn"  /></div>

</form>
</div>
</body>
</html>