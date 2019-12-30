<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Hello JSP</title>
</head>
<body>
<h1>Hello world</h1>
<%= "hello" %>
<%! public int x = 22; %>
<%= "value of x is"+x %>
<%= new java.util.Date() %>
<br/> <h1>"Expression tags"</h1>
<%= 25*4  %> 
<br/>
<%= 25>4%>
</body>
</html>