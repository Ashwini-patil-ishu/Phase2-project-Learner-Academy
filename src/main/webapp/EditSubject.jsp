<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Editing the subject name</i></h1>
<form action="editControllersubject.jsp">
<input type="hidden" name="subid" value=<%=request.getParameter("id") %>>
Name to be edited <input type="text" name="subname">
<input type="submit" value="edit">

</form>
</body>
</html>