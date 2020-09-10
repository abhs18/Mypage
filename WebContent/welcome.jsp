<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
      <title>Welcome</title>
 <%-- <style>
 @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;1,100;1,200;1,400;1,500&display=swap');
 </style> --%>
 <%-- <link href="${pageContext.request.contextPath}/main.css" rel="stylesheet" > --%>
      <link href="${pageContext.request.contextPath}/img/mdb-favicon.ico" type="image/x-icon" rel="icon" >
      <style>
        @import url('https://use.fontawesome.com/releases/v5.11.2/css/all.css');
        @import url('https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap');
      </style>
      <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" >
      <link href="${pageContext.request.contextPath}/css/mdb.min.css" rel="stylesheet" >
      <link href="${pageContext.request.contextPath}css/addons/datatables.min.css" rel="stylesheet" >
    </head>

    <body>

      <%
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        if(session.getAttribute("username")==null)
  	      response.sendRedirect("login.jsp");
      %>

      <h1 style="text-align:left; padding-left:100px; color:powderblue;"> Welcome ${username} </h1>

      <div class="serchBox">
        <form action="Update_val" method="post">
          <input type="text" placeholder="hackerrank today score" name="hack"><br>
          <input type="text" placeholder="codechef today score" name="code"><br>
          <input type="submit" value="ENTER">
        </form>

        <form action="Search" method="post">
          <input type="text" placeholder="Search email id" name="id">
          <input type="submit" value="Enter">
        </form>
        <a href="videos.jsp">Videos</a>
      </div>

      <%
        String mail=(String)session.getAttribute("username");

        try {
          Class.forName("com.mysql.jdbc.Driver");
        }
        catch (Exception e) {
	         System.out.println(e);
        }
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
      %>

      <table  id="dtBasicExample" class="table table-striped table-bordered table-sm tbprp" cellspacing="0" width="70%">
        <thead>
          <tr>
            <th class="th-sm">First Name</th>
            <th class="th-sm">Last Name</th>
            <th class="th-sm">Hackerrank today score</th>
            <th class="th-sm">Hackerrank total score</th>
            <th class="th-sm">Codechef today score</th>
            <th class="th-sm">Codechef total score</th>
          </tr>
        </thead>

      <%
        try{
        	  con= DriverManager.getConnection("jdbc:mysql://localhost:3306/abhs","root","avrn@18131816");
        	  Statement st1=con.createStatement();
        	  String query1="select f_name,l_name,hac_daily,hac_total,code_daily,code_total from proj where email_id="+(char)34+mail+(char)34;
        	  ResultSet rs1=st1.executeQuery(query1);
        	  rs1.next();
      %>
      <tbody>
      <tr>
        <td><%=rs1.getString(1)%></td>
        <td><%=rs1.getString(2)%></td>
        <td><%=rs1.getInt(3)%></td>
        <td><%=rs1.getInt(4)%></td>
        <td><%=rs1.getInt(5)%></td>
        <td><%=rs1.getInt(6)%></td>
      </tr>

      <%
        st1.close();
        con.close();
      }
      catch(Exception e){
		      System.out.println(e);}
      %>

      <%
      try{
	       con= DriverManager.getConnection("jdbc:mysql://localhost:3306/abhs","root","avrn@18131816");
	       st=con.createStatement();

	       String query="select f_name,l_name,hac_daily,hac_total,code_daily,code_total from proj where email_id in\r\n" + "(select f_mail from friend where my_mail="+(char)34 +mail+(char)34+")";
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
      </tbody>
      </table>

      <form action="Logout" method="post">
        <input type="submit" value="Logout">
      </form>

      <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/popper.min.js"></script>

      <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

      <script type="text/javascript" src="${pageContext.request.contextPath}/js/mdb.min.js"></script>

      <script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/addons/datatables.min.js"></script>


</body>
</html>
