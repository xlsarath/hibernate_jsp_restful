<%@ page import="java.util.Date,org.studyeasy.servlet.UserDefined" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP File</title>
</head>
<body>
<!-- For adding static comment -->
<%@ include file="file1.txt" %>
<br/>
<!-- For adding dynamic content -->
<jsp:include page="file2.txt"/>
<br/>
<%out.print(new java.util.Date()); %>
<%@ page import="java.util.Date" %>
<%= new Date()
%>
<br/>
<%out.println(new UserDefined().Demo()); %>


</body>
</html>