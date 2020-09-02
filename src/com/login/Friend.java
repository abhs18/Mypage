package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.logdao.Ldao;


@WebServlet("/Friend")
public class Friend extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session=request.getSession();
		 String my_id=(String)session.getAttribute("username");
	     String f_id=request.getParameter("uid");	
	     Ldao obj=new Ldao();
	     obj.addf(my_id,f_id);
	    response.sendRedirect("welcome.jsp");
}
}