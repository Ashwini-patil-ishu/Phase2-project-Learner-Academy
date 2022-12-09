<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Delete Class</i></h1>
<form action="deleteControllerclasses.jsp">
<input type="hidden" name="id" value=<%=request.getParameter("classid") %>>
Class Name to be deleted <input type="text" name="name">
<input type="submit" value="delete">

</form>
</body>
</html>