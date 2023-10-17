<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:set var="income" scope="session" value="${1000*4}"/>  
<p>Your income is : <c:out value="${income}"/></p>  
<c:choose>  
    <c:when test="${income <= 1000}">  
       Income is not good.  
    </c:when>  
    <c:when test="${income > 10000}">  
        Income is very good.  
    </c:when>  
    <c:otherwise>  
       Income is undetermined...  
    </c:otherwise>  
</c:choose>  


<h1>JSTL contains</h1>
<c:set var="str1" value="JSTL Function" ></c:set>
<c:set var="str2" value="JSTL" ></c:set>	

 <c:if test="${fn:contains(str1, str2)}">
  <c:out value="'JSTL' substring present in 'JSTL Function' string" />
</c:if>

<h1>JSTL length</h1>
<c:set var="str" value="Vedang" />
<p>Word:Vedang</p>
Length = ${fn:length(str)}

<h1>JSTL upper case</h1>
<c:set var="str" value="vedang" />
<p>Word:vedang</p>
Upper case =  ${fn:toUpperCase(str)}

<h1>JSTL split</h1>
<p>Sentence: JSTL example of split</p>
<c:set var="str" value="JSTL example of split" />
<c:set var="splits" value="${fn:split(str,' ')}" />
<c:forEach var="i" begin="0" end="3">
splits[${i}]: ${splits[i]}<br>
</c:forEach>
</body>
</html>