<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html>
   <head>
      <title>JSTL sql:query Tag</title>
   </head>
   <a href=HomePage.jsp style="color:neon;text-decoration:none ;font-size:35px;font-weight:bold;">Welcome to FlyAway</a>
   <body>
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/flyaway"
         user = "root" password = "mysql@28200"/>
         <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from flights;
      </sql:query>
      <table border = "1" width = "100%">
         <tr>
            <th>NAME</th>
            <th>FROM</th>
            <th>TO</th>ß
            <th>DEPARTURE</th>
            <th>TIME</th>
            <th>PRICE</th>
         </tr>
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td> <c:out value = "${row.name}"/></td>
               <td> <c:out value = "${row.fromf}"/></td>
               <td> <c:out value = "${row.tof}"/></td>
               <td> <c:out value = "${row.datef}"/></td>
               <td> <c:out value = "${row.timef}"/></td>
               <td> <c:out value = "${row.price}"/></td>
            </tr>
         </c:forEach>
      </table>
   </body>
</html>