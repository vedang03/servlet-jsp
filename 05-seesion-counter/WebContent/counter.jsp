<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%


if(session.getAttribute("counter")==null){
	session.setAttribute("counter",0);
}

 int counter =(int) session.getAttribute("counter");
counter++;
session.setAttribute("counter", counter);

%>
<%= counter %> 


</body>
</html>