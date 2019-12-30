<!--<jsp:include page="/include/header.jsp"></jsp:include>-->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<c:import url="/include/header.jsp"><c:param name="title" value="Demo page"/></c:import>
  <div class="container mtb">
    <div class="row">
      <div class="col-lg-6">
		<h1>Hello</h1>
	   </div>
	</div>
  </div>
<!--<jsp:include page="/include/footer.jsp"></jsp:include> // can use this way to include pages--> 
<c:import url="/include/footer.jsp"/>
