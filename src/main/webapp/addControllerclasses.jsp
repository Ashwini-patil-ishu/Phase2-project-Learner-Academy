<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.learn.dao.ClassesDao" %>
    <%@ page import="com.learn.bean.Classes" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
ClassesDao dao=new ClassesDao();
Classes c =new Classes();
c.setClassid(Integer.parseInt(request.getParameter("id")));
c.setName(request.getParameter("name"));
int row=dao.insert(c);
if(row>0){
	response.sendRedirect("success.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>