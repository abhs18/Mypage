<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%-- <%@include file="/WebContent/style.css"%> --%>
<!DOCTYPE html>
  <html>
    <head>
      <meta charset="ISO-8859-1">
      <title>Log In</title>

      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
      <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;1,100;1,200;1,400;1,500&display=swap" rel="stylesheet">
      <link rel="stylesheet" href="../style.css" type="text/css">

    </head>

    <body class="login-box">
      <h2>Login</h2>
    <form action="Login" method="post">
      <div class="user-box">
        <input type="text" name="uname" required="">
        <label>Username</label>
      </div>
      <div class="user-box">
        <input type="password" name="pass" required="">
        <label>Password</label>
      </div>
      <input class="loginBtn" type="submit" value="ENTER">
    </form>

    <a href="signup.jsp" style="color: #57BEA3 ; size: 20px; ">Sign up</a>


    </body>
</html>
