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
Teacher t=new Teacher();
t.setTid(Integer.parseInt(request.getParameter("id")));
t.setFname(request.getParameter("fname"));



int row=dao.edit(t);
if(row>0){
	response.sendRedirect("successedit.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>