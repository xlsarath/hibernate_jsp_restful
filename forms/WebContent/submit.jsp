<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Submit</title>
</head>
<body>
<form action="Form.jsp">
<!-- Name : <%=request.getParameter("name")%> <br/>
Gender : <%=request.getParameter("gender")%> <br/>
Language : <%
String[] countries = request.getParameterValues("language");
if(countries!=null){
	for(int i=0;i<countries.length; i++){
		out.print("<br/>");
		out.print(" "+countries[i]);
	}
}
else {out.print("No slection placed");}


%><br/>
Country : <%=request.getParameter("country")%><br/>
 -->
 <input type="text" name ="fst">
 <input type="radio" name="fav" value ="java"> Java
 <input type="radio" name="fav" value ="c#"> Java
 <input type="submit" value="submit">
 </form>
</body>
</html>