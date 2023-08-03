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
		<!--  navbar -->
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
							href="#section_1">Home</a></li>

						<li class="nav-item"><a class="nav-link click-scroll"
							href="Hackerrank.jsp">HackerRank Solutions</a></li>

						<li class="nav-item"><a class="nav-link click-scroll"
							href="CodeChef.jsp">CodeChef Solutions</a></li>

						<li class="nav-item"><a class="nav-link click-scroll"
							href="Leetcode.jsp">LeetCode Solutions</a></li>

						<li class="nav-item"><a class="nav-link click-scroll"
							href="InterviewBit.jsp">InterviewBit Solutions</a></li>

						<li class="nav-item"><a class="nav-link click-scroll"
							href="Geeks.jsp">GeeksForGeeks Solutions</a></li>

						<li class="nav-item"><a class="nav-link click-scroll"
							href="#section_6">Contact</a></li>

						<li class="nav-item"><a class="nav-link click-scroll"
							href="#section_2">About Us</a></li>

					</ul>

					<a href="Login.jsp" class="btn custom-btn d-lg-block d-none">Login</a>
				</div>
			</div>
		</nav>
		<!-- video and footer tag -->
		<section class="hero-section" id="section_1">
			<div class="section-overlay"></div>

			<div
				class="container d-flex justify-content-center align-items-center">
				<div class="row">

					<div class="col-12 mt-auto mb-5 text-center">
						<small>Begin your coding journey with</small>

						<h1 class="text-white mb-5">LazyCoderz</h1>

						<a class="btn custom-btn smoothscroll" href="Register.jsp">Let's
							begin</a>
					</div>

					<div
						class="col-lg-12 col-12 mt-auto d-flex flex-column flex-lg-row text-center">
						<div class="date-wrap">
							<h5 class="text-white">
								<i class="custom-icon bi-clock me-2"></i> 18<sup>th</sup> March,
								2023
							</h5>
						</div>

						<div class="location-wrap mx-auto py-3 py-lg-0">
							<h5 class="text-white">
								<i class="custom-icon bi-geo-alt me-2"></i> Chennai, India
							</h5>
						</div>

						<div class="social-share">
							<ul
								class="social-icon d-flex align-items-center justify-content-center">
								<span class="text-white me-3">Follow Us:</span>

								<li class="social-icon-item"><a href="#"
									class="social-icon-link"> <span class="bi-facebook"></span>
								</a></li>

								<li class="social-icon-item"><a href="#"
									class="social-icon-link"> <span class="bi-twitter"></span>
								</a></li>

								<li class="social-icon-item"><a
									href="C:\Users\Dell\OneDrive\Desktop\icons\instagram.png"
									class="social-icon-link"> <span class="bi-instagram"></span>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="video-wrap">
				<video autoplay="" loop="" muted="" class="custom-video" poster="">
					<source src="video/atoms-1.mp4" type="video/mp4">
				</video>
			</div>
		</section>
		<section class="about-section section-padding" id="section_2">
			<div class="container">
				<div class="row">

					<div class="col-lg-6 col-12 mb-4 mb-lg-0 d-flex align-items-center">
						<div class="services-info">
							<h2 class="text-white mb-4">About Lazycoderz</h2>

							<p class="text-white">Lazycoders in a platform where young
								coders and programmers can help themselves and their fellow
								friends who are facing difficulties in solving complex problems.</p>

							<h6 class="text-white mt-4">Discuss your doubts with experts
							</h6>

							<p class="text-white">You can discuss all your doubts and
								errors in your codes with the advanced coders.</p>

							<h6 class="text-white mt-4">If you like us</h6>

							<p class="text-white">Please tell your friends about this
								website. Thank you.</p>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="contact-section section-padding" id="section_6">
			<div class="container">
				<div class="row">

					<div class="col-lg-8 col-12 mx-auto">
						<h2 class="text-center mb-4">Any Query? Contact Us</h2>

						<nav class="d-flex justify-content-center">
							<div
								class="nav nav-tabs align-items-baseline justify-content-center"
								id="nav-tab" role="tablist">
								<button class="nav-link active" id="nav-ContactForm-tab"
									data-bs-toggle="tab" data-bs-target="#nav-ContactForm"
									type="button" role="tab" aria-controls="nav-ContactForm"
									aria-selected="false">
									<h5>Contact Form</h5>
								</button>
							</div>
						</nav>

						<div class="tab-content shadow-lg mt-5" id="nav-tabContent">
							<div class="tab-pane fade show active" id="nav-ContactForm"
								role="tabpanel" aria-labelledby="nav-ContactForm-tab">
								<form class="custom-form contact-form mb-5 mb-lg-0" action="SendEmail"
									method="post" role="form">
									<div class="contact-form-body">
										<div class="row">
											<div class="col-lg-6 col-md-6 col-12">
												<input type="text" name="name" id="name"
													class="form-control" placeholder="Full name" required>
											</div>

											<div class="col-lg-6 col-md-6 col-12">
												<input type="email" name="email" id="email"
													pattern="[^ @]*@[^ @]*" class="form-control"
													placeholder="Email address" required>
											</div>
										</div>

										<input type="text" name="company" id="company"
											class="form-control" placeholder="Company" required>

										<textarea name="message" rows="3" class="form-control"
											id="message" placeholder="Message"></textarea>

										<div class="col-lg-4 col-md-10 col-8 mx-auto">
											<button type="submit" value="Submit" class="form-control">Send
												Feedback</button>
										</div>
									</div>
								</form>
							</div>

						</div>
					</div>

				</div>
			</div>
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
							About the Author: <a href="https://themewagon.com">AryaSimplex</a>
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


</body>
</html>

