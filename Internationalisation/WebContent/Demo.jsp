<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Demo</title>
</head>
<body>
View web info in:
<a href="?localen=en_US">English</a>
<a href="?locale=es_AR">Argentina</a>
<a href="?locale=ru_RU">RUssia</a>
<a href="?locale=hi_IN">India</a>
<br/>
<br/>
<hr/>
<fmt:setLocale value="${param.locale}"/>
<fmt:bundle basename="i18n/website">
<fmt:message key="label.hello"> John </fmt:message> <br/>
<fmt:message key="label.welcome"> John </fmt:message> <br/>
<fmt:message key="label.message"> John </fmt:message> <br/>
<fmt:message key="label.thanks"> John </fmt:message> <br/>
</fmt:bundle>
<br/>
locale: ${param.locale}
</body>
</html>