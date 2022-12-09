<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.learn.dao.TeachersDao" %>
    <%@ page import="com.learn.bean.Teacher" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
TeachersDao dao=new TeachersDao();
Teacher teacher=new Teacher();
teacher.setTid(Integer.parseInt(request.getParameter("id")));
teacher.setFname(request.getParameter("fname"));
teacher.setLname(request.getParameter("lname"));
teacher.setAge(Integer.parseInt(request.getParameter("age")));


int row=dao.insert(teacher);
if(row>0){
	response.sendRedirect("success.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>