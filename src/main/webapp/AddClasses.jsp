<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.learn.dao.ClassesDao" %>
    <%@ page import="com.learn.bean.Classes" %>
    <%@page import= "java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Class</title>
</head>
<body>
<h1><i>Adding a Class</i></h1>
<form action="addControllerclasses.jsp">
<table>
<tr><td>id</td><td><input type="text" name="classid"></td></tr>
<tr><td>Name</td><td><input type="text" name="name"></td></tr>


<tr><td><input type="submit" value="add class"></td></tr>


</table>
</form>
<table border="1">
<tr><th>Class ID</th><th>Class Name</th><th>Edit Action</th><th>Delete Action</th></tr>
<%
ClassesDao dao=new ClassesDao();
List<Classes> list=dao.display();
for(Classes c:list){
%>
<tr><td><%=c.getClassid() %></td><td><%=c.getName() %></td><td><a href="editClass.jsp?classid=<%=c.getClassid()%>">Edit Class</a></td><td><a href="DeleteClass.jsp?classid=<%=c.getClassid()%>">Delete Class</a></tr>
<%} %>
</table>
</body>
</html>