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
Cookie[] cookies = request.getCookies();

if(cookies !=null){
	for(Cookie cookie : cookies){
		if(cookie.getName().equals("username")){
			username = cookie.getValue();
		}
		if(cookie.getName().equals("JSESSIONID")){
			sessionID = cookie.getValue();
		}
	}
}
if(sessionID==null || username==null){
	response.sendRedirect("login.jsp");
}

%>
Username :<%= username %> <br/>
Currest Session : <%= sessionID %><br/>
<form action="<%= request.getContextPath() %>/MemberAreaController">
<input type="hidden" name = "action" value="destroy">
<input type="submit" value="logout">
</form>
</body>
</html>