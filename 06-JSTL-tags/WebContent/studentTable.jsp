<%@page import="java.util.ArrayList , java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import=" com.aurionpro.model.Student" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
List<Student>students = new ArrayList<>();
students.add(new Student(1,"Vedang","ved@gmail.com"));
students.add(new Student(2,"Tom","tom@gmail.com"));
students.add(new Student(1,"Barry","barry@gmail.com"));
pageContext.setAttribute("all", students);
%>


<table>
<thead>
<tr>
<th>id</th>
<th>name</th>
<th>email</th>
</tr>
</thead>

<c:forEach var="students" items="${all}">
<tr>
<td>${students.id}</td>
<td>${students.name}</td>
<td>${students.email}</td>
</tr>
</c:forEach>

</table>

</body>
</html>