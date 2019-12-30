<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>     
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Demo</title>
</head>
<body>
<%
String [] names = {"Sarath","Chandra","Makkena"};
%>
<!-- ${fn:length("studyeasy.org")} -->
<c:set var="namesArray" value="<%=names%>" />
${fn:length("namesArray") }
<!-- JSTL trim and escapexml tags-->
${fn:trim("      Study   easy   .     org") }
<br/>
<h1> EscapeXML Demo</h1>
${fn:escapeXml("<h1> EscapeXML Demo</h1>") }

<c:set var="we" value="StudyEasy.org"></c:set>
<br/>
${fn:startsWith("studyeasy.org","s") }
<br/> ${fn:endsWith(we,"org") }
<br/> ${fn:contains(we,"ORG") }
<br/> ${fn:containsIgnoreCase("studyeasy.org","ORG") }
<br/> ${fn:toUpperCase("StudyEasy.org") }
<br/> ${fn:toLowerCase("SARath") }
<br/> ${fn:indexOf("Sarath","t") }
<br/> ${fn:replace("Sarath","ara","CAR") }
<br/> ${fn:substring("sarath",2,4) }
<br/> ${fn:substringBefore("Sarath","ar") }
<br/> ${fn:substringAfter("Sarath","ar") }

<c:set var="elements" value="${fn:split('www.studyeasy.org','.')}"></c:set>
<c:forEach var="element" items="${elements}">
<br/>
${element}
</c:forEach>
<br/>
Elements: ${fn:join(elements,'.') }

</body>
</html>