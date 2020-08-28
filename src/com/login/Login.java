package com.login;

import java.io.IOException;
import java.sql.*;
import java.sql.DriverManager;
import com.logdao.Ldao;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 String email=request.getParameter("email");
	 String pass=request.getParameter("pass");
	 Ldao obj=new Ldao();
      	 if(obj.check(email,pass))
      	 {
      		 HttpSession session=request.getSession();
    		 session.setAttribute("username",email);
    		 response.sendRedirect("welcome.jsp");
          }
      	 else
      	 {
      		response.sendRedirect("login.jsp");
      		System.out.println("sahi daalo");
      	 }


	}



}
