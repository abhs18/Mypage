<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>404 error</title>
<link href="${pageContext.request.contextPath}/Coder'Stack_Logo_img.png?" type="image" rel="icon" >
<style>
@import url('"https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@600;900&display=swap');
</style>
<link href="${pageContext.request.contextPath}/error.css" rel="stylesheet" >
 <script src="https://kit.fontawesome.com/4b9ba14b0f.js" crossorigin="anonymous"></script>
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("username")==null)
	response.sendRedirect("login.jsp");

%>
<div class="mainbox">
    <div class="err">4</div>
    <i class="far fa-question-circle fa-spin"></i>
    <div class="err2">4</div>
    <div class="msg">User does not exist<p>Let's go <a href="welcome.jsp">back</a> and search aother user.</p></div>
      </div>
<!--<h1 style="color:red;text-align:center;">user not found</h1>
 <iframe width="560" height="315" src="https://www.youtube.com/embed/tionpZAVPd4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
-->
</body>
</html>