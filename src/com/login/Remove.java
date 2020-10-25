package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.logdao.Ldao;

/**
 * Servlet implementation class Remove
 */
@WebServlet("/Remove")
public class Remove extends HttpServlet {
	
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		 String my_id=(String)session.getAttribute("username");
	     String f_id=request.getParameter("uid");	
	     Ldao obj=new Ldao();
	    // if(obj.checkfriend(my_id,f_id));
	     obj.delf(my_id,f_id);
	  response.sendRedirect("welcome.jsp");
}
}