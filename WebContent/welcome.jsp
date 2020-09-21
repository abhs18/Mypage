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
      <title>Coder'Stack</title>

      <link href="${pageContext.request.contextPath}/img/mdb-favicon.ico" type="image/x-icon" rel="icon" >
      <style>
        @import url('https://use.fontawesome.com/releases/v5.11.2/css/all.css');
        @import url('https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap');
      </style>
      <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" >
      <link href="${pageContext.request.contextPath}/css/mdb.min.css" rel="stylesheet" >
      <link href="${pageContext.request.contextPath}/css/addons/datatables.min.css" rel="stylesheet" >
      <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" >
    </head>

    <body>

      <%
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        if(session.getAttribute("username")==null)
  	      response.sendRedirect("login.jsp");
        String mail=(String)session.getAttribute("username");
      %>
<%
       // String mail=(String)session.getAttribute("username");


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
       <%
        try{
        	  con= DriverManager.getConnection("jdbc:mysql://localhost:3306/abhs","root","avrn@18131816");
        	  Statement st3=con.createStatement();
        	  String q3="select f_name,hac_total,code_total from proj where email_id="+(char)34+mail+(char)34;
        	  ResultSet rs3=st3.executeQuery(q3);
        	  rs3.next();
      %>
      <img src="img/logo.png" class="logoImg" alt="Logo">
      <h1 class="headerstyle"> Welcome! <em><%=rs3.getString(1)%></em>,</h1>

      <div class="searchMail">
        <form action="Search" method="post">
          <input type="text" placeholder="Add New Friend" name="id" id="searchemailid">&nbsp &nbsp
          <input type="submit" id="searchemailidBTN" value="Search">

        </form>
      </div>

      <div class="rectangle"> </div>
      <div class="userScore">
        <h2>YOUR SCORE:</h2>
        <h4>HackerRank:<%=rs3.getString(2)%>  <br><br>
        CodeChef: <%=rs3.getString(3)%></h4>
      </div>
      <h2 class="hdAddBox">ENTER NEW SCORE!</h2>
      <div class="searchBox">
      <form action="Update_val" method="post">
        <input type="text" placeholder="hackerrank today score" name="hack" id="scoreUpdt"><br><br />
        <input type="text" placeholder="codechef today score" name="code" id="scoreUpdt"><br><br />
        <input type="submit" value="ENTER" id="scoreupdtBTN">
      </form>
      <br /><br />
    </div>

<%
        st3.close();
        con.close();
      }
      catch(Exception e){
		      System.out.println(e);}
      %>


      <table  id="dtBasicExample" class="table table-striped table-bordered table-sm tbprp" cellspacing="0" width="100%">
        <thead>
          <tr class="trx">
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
        <input type="submit" value="Logout" class="logoutBTN">
      </form>

      <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/popper.min.js"></script>

      <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

      <script type="text/javascript" src="${pageContext.request.contextPath}/js/mdb.min.js"></script>

      <script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/addons/datatables.min.js"></script>


</body>
</html>
