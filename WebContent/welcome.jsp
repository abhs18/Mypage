<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.logdao.Ldao"%>
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
<form action="Search" method="post">
Search email id:<input type="text" name="id">
<input type="submit" value="Enter">
</form>
<a href="videos.jsp">Videos</a>

<%
String mail=(String)session.getAttribute("username");

try {
Class.forName("com.mysql.jdbc.Driver");
} catch (Exception e) {
	System.out.println(e);
}
Connection con = null;
Statement st = null;
ResultSet rs = null;
%>
<table border="1">
  <tr>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Hackerrank today score</th>
    <th>Hackerrank total score</th>
    <th>Codechef today score</th>
    <th>Codechef total score</th>
  </tr>
  <%
  try{
	  con= DriverManager.getConnection("jdbc:mysql://localhost:3306/abhs","root","avrn@18131816");
	  st=con.createStatement();
	  String query="select f_name,l_name,hac_daily,hac_total,code_daily,code_total from proj where email_id in\r\n" + 
				"(select f_mail from friend where my_mail="+(char)34 +mail+(char)34+")"+"or\r\n"+ 
				"email_id="+(char)34+mail+(char)34;	  
	  rs= st.executeQuery(query);
	  while(rs.next())
	  {
  %>
  <tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getInt(3)%></td>
<td><%=rs.getInt(4)%></td>
<td><%=rs.getInt(5)%></td>
<td><%=rs.getInt(6)%></td>
</tr>
<%
	  }
  st.close();
con.close();
  }
  catch(Exception e){
		 System.out.println(e);}
%>
  </table>
<form action="Logout" method="post">
<input type="submit" value="Logout">
</form>
</body>
</html>