<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%@ page isErrorPage="true" %>
<p>Sorry, an error occurred!
Exception is: <%= exception %> 
<jsp:include page="AddUser.html"></jsp:include> 


</body>
</html>