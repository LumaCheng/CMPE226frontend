<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
      <h4 style="color:#878787;">Welcome ${username} !</h4>
		<br><br>
      <a href="/springMVC"  align = "center">Home</a>
      <br>
  </div>
</section>


<script src="resources/js/myScript.js"></script>
<script>
	var user = "${username}";
	createCookie("username", user, 1); 
</script>





</body>
</html>
