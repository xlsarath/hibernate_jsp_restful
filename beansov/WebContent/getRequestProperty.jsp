<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Property request type scope</title>
</head>
<body>
<jsp:useBean id="user" class="beansovorg.studyeasy.beans.User" scope= "request"></jsp:useBean>
First Name: <jsp:getProperty property="firstName" name="user"/> <br/>
Last Name: <jsp:getProperty property="lastName" name="user"/>
</body>
</html>