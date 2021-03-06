<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>LearningX</title>
</head>
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>

<body>
<!-- Header section -->
  <header class="header-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
          			<h2>Learning X</h2>
				</div>
				<div class="col-lg-9 col-md-9">
					<a href="login" class="site-btn header-btn" id= "account">Login</a>
					<nav class="main-menu">
						<ul>
							<li><a href="index.jsp">Home</a></li>
							<li><a href="courses.html">Courses</a></li>
							<li><a href="#">About us</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
<!-- Header section end -->

<p id="read" style="color:white;">C Paragraph</p>

<script src="resources/js/myScript.js"></script>
<script>
	var cookieuser = getCookie("username");

	document.getElementById("read").innerHTML = cookieuser;
	
	var link = document.getElementById("account");
	if(cookieuser != ""){	
		link.innerHTML = "Myaccount: " + cookieuser;
	    link.setAttribute('href', "logout");
	} else {
		link.innerHTML = "Login";
	    link.setAttribute('href', "login");
	}
</script>

<!-- search section -->
<section class="login-section">
  <div class="container center">
      <div class="row">
        <div class="col-md-10  offset-md-1">
          <!-- search form -->
          <form id="searchform" action="search" method="post" >
            <input type="text" name="name" placeholder="Enter course" required>
            <select name="type">
              <option value="title">title</option>
              <option value="series">series</option>
              <option value="category">category</option>
            </select>
            <button class="site-btn">Search Course</button>
          </form>
        </div>
      </div>
  </div>
</section>
<!-- search section end -->

	<section class="single-course spad pb-0">
		<div class="container">

			<div class="course-meta-area">
				<div class="course-meta offset-lg-2">
					<h4>Search Result</h4>
				</div>
				<br><br>
				<div class="row">
					<div class="col-lg-10 offset-lg-1">
						<div class="course-metas">
							<c:if test="${courselist != null}">
							    <table>
							    		<tr>
							    			<th>Course name</th>
							    			<th>Course ID</th>
							    			<th>Session</th>
							    			<th>Description</th>
							    		</tr>
							        <c:forEach var="c" items="${courselist}">
							            <tr>
							                <td>${c.coursename}</td>
							                <td>${c.ID}</td>
							                <td>${c.session}</td>
							                <td>${c.description}</td>
							            </tr>
							        </c:forEach>
							    </table>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


</body>
</html>
