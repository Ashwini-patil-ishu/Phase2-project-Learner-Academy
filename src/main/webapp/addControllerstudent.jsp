<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.learn.dao.StudentDao" %>
    <%@ page import="com.learn.bean.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
StudentDao dao=new StudentDao();
Student s=new Student();
s.setSid(Integer.parseInt(request.getParameter("id")));
s.setFname(request.getParameter("fname"));
s.setLname(request.getParameter("lname"));

int row=dao.insert(s);
if(row>0){
	response.sendRedirect("success.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>