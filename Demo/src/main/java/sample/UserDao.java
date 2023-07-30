package sample;
import java.sql.*;



import java.util.*;  
import sample.User;  


public class UserDao {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.cj.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","@Santhosh2001");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(User u){  
	    int status=0;  
	    try{  
	    	
	        Connection con=UserDao.getConnection();  
	        System.out.println(con);
	        PreparedStatement ps=con.prepareStatement("insert into details(name,password,email,sex,country) values(?,?,?,?,?)");  
	        ps.setString(1,u.getName()); 
	        ps.setString(2,u.getPassword());  
	        ps.setString(3,u.getEmail());  
	        ps.setString(4,u.getSex());  
	        ps.setString(5,u.getCountry());  
	       
	        
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(User u){  
	    int status=0;  
	    try{  
	    	
	        Connection con=UserDao.getConnection();  
	        System.out.println(con);
	        PreparedStatement ps=con.prepareStatement("delete from details where name=?");  
	        ps.setString(1,u.getName());   
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
}



