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
					<a href="login" class="site-btn header-btn">Login</a>
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

<!-- search section -->
<section class="login-section">
  <div class="container center">
      <div class="row">
        <div class="col-md-10  offset-md-1">
          <!-- search form -->
          <form action="" method="post">
            <input type="text" name="name" placeholder="Enter course" >
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
</section>

</body>
</html>
