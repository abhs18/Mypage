<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <link rel="stylesheet" href="style.css">
<title>Insert title here</title>
</head>
<body bgcolor="cyan">
<form action="Login" method="post">
      <div class="user-box">
        <input type="text" name="uname" required="">
        <label>Username</label>
      </div>
      <div class="user-box">
        <input type="password" name="pass" required="">
        <label>Password</label>
      </div>

<input type="submit" value="login">
</form>
<form action="signup.jsp">
<input type="submit" value="signup">
</form>
</body>
</html>
