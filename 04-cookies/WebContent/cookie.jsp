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
Cookie[] cookies = request.getCookies();
boolean isCookiePresent=false;

if(cookies!=null){
for(Cookie x : cookies){
	if( x.getName().equals("color")){
		String bgColor = x.getValue();
		out.println("<p>Cookie is set with background color of: "+bgColor+"</p>");
		isCookiePresent=true;
	}
}
}

if(!isCookiePresent){
	Cookie cookie = new Cookie("color","Yellow");
	cookie.setMaxAge(60*60*24);
	response.addCookie(cookie);
}


%>
</body>
</html>