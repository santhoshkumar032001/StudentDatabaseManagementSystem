<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
<%@ page errorPage="Addusererror.jsp" %> 
<%@page import="sample.UserDao"%>  
<jsp:useBean id="u" class="sample.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  

int i=UserDao.save(u);
System.out.println(i);
if(i>0){  
response.sendRedirect("adduserSuccessjsp.jsp");  
}else{
	
	response.sendRedirect("Addusererror.jsp");
}  
%>  


</body>
</html>