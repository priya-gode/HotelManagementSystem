<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
<html> 
<head> 
 
 
 
<style> 
 
 
   table {
   margin-left: auto;
  margin-right: auto;
      border-style: double;
      width: 60%;
     
   }

   th, td {
      border: 1px solid black;
      padding: 8px;
      text-align: left;
   }

   th {
      background-color: #f2f2f2;
   }


 
</style> 
</head> 
<body> 
 
 <%@ include file="employeenavbar.jsp" %>
 
 
<br> 
 
<h4 align="center"><u>PentHouse Bookings</u></h4> 
 
<table align=center  border=4>  
<tr bgcolor="linear-gradient(115deg, #56d8e4 10%, #9f01ea 90%);" style="color:white"> 
<td>ID</td> 
<td>NAME</td> 
<td>Arrival</td> 
<td>Contact</td> 
<td>Depature</td> 
<td>numrooms</td> 
<td>Status</td>
<td>Action</td>
</tr> 
 
<c:forEach items="${housedata}"  var="std"> 
<tr bgcolor="#F6B2DA"> 
<td><c:out value="${std.id}" /></td> 
<td><c:out value="${std.name}" /></td> 
<td><c:out value="${std.arrive}" /></td> 
<td><c:out value="${std.contact}" /></td> 
<td><c:out value="${std.depature}" /></td> 
<td><c:out value="${std.numrooms}" /></td> 
 <c:if test="${std.active==true}">
    <td style="background-color: green;">ACTIVE</td>
</c:if>
<c:if test="${std.active==false}">
    <td style="background-color: red;">INACTIVE</td>
</c:if>

<td>
<a href='<c:url value="setstatuspent?id=${std.id}&status=true"></c:url>'>Check-In</a>
<a href='<c:url value="setstatuspent?id=${std.id}&status=false"></c:url>'>Check-Out</a>
</td>
 
</tr> 
</c:forEach> 
 
</table> 
 
</body> 
</html>