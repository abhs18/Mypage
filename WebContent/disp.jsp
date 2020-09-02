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
FOUND<br>
${uid}<br>
${u_fname}
${u_lname}<br>
</h1>
<table>
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

<form action="Friend" method="post">
<button type="submit"  value=${uid} name="uid">ADD FRIEND</button>
</form>
</body>
</html>