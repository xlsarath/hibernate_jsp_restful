<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:import url="/include/header.jsp">
<c:param name="title" value = "New title"></c:param>
</c:import>

Add ur contents here

<a href="<c:url value="/anotherpage.jsp"></c:url>"> Anotherpage</a>
<!-- another method -->
<c:redirect url="/anotherpage.jsp"></c:redirect>

<c:import url="/include/footer.jsp"></c:import>