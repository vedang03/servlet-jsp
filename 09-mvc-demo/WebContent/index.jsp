<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Index JSP</h1>


<table>
<thead>
<tr>
<th>id</th>
<th>name</th>
<th>percentage</th>
</tr>
</thead>

<c:forEach var="students" items="${allStudents}">
<tr>
<td>${students.id}</td>
<td>${students.name}</td>
<td>${students.percentage}</td>
</tr>
</c:forEach>

</table>

</body>
</html>