<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set property</title>
</head>
<body>
<jsp:useBean id="user" class ="beansovorg.studyeasy.beans.User" scope = "request"></jsp:useBean>

<jsp:setProperty property="firstName" name="user" value="Bake"></jsp:setProperty>
<jsp:setProperty property="lastName" name="user" value="Cake"></jsp:setProperty>
New vaues are set<br/>
<%
request.getRequestDispatcher("getRequestProperty.jsp").forward(request,response);

%>
</body>
</html>