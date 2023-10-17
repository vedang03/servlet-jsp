<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String email =   request.getParameter("email"); %>
<%String username =  request.getParameter("username"); %>
<%String degree =  request.getParameter("degree"); %>
<%String gender =  request.getParameter("gender"); %>

<p>Email: </p>  <%=email %>
<p>Username: </p>  <%=username %>
<p>Degree: </p>  <%=degree %>
<p>Gender: </p>   <%=gender %>


<p>Favourite Languages:</p>
<% String[] lang = request.getParameterValues("language");
for(String language: lang){
	out.println("<li>"+language+"</li>");
}

%>

</body>
</html>