<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<body>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>id</th>
				<th>First name</th>
				<th>Last name</th>
				<th>Email</th>
				<th>Action</th>
			</tr>
		</thead>

		<c:forEach var="allStudents" items="${allNewStudents}">
			<c:url var="updateLink" value="StudentController">
				<c:param name="action" value="update" />
				<c:param name="id" value="${allStudents.id}" />
			</c:url>
			<tr>
				<td>${allStudents.id}</td>
				<td>${allStudents.firstName}</td>
				<td>${allStudents.lastName}</td>
				<td>${allStudents.email}</td>
				<td><a href="${updateLink}" class="btn btn-primary">Update</a></td>
			</tr>
		</c:forEach>

	</table>
	<a href="add-student.jsp" class="btn btn-success">Add Student</a>
</body>
</html>