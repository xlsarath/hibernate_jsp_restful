<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello Jsp</title>
</head>
<body>
<h1> HELLO JSP</h1>
<%
int x =25;
out.println(x);
if(x >25) {
	out.println("x is greater than 25");
}
else {
	out.println(" x isn't greater than 25");
}
%>

<%= x %>

<%
for(int i=0;i<10;i++){
	out.println("<br/>");// out.println is used to print on web page ..not on console
	out.print(i);

}

%>

</body>
</html>