package com.logdao;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;



public class Ldao
{
  public boolean check(String email,String pass)
  {
	  try {
   		 Class.forName("com.mysql.jdbc.Driver");
   		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhs","root","avrn@18131816");
   	     Statement st=con.createStatement();
   	     ResultSet rs=st.executeQuery("select email_id,pw from proj");
   	     int flag=0;
   	     while(rs.next())
   	     {
   	    	 String a=rs.getString(1);
   	    	 String b=rs.getString(2);
   	    	 if(email.equals(a)&&pass.equals(b))
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
  public void insert(String u_mail,String u_pass,String u_fname,String u_lname)
  {
	  String query="insert into proj (email_id,pw,f_name,l_name) values (?,?,?,?)";
	  try {
		     Class.forName("com.mysql.jdbc.Driver");
	   		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhs","root","avrn@18131816");
		     PreparedStatement st=con.prepareStatement(query);
		     st.setString(1,u_mail);
		     st.setString(2,u_pass);
		     st.setString(3,u_fname);
		     st.setString(4,u_lname);
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
       
  public void update(int hack,int code,String mail)
  {
	  System.out.println(mail);
	  String query="update proj set hac_daily=?,code_daily=? where email_id=?";
	  try {
		     Class.forName("com.mysql.jdbc.Driver");
	   		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhs","root","avrn@18131816");
		     PreparedStatement st=con.prepareStatement(query);
		     st.setInt(1,hack);
		     st.setInt(2,code);
		     st.setString(3,mail);
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
	public void update1(int hack,int code,String mail)
	{
		String query="update proj set hac_total=?,code_total=? where email_id=?";
		
		try {
		     Class.forName("com.mysql.jdbc.Driver");
	   		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhs","root","avrn@18131816");
	   		 Statement st=con.createStatement();
		     ResultSet rs=st.executeQuery("select hac_total,code_total  from proj where email_id="+(char) 34+mail+(char) 34);
		     rs.next();
		     int a=rs.getInt(1);
		     int b=rs.getInt(2);
		     System.out.println(a+"   "+b);
		     PreparedStatement ps=con.prepareStatement(query);
		     int ht=hack+a;
		     int ct=code+b;
		     System.out.println(ht+"   "+ct);
		     ps.setInt(1,ht);
		     ps.setInt(2,ct);
		     ps.setString(3,mail);
		     int count=ps.executeUpdate();
		     System.out.println(count +"row/s affected");
		     st.close();
		     ps.close();
		     con.close();
		  
	  }
	  catch(Exception e)
	  {
		  System.out.println(e);
	  }
	}
	public void addf(String my_id,String f_id)
	{
		 String query="insert into friend values(?,?)";
	     try {
	   		 Class.forName("com.mysql.jdbc.Driver");
	   		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhs","root","avrn@18131816");
	   	  //   PreparedStatement st=con.PrepareStatement(query);
	   	  PreparedStatement st=con.prepareStatement(query);
	   	  st.setString(1,my_id);
	   	  st.setString(2,f_id);
	   	     int count=st.executeUpdate();
	   	     System.out.println(count+" row(s) updated");
	   	    st.close();
	   	    con.close();
	   	
	   	    
		 }
		 catch(Exception e){
		   		 System.out.println(e);}
	}

	
}