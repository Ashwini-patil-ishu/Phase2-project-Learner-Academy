<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.learn.dao.StudentDao" %>
    <%@ page import="com.learn.bean.Student" %>
    <%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Adding a Students</i></h1>
<form action="addControllerstudent.jsp">
<table>
<tr><td>id</td><td><input type="text" name="id"></td></tr>
<tr><td>FirstName</td><td><input type="text" name="section"></tr></td>

<tr><td>Last Name</td><td><input type="text" name="teacher"></td></tr>

<!--  <tr><td>Class</td><td><input type="text" name="subject"></td></tr>-->
<!--  <tr><td>Age</td><td><input type="text" name="subject"></td></tr> -->

<tr><td><input type="submit" value="add student"></td></tr>
<table border="1">
<tr><th>Student ID</th><th>Student First name</th><th>Student Last Name</th><th>Phone no</th><th>ClassName</th><th>Edit Action</th><th>DeleteAction</th></tr>
<%
StudentDao dao=new StudentDao();
List<Student> list=dao.display();
for(Student s:list){
%>
<tr><td><%=s.getSid()%></td><td><%=s.getFname() %></td><td><%=s.getLname() %></td><td><%=s.getPhone() %></td><td><%=s.getClassName() %></td><td><a href="editstudent.jsp?sid=<%=s.getSid()%>">Edit Student</a></td><td><a href="Deletestudent.jsp?sid=<%=s.getSid()%>">Delete student</a></td></tr>

<%} %>
</table>


</table>
</form>
</body>
</html>