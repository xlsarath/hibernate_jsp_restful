<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Demo</title>
</head>
<body>
It's from original page

<%-- <jsp:forwardpage="Forward.jsp"></jsp:forward> --%>
<%
request.getRequestDispatcher("Forward.jsp").forward(request,response);
response.sendRedirect("redirect.jsp");

%>
</body>
</html>