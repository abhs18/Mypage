<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%-- <%@include file="/WebContent/style.css"%> --%>
<!DOCTYPE html>
  <html>
    <head>
      <meta charset="ISO-8859-1">
      <title>Log In</title>


      <%-- <link rel="stylesheet" href="../style.css" type="text/css"> --%>
      <link href="${pageContext.request.contextPath}/main.css" rel="stylesheet" >
    

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
