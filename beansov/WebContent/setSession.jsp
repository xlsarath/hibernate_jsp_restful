<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set scope as page</title>
</head>
<body>
<jsp:useBean id="user" class ="beansovorg.studyeasy.beans.User" scope = "page"></jsp:useBean>
<jsp:setProperty property="firstName" name="user" value="Bake"></jsp:setProperty>
<jsp:setProperty property="lastName" name="user" value="Cake"></jsp:setProperty>
New vaues are set<br/>
First Name: <jsp:getProperty property="firstName" name="user"/> <br/>
Last Name: <jsp:getProperty property="lastName" name="user"/>
</body>
</html>