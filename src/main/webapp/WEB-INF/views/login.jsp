<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
</head>
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
<body>
<!-- search section -->
<section class="login-section">
  <div class="container center">
        <h2>Login</h2>

          <form:form id="loginForm"  modelAttribute="login" action="loginProcess" method="post">
            <br>
            <input type="text" placeholder="Enter Username" name="username" id = "username" required>
            <br>
            <br>
            <input type="password" placeholder="Enter Password" name="password" id = "password" required>
            <br>
            <br>
            <button class="site-btn">Login</button>
          </form:form>
          <br>
		  <p> If you haven't signed up, please signed up first.</p>
		  <a href="signup">Sign up</a>
		  <br>
		  <br>
          <h4 style="color:Tomato;">${message}</h4>

  </div>
</section>


</body>
</html>
