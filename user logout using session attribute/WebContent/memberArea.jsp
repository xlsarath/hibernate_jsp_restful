<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mem area</title>
</head>
<body>
u are inside <br/>

<%
String username=null, sessionID = null;
if(request.getSession().getAttribute("username")==null){
	response.sendRedirect("login.jsp");
}
else {
	username = request.getSession().getAttribute("username").toString();
	sessionID = request.getSession().getId();
}

%>
Username :<%= username %> <br/>
Current Session : <%= sessionID %><br/>
<form action="<%= request.getContextPath() %>/MemberAreaController">
<input type="hidden" name = "action" value="destroy">
<input type="submit" value="logout">
</form>
</body>
</html>