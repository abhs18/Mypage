<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%-- <%@include file="/WebContent/style.css"%> --%>
<!DOCTYPE html>
<html>
    <head>
      <meta charset="ISO-8859-1">
      <title>Log In</title>

      <%-- <link rel="stylesheet" href="../style.css" type="text/css"> --%>
      <style>
			   @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;1,100;1,200;1,400;1,500&display=swap');
      </style>
      <link href="${pageContext.request.contextPath}/main.css" rel="stylesheet" >
    </head>

    <body class="login-box">
      <h2>Get Started!</h2>
        <form action="Login" method="post">
            <div class="user-box">
                <input type="text" name="email" required="">
                <label>Email_id</label>
            </div>

            <div class="user-box">
                <input type="password" name="pass" required="">
                <label>Password</label>
            </div>

            <input class="loginBtn" type="submit" value="ENTER">
        </form>

    <a class="signupTxt" href="signup.jsp">Sign up</a>

    </body>
</html>
