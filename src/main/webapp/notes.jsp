<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description" content="">
<meta name="author" content="">

<title>LazyCoderz</title>


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">


<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;400;700&display=swap"
	rel="stylesheet">

<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="css/bootstrap-icons.css" rel="stylesheet">

<link href="css/templatemo-festava-live.css" rel="stylesheet">

<style>
.navbar-bg-navy {
	background-color: #09091B;
}

.dropdown-menu {
	background-color: #09091B;
}

.dropdown-item {
	color: #FFFAFA;
}

.dropdown-item:hover, .dropdown-item:focus {
	background-color: #ffc107;
	color: #FF4500;
}
</style>

</head>
<body>
	<main>
		<header class="site-header">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-12 d-flex flex-wrap">
						<p class="d-flex me-4 mb-0">
							<i class="bi-person custom-icon me-2"></i> <strong
								class="text-dark">Welcome to LazyCoderz</strong>
						</p>
					</div>

				</div>
			</div>
		</header>

		<nav class="navbar navbar-expand-lg navbar-bg-navy">
			<div class="container">
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav align-items-lg-center ms-auto me-lg-5">
						<li class="nav-item"><a class="nav-link click-scroll"
							href="Welcome.jsp">Home</a></li>

						<li class="nav-item"><a class="nav-link click-scroll"
							href="#section_6">Contact</a></li>

						<li class="nav-item"><a class="nav-link click-scroll"
							href="#section_2">About Us</a></li>

					</ul>
					<a href="Login.jsp" class="btn custom-btn d-lg-block d-none">Login</a>
				</div>
			</div>
		</nav>

		<section>
			<form action="topic.jsp" method="get">
				<label for="topic">Select a Topic:</label> <select name="topic"
					id="topic">
					<option value="math">Math</option>
					<option value="science">Science</option>
				</select> <input type="submit" value="View Notes">
			</form>
		</section>
	</main>

	<footer class="site-footer">
		<div class="site-footer-top">
			<div class="container">
				<div class="row">

					<div class="col-lg-6 col-12">
						<h2 class="text-white mb-lg-0">LazyCoderz</h2>
					</div>

					<div
						class="col-lg-6 col-12 d-flex justify-content-lg-end align-items-center">
						<ul class="social-icon d-flex justify-content-lg-end">
							<li class="social-icon-item"><a
								href="https://www.linkedin.com/in/aman-arya-92ba80178/"
								class="social-icon-link"> <span class="bi-linkedin"></span>
							</a></li>

							<li class="social-icon-item"><a href="#"
								class="social-icon-link"> <span class="bi-twitter"></span>
							</a></li>

							<li class="social-icon-item"><a href="#"
								class="social-icon-link"> <span class="bi-instagram"></span>
							</a></li>

							<li class="social-icon-item"><a href="#"
								class="social-icon-link"> <span class="bi-youtube"></span>
							</a></li>

							<li class="social-icon-item"><a href="#"
								class="social-icon-link"> <span class="bi-pinterest"></span>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">

				<div class="col-lg-6 col-12 mb-4 pb-2">
					<h5 class="site-footer-title mb-3">Links</h5>

					<ul class="site-footer-links">
						<li class="site-footer-link-item"><a href="#"
							class="site-footer-link">Home</a></li>

						<li class="site-footer-link-item"><a href="#"
							class="site-footer-link">About</a></li>

						<li class="site-footer-link-item"><a href="#"
							class="site-footer-link">Contact</a></li>

						<li class="site-footer-link-item"><a href="#"
							class="site-footer-link">Support</a></li>

					</ul>
				</div>

				<div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
					<h5 class="site-footer-title mb-3">Have a question?</h5>

					<p class="text-white d-flex mb-1">
						<a href="tel: 090-080-0760" class="site-footer-link">
							090-080-0760 </a>
					</p>

					<p class="text-white d-flex">
						<a href="mailto:hello@company.com" class="site-footer-link">
							help-me@company.com </a>
					</p>
				</div>
			</div>
		</div>

		<div class="site-footer-bottom">
			<div class="container">
				<div class="row">

					<div class="col-lg-3 col-12 mt-5">
						<p class="copyright-text">Copyright © 2036 LazyCoderz_Company</p>
						<p class="copyright-text">
							About the Author: <a href="Portfolio/portfolio.jsp">AryaSimplex</a>
						</p>
					</div>

					<div class="col-lg-8 col-12 mt-lg-5">
						<ul class="site-footer-links">
							<li class="site-footer-link-item"><a href="#"
								class="site-footer-link">Terms &amp; Conditions</a></li>

							<li class="site-footer-link-item"><a href="#"
								class="site-footer-link">Privacy Policy</a></li>

							<li class="site-footer-link-item"><a href="#"
								class="site-footer-link">Your Feedback</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/click-scroll.js"></script>
	<script src="js/custom.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>

