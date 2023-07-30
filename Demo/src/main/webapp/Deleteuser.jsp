<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
       background-image:url(https://img1.wallspic.com/previews/0/8/2/0/80280/80280-electronics-tech-technology-gadget-source_code-x750.jpg);
       background-repeat: no-repeat;
	   background-size:cover;
  
}

form{
    color:white;
    
     font-size:x-large;
 	font-variant:small-caps;
  position: relative;
  padding-left:20px;
   padding-top:20px;
 text-shadow: 2px 2px 5px black;
  margin-left: 50px;
    margin-top: 70px;
}
h1{
 background-color:gray;
 color:black;
 font-variant:small-caps;
 font-size:x-large;
 text-shadow: 2px 2px 5px white;
 text-align:center;
 padding:20px;
}




</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> you can delete here existing user data enter the name and <mark>press delete</mark></h1>  
<form action="DeleteUserName.jsp" method="get">  
<table>  
<tr><td>Name_</td><td><input type="text" name="name"/></td></tr>  
<tr><td><input type="submit" value="Delete"/></td></tr>
</table>
</form>


</body>
</html>