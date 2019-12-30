<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:catch var="exception">
<% int x=10/0; %>
</c:catch>
<br/>
${exception }
<br/>
${exception.message }
<br/>
testing...

<%
String URL="<a href='http://www.google.com'>Home</a>";
ServletContext context = getServletContext();
context.setAttribute("url",URL);
session.setAttribute("author","Sarath");

%>
<br/>

${author}

<br/>
${url}

<br/>
<c:out value="${ url}"></c:out>

</body>
</html>