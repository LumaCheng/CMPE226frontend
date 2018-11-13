<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<title>Sign up</title>
</head>
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
<body>
<!-- search section -->
<section class="login-section">
  <div class="container center">
        <h2>Sign up</h2>
        	<br>
        <form:form id="signupForm" modelAttribute="user" action="registerProcess" method="post">
        <table align ="center">
        <tr>
        	   <td>
           <form:label path="username">Username: </form:label>
           </td>
            <td>
           <form:input path="username" name="username" id="username" required = "required"/>
           </td>
		</tr>
		<tr>
			<td>
            <form:label path="password">Password: </form:label>
            </td>
             <td>
           <form:password path="password" name="password" id="password"  required = "required"/>
           </td>
		</tr>
		<tr>
		 	<td>
            <form:label path="email">Email: </form:label>
            </td>
             <td>
           <form:input path="email" name="email" id="email"  required = "required"/>
           </td>
		</tr>
		<tr>
		    <td>
        		<form:label path= "type">Type: </form:label>
        		</td>
        		<td>
			<form:radiobutton path= "type" name="student" id="student" label= "Student" checked = "checked"/>
			<form:radiobutton path= "type" name="instructor" id="instructor" label= "Instructor"/>
			<form:radiobutton path= "type" name="institute" id="institute" label= "Institute"/>
			</td>
		</tr>
         </table>
         <form:button id="register" name="register" class="site-btn">Register</form:button>
         <br><br>
         <a href="/springMVC">Home</a>
         </form:form>
  </div>
</section>
</body>
</html>