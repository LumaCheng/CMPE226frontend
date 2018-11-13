<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<title>Logout</title>
</head>
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
<body>
<!-- search section -->
<section class="login-section">
  <div class="container center">
        <h2>Logout</h2>
        <form action="index.jsp">
        		<button class="site-btn" onclick= "eraseCookie('username')">Logout</button>
        </form>
		<script src="resources/js/myScript.js"></script>

  </div>
</section>


</body>
</html>
