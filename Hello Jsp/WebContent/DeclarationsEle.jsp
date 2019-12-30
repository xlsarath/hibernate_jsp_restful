<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello World</title>
</head>
<body>
<h1> Hello JSP</h1>
<%!public int x=33; %>
<%=x %>

<%!
String message(){
	return "Wassup?";
}
%>

<%= message() %>


</body>
</html>