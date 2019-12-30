<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>     
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DateNTime</title>
</head>
<body>

<c:set var="date" value="<%=new java.util.Date() %>"/>
<c:out value="${date}"></c:out>
<br/> Time: <strong><fmt:formatDate type="time" value="${date}"/></strong>
<br/> Date: <strong><fmt:formatDate type="date" value="${date}"/></strong>
<br/> Data and time : <strong><fmt:formatDate type="both" value="${date}"/></strong>
<br/> date and time: <strong><fmt:formatDate value="${date}" type="both" timeZone ="GMT-1"/></strong>

<br/> <fmt:setLocale value="en_UK"/>
<br/> date and time in UK: <strong><fmt:formatDate value="${date}" type="both" timeZone ="GMT-1"/></strong>
<br/>
<h1> Formatting</h1>
<c:set var="someNumber" value="654434263.123456"/>
<b><c:out value="${someNumber}"/></b>
<br/>
<br/>
Max integer digits : <fmt:formatNumber type="number" maxIntegerDigits="3" value="${someNumber}"></fmt:formatNumber>
<br/>
Max fraction digits : <fmt:formatNumber type="number" maxFractionDigits="3" value="${someNumber}"></fmt:formatNumber>
<br/> currency : <fmt:formatNumber value="${someNumber}" type="currency"></fmt:formatNumber>
<br/> <fmt:setLocale value="en_US"/>
currency in US: <fmt:formatNumber value="${someNumber}" type="currency"></fmt:formatNumber> 
</body>
</html>