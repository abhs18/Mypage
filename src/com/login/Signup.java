package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.logdao.Ldao;
@WebServlet("/Signup")
public class Signup extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String u_mail=request.getParameter("email");
		 String u_pass=request.getParameter("pass");
		 String u_fname=request.getParameter("fname");
		 String u_lname=request.getParameter("lname");
		
		 Ldao obj=new Ldao();
		 obj.insert(u_mail, u_pass,u_fname,u_lname);
		 response.sendRedirect("login.jsp");
		
	}

}
