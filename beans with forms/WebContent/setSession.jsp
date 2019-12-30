<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set scope as page</title>
</head>
<body>
<jsp:useBean id="user" class ="org.studyeasy.beans.User" scope = "page"></jsp:useBean>
<form action="getSession.jsp" method="post">
First name: <input type = "text" name="firstName" value='<jsp:getProperty property="firstName" name="user"/>'>
Last name: <input type = "text" name="lastName" value='<jsp:getProperty property="lastName" name="user"/>'>
<input type = "submit" value="submit"> 
</form>
</body>
</html>