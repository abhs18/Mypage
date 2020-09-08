package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.logdao.Ldao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Search")
public class Search extends HttpServlet {
	
       
    
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String mail=request.getParameter("id");
		boolean flag=false;
		String query="select * from proj where email_id="+(char)34+mail+(char)34;
		 try {
	   		 Class.forName("com.mysql.jdbc.Driver");
	   		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhs","root","avrn@18131816");
	   	     Statement st=con.createStatement();
	   	     ResultSet rs=st.executeQuery(query);
	   	     
	   	     if(rs.next())
	   	     {
	   	    	 String a=rs.getString(1);
	   	    	 String b=rs.getString(3);
	   	    	 String c=rs.getString(4);
	   	    	 int h_daily=rs.getInt(5);
	   	    	 int h_total=rs.getInt(6);
	   	    	 int c_daily=rs.getInt(7);
	   	    	 int c_total=rs.getInt(8);
	   	    	//request.setAttribute();
	   	    	 System.out.println(a+"\n"+b+" "+c);
	   	    	request.setAttribute("uid",a);
	   	    	request.setAttribute("u_fname",b);
	   	    	request.setAttribute("u_lname",c);
	   	    	request.setAttribute("u_hackd",h_daily);
	   	    	request.setAttribute("u_hackt",h_total);
	   	    	request.setAttribute("u_code_d",c_daily);
	   	    	request.setAttribute("u_codet",c_total);
	   	    	RequestDispatcher rd=request.getRequestDispatcher("disp.jsp");
	   	    	rd.forward(request,response);
	   	    	flag=true;
	   	     }
	   	    
		 }
		 catch(Exception e){
		   		 System.out.println(e);}
		if(flag==false)
		{
		//	 HttpSession session=request.getSession();
    		 
			response.sendRedirect("videos.jsp");
		}
			
		   
		
		
			
		
	}

}
