<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List" %>
<%@ page import="org.studyeasy.entity.User" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>     

<c:import url="include/header.jsp"><c:param name="title" value="List Users"/></c:import>
<div class="container mtb">
	<div class="row">
		<div class="col-lg-6">
			<strong>Listing users</strong>
			<hr/>
			<table border="1">
			<thead>
			<th>User ID </th>
			<th>Username </th>
			<th>Email </th>
			<th>Operation </th>
			</thead>
			<c:forEach items="${listUsers}" var ="user">
			<c:url var="updateURL" value="operation">
			<c:param name = "page" value="updateUser"></c:param>
			<c:param name="usersId" value="${user.users_id}"></c:param>
			<c:param name="username" value="${user.username}"></c:param>
			<c:param name="email" value="${user.email}"></c:param>
			</c:url>
			
			<c:url var="deleteUser" value="operation">
			<c:param name = "page" value="deleteUser"></c:param>
			<c:param name="usersId" value="${user.users_id}"></c:param>
			</c:url>
			
			<tr>
			<td>${user.users_id}</td>
			<td>${user.username}</td>
			<td>${user.email}</td>
			<td>
			<a href="${updateURL}">Update</a>
			<a href="${deleteUser}"  onclick="if(!confirm('Are you sure to delete the user ?')) return false">Delete</a> 
			</td>
			</tr>
			</c:forEach>
			</table>
		</div>
	</div>
</div>
<c:import url="include/footer.jsp"></c:import>






