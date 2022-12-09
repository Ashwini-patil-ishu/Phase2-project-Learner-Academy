<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Delete the teacher id</i></h1>
<form action="deleteControllerteacher.jsp">
<input type="hidden" name="tid" value=<%=request.getParameter("id") %>>
ID to be deleted <input type="text" name="tid">
<input type="submit" value="delete">

</form>
</body>
</html>