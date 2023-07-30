<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
       background-image:url(https://wallpaperaccess.com/full/3075252.jpg);
       background-repeat: no-repeat;
	   background-size:cover;
  
}

table{

	
	font-family:serif,monospace;
	font-weight:300;
	font-size:x-large;
	font-variant:small-caps;
    background-color:pink;
    margin-right: 180px;
    margin-top: 30px;
    padding: 15px;
      margin-left: 180px;
}
h1{
background-color:gray;
 color:black;
 font-variant:small-caps;
 font-size:x-large;
 text-shadow: 2px 2px 5px white;
 text-align:center;
 padding:15px;
}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<h1>you can see here retrive user data <mark>tables and rows</mark></h1>
</head>
<%@ page import="java.sql.*" %>
<body>
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","@Santhosh2001");
	String sql="select * from details;";
	PreparedStatement stmt=con.prepareStatement(sql);
	ResultSet rs=stmt.executeQuery();
	if(rs.next()==false){
		out.println("No records exists");
	}
	else
	{%>
	<center>
		<table border="1">
		<tr><th>Name</th><th>password</th><th>email</th><th>sex</th><th>country</th><th>
		<% do{ 
		%>
		<tr><td><%=rs.getString(1) %></td><td><%=rs.getString(2) %></td><td><%=rs.getString(3) %></td><td><%=rs.getString(4) %></td><td><%=rs.getString(5) %></td>
		<% 
		}
		while(rs.next());%>
		
		</table>
		</center>
	<% }}
	
catch (Exception e)
{
out.println("Error");		
}

%>
</body>
</html>