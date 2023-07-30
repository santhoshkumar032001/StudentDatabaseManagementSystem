<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page errorPage="addusererror.jsp" %> 
<%@page import="sample.UserDao"%>  
<jsp:useBean id="u" class="sample.User"></jsp:useBean>  
<jsp:setProperty property="name" name="u"/>  
  
<%  

int i=UserDao.delete(u);
if(i>0){  
response.sendRedirect("DeleteSuccess.jsp");  
}else{
	
	response.sendRedirect("deleteerror.jsp");
}  
%>  
</body>
</html>
