<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Employees</title>
    <style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
        background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXX1IsT4HbdqQHojSK24178nrfLkIens2ewg&s');
    }

    h3 {
        color: #333;
        font-size: 2.5em;
        margin-top: 20px;
        text-align: center;
        font-weight: bold;
    }

    table {
        width: 100%;
        max-width: 1200px;
        margin: 20px auto;
        border-collapse: collapse;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
    }

    table, th, td {
        border: 2px solid #4682B4; /* Changed to a blue color */
    }

    th, td {
        padding: 12px 15px;
        text-align: center;
        font-size: 1em;
        word-wrap: break-word;
    }

    th {
        background-color: #4682B4; /* Changed to a blue color */
        color: white;
        font-weight: bold;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:nth-child(odd) {
        background-color: #fff;
    }

    tr:hover {
        background-color: #b0e0e6; /* Light blue hover effect */
    }

    @media (max-width: 768px) {
        table, th, td {
            font-size: 0.9em;
            padding: 10px;
        }
    }
</style>
    
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Delete Employee</u></h3>
    <table>
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
            <th>ACTION</th>
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
                <td><c:out value="${emp.contact}"/></td>
                <td><c:out value="${emp.status}"/></td>
                
                <td>
             <a href='<c:url value="delete?id=${emp.id}"></c:url>'>Delete </a>
           </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>