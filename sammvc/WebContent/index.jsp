<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
</head>
<body>
it's Home <br/>
<a href="<%=request.getContextPath() %>/Controller?page=login">Login</a><br/>
<a href="<%=request.getContextPath() %>/Controller?page=signup">Sigh Up</a><br/>
<a href="<%=request.getContextPath() %>/Controller?page=about">About</a><br/>
</body>
</html>