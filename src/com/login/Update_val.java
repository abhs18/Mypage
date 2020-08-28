package com.login;
import com.logdao.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Update_val")
public class Update_val extends HttpServlet
{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session=request.getSession();
		String mail=(String)session.getAttribute("username");
		int hack=Integer.parseInt(request.getParameter("hack"));
		int code=Integer.parseInt(request.getParameter("code"));
		System.out.print(mail);
		Ldao obj=new Ldao();
		obj.update(hack, code, mail);
		response.sendRedirect("welcome.jsp");
	}

}
