package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.logdao.Ldao;

@WebServlet("/Show")
public class Show extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String mail=(String)session.getAttribute("username");
		String query="select f_name,l_name,hac_daily,hac_total,code_daily,code_total from proj where email_id in\r\n" + 
				"(select f_mail from friend where my_mail="+(char)34 +mail+(char)34+")"+"or\r\n"+ 
				"email_id="+(char)34+mail+(char)34;
		
		 try {
	   		 Class.forName("com.mysql.jdbc.Driver");
	   		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhs","root","avrn@18131816");
	   		 Statement st=con.createStatement();
	   	     ResultSet rs=st.executeQuery(query);
	   	     
	   	     while(rs.next())
	   	     {
	   	    	
	   	    	 String b=rs.getString(1);
	   	    	 String c=rs.getString(2);
	   	    	 int h_daily=rs.getInt(3);
	   	    	 int h_total=rs.getInt(4);
	   	    	 int c_daily=rs.getInt(5);
	   	    	 int c_total=rs.getInt(6);
	   	    	//request.setAttribute();
	   	    	 System.out.println(b+" "+c+"\n"+h_daily+"\n"+h_total+"\n"+c_daily+"\n"+c_total);
	   	    	request.setAttribute("u_fname",b);
	   	    	request.setAttribute("u_lname",c);
	   	    	request.setAttribute("u_hackd",h_daily);
	   	    	request.setAttribute("u_hackt",h_total);
	   	    	request.setAttribute("u_code_d",c_daily);
	   	    	request.setAttribute("u_codet",c_total);
	   	    	RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
	   	    	rd.forward(request,response);
	   	    	
	   	     }
	   	     
	   	    st.close();
	   	    con.close();
	   	
	   	    
		 }
		 catch(Exception e){
		   		 System.out.println(e);}
	}

}
