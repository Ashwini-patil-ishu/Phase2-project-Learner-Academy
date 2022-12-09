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
Student student=new Student();
student.setSid(Integer.parseInt(request.getParameter("id")));
student.setFname(request.getParameter("fname"));
student.setFname(request.getParameter("lname"));

int row=dao.edit(student);
if(row>0){
	response.sendRedirect("successedit.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>