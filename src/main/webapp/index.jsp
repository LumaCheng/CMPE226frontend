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

					<a href="login" class="site-btn header-btn" id="account" >Login</a>
					<nav class="main-menu">
						<ul>
							<li><a href="index.jsp">Home</a></li>
							<li><a href="courses">Courses</a></li>
							<li><a href="#">About us</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
<!-- Header section end -->
<section class="hero-section">
  <div class="hero-image">
    <div class="hero-text">
      <h1>The best online learning online platform</h1>
    </div>
  </div>
</section>


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
<section class="search-section">
  <div class="container center">
      <h2>Search course</h2>
      <div class="row">
        <div class="col-md-10  offset-md-1">
          <!-- search form -->
          <form id="searchform" action="search" method="post">
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

<!-- categories section -->
<section class="categories-section spad">
  <div class="container">
    <div class="section-title">
      <h2>Our Course Categories</h2>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada lorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. Suspendisse cursus faucibus finibus.</p>
    </div>
    <div class="row">
      <!-- categorie -->
      <div class="col-lg-4 col-md-6">
        <div class="categorie-item">
          <div class="ci-thumb set-bg" data-setbg="img/categories/1.jpg"></div>
          <div class="ci-text">
            <h5>IT Development</h5>
            <p>Lorem ipsum dolor sit amet, consectetur</p>
            <span>120 Courses</span>
          </div>
        </div>
      </div>
      <!-- categorie -->
      <div class="col-lg-4 col-md-6">
        <div class="categorie-item">
          <div class="ci-thumb set-bg" data-setbg="img/categories/2.jpg"></div>
          <div class="ci-text">
            <h5>Web Design</h5>
            <p>Lorem ipsum dolor sit amet, consectetur</p>
            <span>70 Courses</span>
          </div>
        </div>
      </div>
      <!-- categorie -->
      <div class="col-lg-4 col-md-6">
        <div class="categorie-item">
          <div class="ci-thumb set-bg" data-setbg="img/categories/3.jpg"></div>
          <div class="ci-text">
            <h5>Illustration & Drawing</h5>
            <p>Lorem ipsum dolor sit amet, consectetur</p>
            <span>55 Courses</span>
          </div>
        </div>
      </div>
      <!-- categorie -->
      <div class="col-lg-4 col-md-6">
        <div class="categorie-item">
          <div class="ci-thumb set-bg" data-setbg="img/categories/4.jpg"></div>
          <div class="ci-text">
            <h5>Social Media</h5>
            <p>Lorem ipsum dolor sit amet, consectetur</p>
            <span>40 Courses</span>
          </div>
        </div>
      </div>
      <!-- categorie -->
      <div class="col-lg-4 col-md-6">
        <div class="categorie-item">
          <div class="ci-thumb set-bg" data-setbg="img/categories/5.jpg"></div>
          <div class="ci-text">
            <h5>Photoshop</h5>
            <p>Lorem ipsum dolor sit amet, consectetur</p>
            <span>220 Courses</span>
          </div>
        </div>
      </div>
      <!-- categorie -->
      <div class="col-lg-4 col-md-6">
        <div class="categorie-item">
          <div class="ci-thumb set-bg" data-setbg="img/categories/6.jpg"></div>
          <div class="ci-text">
            <h5>Cryptocurrencies</h5>
            <p>Lorem ipsum dolor sit amet, consectetur</p>
            <span>25 Courses</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- categories section end -->

</body>
</html>
