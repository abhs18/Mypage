<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Sign UP</title>
        <link href="${pageContext.request.contextPath}/img/Coder'Stack_Logo_img.png" type="image" rel="icon">
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
      <div id="large-header" class="large-header">
        <canvas id="demo-canvas">
        </canvas>

        <div class="signup-box">
        <h2>Creating New Account!</h2>
        <form  onsubmit=" return validate()" action="Signup" method="post">
            <div class="sb-user-box">
                <input id ="text1" type="text" name="email" required="">
                <label>Enter Email id</label>
            </div>

            <div class="sb-user-box">
                <input type="text" name="fname" required="">
                <label> Enter First Name</label>
            </div>
            <div class="sb-user-box">
                <input type="text" name="lname" required="">
                <label> Enter Last Name</label>
            </div>
            <div class="sb-user-box">
                <input type="password" name="pass" required="">
                <label>Choose Your Password</label>
            </div>
            <a class="signinTxt" href="login.jsp">Already have an Account? </a> &nbsp &nbsp &nbsp
            <input class="signupBtn" type="submit" value="SUBMIT">
          </form>
      </div>
    </div>


        <script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.0/TweenMax.min.js"></script>
        <script type="text/javascript" src="ntwk.js"></script>
    </body>
</html>
