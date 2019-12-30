<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.studyeasy.hibernate.entity.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Image</title>
</head>
<body>
<%Files file; String path; %>
<%file = (Files)request.getAttribute("file"); 
	path = (String)request.getAttribute("path");%>
File Id: <%=file.getId() %> | File name: <%=file.getFileName() %> 
<%
if(file.getLabel()!=null)
	out.print("| label:"+file.getLabel());
%>
<%
if(file.getCaption()!=null)
	out.print("| caption:"+file.getCaption());
%>
<a href="${pageContext.request.contextPath}">Home</a>
<a href="${pageContext.request.contextPath}/ImageUpload?action=listingImages">List Available Images</a>
<img src="<%=file.getFileName()%>">
<hr/>
</body>
</html>