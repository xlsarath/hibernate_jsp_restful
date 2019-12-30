<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>     
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Demo</title>
</head>
<body>
<c:import url="/Users.xml" var="XMLFile"/>
<x:parse xml="${XMLFile}" var="XMLdoc"></x:parse>
Name :<x:out select="$XMLdoc/users/user[2]/name"/> <!-- [] isn't an array it represents node number -->
<br/> gender : <x:out select="$XMLdoc/users/user[2]/gender"/> <br/> Age:
<x:out select="$XMLdoc/users/user[2]/age"/> 

<!-- FOr each and If loops -->

<x:forEach select="$XMLdoc/users/user">
<br/>
<x:if select="age > 20">
<x:parse xml="${XMLFile}" var="XMLdoc"></x:parse>
Name :<x:out select="name"/> <!-- [] isn't an array it represents node number -->
<br/> gender : <x:out select="gender"/> <br/> Age:
<x:out select="age"/> 
<br/>
</x:if>
</x:forEach>


<!-- table format -->

<table border=1>
<x:forEach select="$XMLdoc/users/user">
<tr>
<x:parse xml="${XMLFile}" var="XMLdoc"></x:parse>
<td><x:out select="name"/></td> <!-- [] isn't an array it represents node number -->
<td><x:out select="gender"/></td>
<td><x:out select="age"/></td> 
</tr>
</x:forEach>
</table>
<br/>
<br/>
<!-- Choose when and otherwise -->

<table border=1>
<x:forEach select="$XMLdoc/users/user">
<x:choose>
	<x:when select="gender='FeMale'">
<tr>
<x:parse xml="${XMLFile}" var="XMLdoc"></x:parse>
<td><i><b><x:out select="name"/></td></b></i>
<td><i><b><x:out select="gender"/></td></b></i>
<td><i><b><x:out select="age"/></td> </b></i>
</tr>
	</x:when>
	<x:otherwise>
		<td><x:out select="name"/></td>
		<td><x:out select="gender"/></td>
		<td><x:out select="age"/></td>
	</x:otherwise>
</x:choose>
</x:forEach>
</table>




</body>
</html>