<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="com.learn.dao.SubjectDao" %>
    <%@ page import="com.learn.bean.Subject" %>
    <%@page import= "java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Adding a Subject</i></h1>
<form action="addControllersubject.jsp">
<table>
<tr><td> subject id</td><td><input type="text" name="subid"></td></tr>
<tr><td> Subject name</td><td><input type="text" name="subname"></td></tr>
<tr><td><input type="submit" value="add subject"></td></tr>
</table>
</form>
<table border="1">
<tr><th>Subject ID</th><th>Subject name</th><th>Edit Action</th><th>DeleteAction</th></tr>
<%
SubjectDao dao=new SubjectDao();
List<Subject> list=dao.display();
for(Subject s:list){
%>
<tr><td><%=s.getSubid()%></td><td><%=s.getSubname()%></td><td><a href="editsubject.jsp?subid=<%=s.getSubid()%>">Edit Subject</a></td><td><a href="Deletesubject.jsp?subid=<%=s.getSubid()%>">Delete Subject</a></td></tr>

<%} %>
</table>
</body>
</html>