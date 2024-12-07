<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@page import="com.klef.jfsd.spring.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
  Employee e = (Employee)session.getAttribute("employee");
 
 if(e==null)
 {
	 response.sendRedirect("empsessionfail");
	 return; // to stop the running of other code 
 }
  %> 

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Employees By Department</title>
    <style>
           table {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: collapse;
            table-layout: auto;
            background-color: #fff;
        }

        table, th, td {
            border: 2px solid blue;
        }

        th, td {
            padding: 10px;
            text-align: center;
            word-wrap: break-word;
        }

        th {
            background-color: blue;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:nth-child(odd) {
            background-color: #fff;
        }
        
       body {
    background-image: url('https://img.freepik.com/free-vector/geometric-network-connection-background_23-2148876717.jpg');
    background-repeat: no-repeat; /* Ensures the image doesn't repeat */
    background-size: cover; /* Ensures the image covers the whole background */
    background-position: center; /* Centers the background image */
    background-attachment: fixed; /* Keeps the image fixed while scrolling */
}
    </style>
</head>
<body>
<%@include file="adminnavbar.jsp" %>

    <h3 style="text-align: center;"><u>View Employees By Department</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>DEPARTMENT</th>
            <th>SALARY</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>STATUS</th>
        </tr>
        <c:forEach items="${emplist}" var="emp">
            <tr>
                <td><c:out value="${emp.id}"/></td>
                <td><c:out value="${emp.name}"/></td>
                <td><c:out value="${emp.gender}"/></td>
                <td><c:out value="${emp.dateofbirth}"/></td>
                <td><c:out value="${emp.department}"/></td>
                <td><c:out value="${emp.salary}"/></td>
                <td><c:out value="${emp.location}"/></td>
                <td><c:out value="${emp.email}"/></td>
                <t d><c:out value="${emp.contact}"/></td>
                <td><c:out value="${emp.status}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
