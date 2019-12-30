<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.studyeasy.hibernate.entity.Files" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>

<body>
<%! String form; int fileId; %>

<h1>Listing images</h1>
<table border="1">
<tr>
<th>Preview</th>
<th>Available Information</th>
<th>Update Information</th>
<th>Available Action</th>

<%
String path = (String) request.getAttribute("path");
List<Files> files = (List<Files>)request.getAttribute("files");
for(Files file:files){
	out.print("<tr><td><img src="+file.getFileName()+" height='200'>");
	out.print("<td><ul>"+
				"<li> FIle ID:"+file.getId()+"</li>"+
						"<li> FIle Name:"+file.getFileName()+"</li>"+
								"<li> FIle Label:"+file.getLabel()+"</li>"+
									"<li> FIle caption:"+file.getCaption()+"</li>"+
				"</ul> </td>");	
	fileId = file.getId();
	String form ="<form action='ImageUpload' method ='post'>"+
			 "Label: <input type='text' name='label'/><br/><br/>"+
			 "Caption: <input type='text' name='caption'<br/><br/>"+
			 "<input type='hidden' name='fileId' value='"+fileId+"'/>"+
			 "<input type='hidden' name='action' value='updateInformation'/>"+
			 "<input type='hidden' name='fileName' value='"+file.getFileName()+"'/>"+
			 "<input type='submit' value='Update'>"+
			 "</form>";
	out.print("<td>"+form+"</td>"); 
	out.print("<td><ul><li><a href='"+request.getContextPath()+"/ImageUpload?action=viewImage&fileId="+file.getId()
			+"'>View Image</a></li>");
	out.print("<li><a href='"+request.getContextPath()+"/ImageUpload?action=deleteImage&fileId="+file.getId()
	+"' onclick=\"if(!confirm('Are you sure to delete the user?')) return false\">Delete Image</a></li></ul></td></tr>");
}
%>



</table>
</body>
</html>