<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Image upload form</title>
</head>
<body>
<form action="ImageUpload?action=filesUpload"  enctype="multipart/form-data" method="post">
select images<input type ="file" name="files" multiple/>
<input type="submit" value="upload"/>
<br/>
<a href ="${pageContext.request.contextPath}/ImageUpload?action=listingImages">View available images</a>
<br/>
<img src="wp.jpg" height='200'>
<br/>
<%
System.out.println("Working Directory = " +
	              System.getProperty("user.dir")); 
%>
</form>
</body>
</html>