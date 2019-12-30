<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Image upload form</title>
</head>
<body>
<form action="ImageUpload"  enctype="multipart/form-data" method="post">
select images<input type ="file" name="files" multiple/>
<input type="submit" value="upload"/>
</form>
</body>
</html>