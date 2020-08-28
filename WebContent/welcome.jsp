<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("username")==null)
	response.sendRedirect("login.jsp");

%>
<h1>
Welcome ${username}
</h1>
<form action="Update_val" method="post">
Enter hackerrank today score:<input type="text" name="hack"><br>
Enter codechef today score:<input type="text" name="code"><br>
<input type="submit" value="ENTER">

</form>
<a href="videos.jsp">Videos</a>>
<form action="Logout" method="post">
<input type="submit" value="Logout">
</form>
</body>
</html>