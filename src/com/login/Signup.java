package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.logdao.Ldao;

@WebServlet("/Signup")
public class Signup extends HttpServlet
{
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String u_name=request.getParameter("uname");
		 String u_pass=request.getParameter("pass");
		 Ldao obj=new Ldao();
		 obj.insert(u_name, u_pass);
		 response.sendRedirect("login.jsp");
		
	}

}
