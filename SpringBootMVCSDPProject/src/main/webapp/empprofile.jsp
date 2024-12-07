<%@page import="com.klef.jfsd.spring.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
  Employee e = (Employee)session.getAttribute("employee");
 
 if(e==null)
 {
	 response.sendRedirect("empsessionfail");
	 return;
 }
  %> 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Home</title>
</head>
<body>
<%@include file="empnavbar.jsp" %>

<div class="profile-container">
        <table class="profile-table">
            <tr><th>ID</th><td><%=e.getId()%></td></tr>
            <tr><th>Name</th><td><%=e.getName() %></td></tr>
            <tr><th>Gender</th><td><%=e.getGender() %></td></tr>
            <tr><th>Date of Birth</th><td><%=e.getDateofbirth() %></td></tr>
            <tr><th>Department</th><td><%=e.getDepartment() %></td></tr>
            <tr><th>Salary</th><td><%=e.getSalary() %></td></tr>
            <tr><th>Email</th><td><%=e.getEmail() %></td></tr>
            <tr><th>Location</th><td><%=e.getLocation() %></td></tr>
            <tr><th>Contact</th><td><%=e.getContact() %></td></tr>
            <tr><th>Status</th><td><%=e.getStatus() %></td></tr>
        </table>








</body>
</html>