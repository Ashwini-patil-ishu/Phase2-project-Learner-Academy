<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Delete the subject name</i></h1>
<form action="deleteControllersubject.jsp">
<input type="hidden" name="subid" value=<%=request.getParameter("subid") %>>
Subject name to be deleted <input type="text" name="subname">
<input type="submit" value="delete">

</form>
</body>
</html>