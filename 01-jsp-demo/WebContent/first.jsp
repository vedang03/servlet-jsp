<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date , com.aurionpro.model.StringUtil" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Helloooo</h1>
<%= new Date() %>
<br>
<h1>
<%= new String("Hello from expression tag").toUpperCase() %>
</h1>
<br>
<h3>
<h3>Scriptlet Tag</h3>
<%
for(int i=0;i<10;i++){
	out.println(i+"<br>");
}
%>
</h3>
<h3>Declaration Tag</h3>
<%!
String stringToUpper(String str){
	return str.toUpperCase();
}
%>
<%= StringUtil.stringToUpper("Vedang") %>

</body>
</html>