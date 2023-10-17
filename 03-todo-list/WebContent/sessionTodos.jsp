<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.List , java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String todo = request.getParameter("todo");
List<String>itemList =(List<String>) session.getAttribute("todoList");

if(itemList==null){
  itemList = new ArrayList<>();
}

if(todo!= null && todo.trim().length()>0 && !itemList.contains(todo)){
	itemList.add(todo);
	session.setAttribute("todoList",itemList);
}
%>


<div class="container">
<div class="row">
<ul class="list-group">
<%
if (itemList != null) {
	for (String x : itemList) {
		out.println("<li class=\"list-group-item\">" + x + "</li>");
	}
}
%>
</ul>

</div>

</div>

</body>
</html>