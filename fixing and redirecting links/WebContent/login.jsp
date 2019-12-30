 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<form action="<%= request.getContextPath()%>/SiteController" method="post">
username : <input type="text" name="username" value="Enter username"><br/>
password: <input type="password" name = "password"><br/>
<input type="hidden" name="action" value="loginsubmit">
<input type="submit" value="submit">
</form>
</body>
</html>