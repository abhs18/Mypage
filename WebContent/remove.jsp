<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User found</title>
<link href="${pageContext.request.contextPath}/Coder'Stack_Logo_img.png?" type="image" rel="icon" >
<style>
 @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;1,100;1,200;1,400;1,500&display=swap');
 </style>
 <link href="${pageContext.request.contextPath}/main.css" rel="stylesheet" >
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("username")==null)
	response.sendRedirect("login.jsp");
String mail=(String)session.getAttribute("username");
String uid=(String)request.getAttribute("uid");
//System.out.println("mail is:"+mail);
//System.out.println("uid is:"+uid);
if(uid.equals(mail))
	response.sendRedirect("welcome.jsp");
%>
<h1 style="color:powderblue;">
USER FOUND<br>
${uid}<br>
${u_fname}
${u_lname}<br>
</h1>
<table style="color:powderblue;">
  <tr>
    <th>Hackerrank today score</th>
    <th>Hackerrank total score</th>
    <th>Codechef today score</th>
    <th>Codechef total score</th>
  </tr>
  <tr>
    <td>${u_hackd}</td>
    <td>${u_hackt}</td>
    <td>${u_code_d}</td>
    <td>${u_codet}</td>
  </tr>
 </table>


<form action="Remove" method="post">
<button type="submit" id="btn"  value=${uid} name="uid" >REMOVE FRIEND</button>
</form>


</body>
</html>