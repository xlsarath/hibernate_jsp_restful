<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL demo</title>
</head>

<body>  
<c:set var ="name" value="sarath"></c:set>
<!-- <c:out value = "${name}"></c:out> -->
${name}
<c:remove var="name"/>
${name} <!-- this line will not print on jsp page -->
${param.msg} <!--  in URL pass ?msg=hi -->

<!-- importing beans onto jsp page  -->
<jsp:useBean id="user" class="org.studyeasy.beans.User" scope="page"></jsp:useBean>
<c:out value="${user.getFirstName()}"></c:out>
<c:out value="${user.getLastName()}"></c:out>

<c:if test="${param.name=='sarath'}">
Hello User
</c:if>
<!-- no else tags are available -->
HOOOO

<c:choose>
	<c:when test="${param.lang=='Java' }"> learning java</c:when>
	<c:when test="${param.lang=='net' }"> learning net</c:when>
	<c:when test="${param.lang=='php' }"> learning php</c:when>
	<c:otherwise> learning something good</c:otherwise>
</c:choose>

<!--  JSTL LOOPS -->

<c:forEach var="i" begin="1" end="15" step="3">
${i}
</br>
</c:forEach>


<%
String[] names = new String[3];
names[0]="sarath";
names[1]="bunny";
names[2]="bubloo";

%>

<c:forEach items="<%=names%>" var ="name">
${name}
</br>
</c:forEach>

<%
String URL="www.google.com";

%>

<c:forTokens items= "www.google.com" delims="." var="temp" >
${temp}
</br>
</c:forTokens>

<c:forTokens items= "<%=URL%>" delims="." var="temp" >
${temp}
</br>
</c:forTokens>



</body>
</html>