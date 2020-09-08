<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#0A2C38">
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("username")==null)
	response.sendRedirect("login.jsp");

%>
<h1 style="color:red;text-align:center;">user not found</h1>
<!-- <iframe width="560" height="315" src="https://www.youtube.com/embed/tionpZAVPd4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
--></body>
</html>