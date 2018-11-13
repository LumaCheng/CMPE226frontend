<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<section class="categories-section">
  <div class="container">
  	<h4> Show Search Result</h4>
  </div>
  <c:if test="${not empty objects}">
    <table>
        <c:forEach var="o" items="${objects}">
            <tr>
                <td>${o.id}</td>
                <td>${o.name}</td>
                <td>${o.descriptio}</td>
            </tr>
        </c:forEach>
    </table>
  </c:if>
</section>

</body>
</html>
