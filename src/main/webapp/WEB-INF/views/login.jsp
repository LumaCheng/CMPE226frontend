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
        <h2>Login / Sign up</h2>

          <form:form id="loginForm"  modelAttribute="user" action="loginProcess" method="post">
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
          <button class="signup-btn" class="signupbtn">Sign Up</button>
		  <br>
		  <br>
          <h4 style="color:Tomato;">${message}</h4>

  </div>
</section>


</body>
</html>
