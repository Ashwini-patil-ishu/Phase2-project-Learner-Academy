<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Delete the student name</i></h1>
<form action="deleteControllerstudent.jsp">
<input type="hidden" name="sid" value=<%=request.getParameter("id") %>>
First Name to be deleted <input type="text" name="fname">
Last Name to be deleted<input type="text" name="lname">

</form>
</body>
</html>