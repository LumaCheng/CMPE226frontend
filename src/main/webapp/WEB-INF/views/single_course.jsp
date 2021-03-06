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
					<a href="login" class="site-btn header-btn" id = "account">Login</a>
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
	document.getElementById("showuser").innerHTML = cookieuser;
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




	<!-- single course section -->
	<section class="single-course spad pb-0">
		<div class="container">
			<div class="course-meta-area">
				<div class="row">
					<div class="col-lg-10 offset-lg-1">
						<div class="course-note">Featured Course</div>
						<h3>${course.coursename}</h3>
						<div class="course-metas">
<!-- 							<div class="course-meta">
								<div class="course-author">
									<h6>Teacher</h6>
									<p>William Parker, <span>Developer</span></p>
								</div>
							</div>
							<div class="course-meta">
								<div class="cm-info">
									<h6>Category</h6>
									<p>Development</p>
								</div>
							</div> -->
 							<div class="course-meta">
								<div class="cm-info">
									<h6>ID</h6>
									<p>${course.ID}</p>
								</div>
							</div> 
							<div class="course-meta">
								<div class="cm-info">
									<h6>Session</h6>
									<p>${course.session}</p>
								</div>
							</div>
							<div class="course-meta">
								<div class="cm-info">
									<a href="reviews">See Course's Ratings</a>									
								</div>
							</div>
							<div class="course-meta">
								<div class="cm-info">
									<a href="homework">See Course's Homework</a>									
								</div>
							</div>
							<br>
							<br>
						</div>
						<a href="#" class="site-btn price-btn">Enroll</a>
						<br><br>
						<iframe width="560" height="315" src="https://www.youtube.com/embed/v4oN4DuR7YU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						
					</div>
				</div>			
			</div>
			<br>
			

			<div class="row">
				<div class="col-lg-10 offset-lg-1 course-list">
					<div class="cl-item">
						<h4>Course Description</h4>
						<p>${course.description}</p>
					</div>
<!-- 					<div class="cl-item">
						<h4>Certification</h4>
						<p>Phasellus sollicitudin et nunc </p>
					</div>
					<div class="cl-item">
						<h4>The Instructor</h4>
						<p>Sed ligula nulla</p>
				    </div> -->
				</div>
			</div>
		</div>
	</section>

	<!-- single course section end -->
	<section class="search-section">	
		<div class="container">
			<div class="course-meta-area">
				<div class="row">
					<div class="col-lg-10 offset-lg-1">
						<div class="course-metas">
							<h5 style="color:#C55F5F;">Ask questions:</h5>
							<p id="showuser">Guess</p>
							<form action="/action_page.php">
						 	  <textarea name="question" rows="3" cols="80">
						 	  </textarea><br>
							  <input type="submit" value="Submit">
							</form>
						</div>
						<br><br>
						<div class="course-metas">
							<c:if test="${questionlist != null}">
							    <table>
							    		<tr>
								    		<th>Title</th>
								    		<th>Content</th>
								    		<th>Post_date</th>
								    		<th>Reply</th>
								    		<th>Reply_date</th>
							    		</tr> 
							        <c:forEach var="q" items="${questionlist}">
							            <tr>
							                <td>${q.title}</td>
							                <td>${q.content}</td>
							                <td>${q.date}</td>
							                <td>${q.reply}</td>
 							                <td>${q.rdate}</td>
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
