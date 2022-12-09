<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.learn.dao.SubjectDao" %>
    <%@ page import="com.learn.bean.Subject" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
SubjectDao dao=new SubjectDao();
Subject subject=new Subject();
subject.setSubid(Integer.parseInt(request.getParameter("subid")));
subject.setSubname(request.getParameter("subname"));



int row=dao.delete(subject);
if(row>0){
	response.sendRedirect("successdelete.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>