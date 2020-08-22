package com.logdao;

import java.io.IOException;
/*import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;*/
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;



public class Ldao
{
  public boolean check(String uname,String pass)
  {
	  try {
   		 Class.forName("com.mysql.jdbc.Driver");
   		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhs","root","avrn@18131816");
   	     Statement st=con.createStatement();
   	     ResultSet rs=st.executeQuery("select uname,pass from log");
   	     int flag=0;
   	     while(rs.next())
   	     {
   	    	 String a=rs.getString(1);
   	    	 String b=rs.getString(2);
   	    	 if(uname.equals(a)&&pass.equals(b))
   	    	 {
   	    		flag=1;break; 
   	    	 }
   	    	
   	     }
   	  if(flag==1)
    		 return true;
    	 
   	 }
   	 catch(Exception e){
   		 System.out.println(e);
   	 }
	  return false;
  }
  public void insert(String u_name,String u_pass)
  {
	  String query="insert into log values (?,?)";
	  try {
		     Class.forName("com.mysql.jdbc.Driver");
	   		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhs","root","avrn@18131816");
		     PreparedStatement st=con.prepareStatement(query);
		     st.setString(1,u_name);
		     st.setString(2,u_pass);
		     int count=st.executeUpdate();
		     System.out.println(count +"row/s affected");
		     st.close();
		     con.close();
		  
	  }
	  catch(Exception e)
	  {
		  System.out.println(e);
	  }
  }
       
    
	

}
