<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="com.learn.dao.TeachersDao" %>
    <%@ page import="com.learn.bean.Teacher" %>
    <%@page import= "java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Adding a Teacher</i></h1>
<form action="addControllerteacher.jsp">
<table>
<tr><td>id</td><td><input type="text" name="id"></td></tr>
<tr><td>First Name</td><td><input type="text" name="section"></td></tr>
<tr><td>Last Name</td><td><input type="text" name="teacher"></td></tr>
<tr><td>Age</td><td><input type="text" name="subject"></td></tr>

<tr><td><input type="submit" value="add taecher"></td></tr>
</table>
</form>
<table border="1">
<tr><th>Teacher ID</th><th>Teacher First name</th><th>Teacher Last Name</th><th>Age</th><th>Edit Action</th><th>DeleteAction</th></tr>
<%
TeachersDao dao=new TeachersDao();
List<Teacher> list=dao.display();
for(Teacher t:list){
%>
<tr><td><%=t.getTid()%></td><td><%=t.getFname() %></td><td><%=t.getLname() %></td><td><%=t.getAge() %></td><td><a href="editteacher.jsp?tid=<%=t.getTid()%>">Edit Teacher</a></td><td><a href="Deleteteacher.jsp?tid=<%=t.getTid()%>">Delete Teacher</a></td></tr>

<%} %>
</table>
</body>
</html>