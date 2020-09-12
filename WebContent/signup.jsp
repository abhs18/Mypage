<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Sign UP</title>
        <style>
  			   @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;1,100;1,200;1,400;1,500&display=swap');
        </style>
        <link href="${pageContext.request.contextPath}/main.css" rel="stylesheet" >
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

    <body class="signup-box">
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
            <input class="signupBtn" type="submit" value="SUBMIT">
        </form>
    </body>
</html>
