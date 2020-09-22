<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%-- <%@include file="/WebContent/style.css"%> --%>
<!DOCTYPE html>
<html>
    <head>
      <meta charset="ISO-8859-1">
      <title>Coder'Stack</title>
    <link href="${pageContext.request.contextPath}/Coder'Stack_Logo_img.png?" type="image" rel="icon" >
      <%-- <link rel="stylesheet" href="../style.css" type="text/css"> --%>
      <style>
			   @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;1,100;1,200;1,400;1,500&display=swap');
      </style>
      <link href="${pageContext.request.contextPath}/main.css" rel="stylesheet" >
      <link href="${pageContext.request.contextPath}/ntwk.css" rel="stylesheet" >
      <script type="text/javascript">
      function validate()
      {
    	  var name=document.getElementById("text1").value;

    	  var regex=/^([a-zA-Z0-9]+)@gmail.com$/;
    	//var regex=/^[a-z]$/
    	  if(!regex.test(name))
    		  {
    		       alert("invalid email");
 		           return false;
    		  }
    	  else
    		  {
    		     return true;
    		  }


     }

      </script>
    </head>

    <body>
    <%
if(session.getAttribute("wrong_uname_pass") != null){
%>
<script>

alert("wrong user name or password");
</script>

<%
session.removeAttribute("wrong_uname_pass");
}

%>
      <div id="large-header" class="large-header">
        <img src="img/logo.png" class="MPlogoImg" alt="LogoImg">
        <canvas id="demo-canvas"></canvas>
        <div class="login-box">
          <h2>Get Started!</h2>
          <form  onsubmit=" return validate()" action="Login" method="post">
            <div class="user-box">
              <input id="text1" type="text" name="email" required="">
              <label>Email</label>
             <!--  <label id="eid" style="color:red;visibility:hidden">invalid</label>-->
            </div>
            <div class="user-box">
              <input type="password" name="pass" required="">
              <label>Password</label>
            </div>
            <input class="loginBtn" type="submit" value="ENTER">
          </form>
          <a class="signupTxt" href="signup.jsp">Sign up</a>
        </div>
      </div>


      <script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.0/TweenMax.min.js"></script>
      <script type="text/javascript" src="ntwk.js"></script>

    </body>
</html>
