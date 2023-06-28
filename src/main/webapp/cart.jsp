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

<!-- CSS -->
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

<link rel="stylesheet" type="text/css" href="flow.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">


<style>
.navbar-bg-navy {
	background-color: #09091B;
}

.dropdown-menu {
	background-color: #09091B;
}

.dropdown-item {
	color: #FFFAFA; /* Change the text color on hover */
}

.dropdown-item:hover, .dropdown-item:focus {
	background-color: #ffc107;
	/* Change the background color on hover and focus */
	color: #FF4500; /* Change the text color on hover and focus */
}

.site-header {
	background-color: #0000000;
}

.dynamic-sentence {
	text-align: center;
	margin: 20px auto;
}

.dynamic-sentence p {
	display: inline-block;
	white-space: nowrap;
	overflow: hidden;
	animation: typing-animation 4s steps(40) forwards;
	font-weight: bold;
	font-size: 24px;
}

@
keyframes typing-animation { 0% {
	width: 0;
}

100




%
{
width




:




100




%;
}
}
.course-purchase {
	background-color: #f7f7f7;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	text-align: center;
}

.purchase-header {
	margin-bottom: 20px;
}

.purchase-header h3 {
	font-size: 24px;
	font-weight: bold;
}

.purchase-form {
	display: flex;
	flex-direction: column;
	align-items: center;
}

.form-group {
	margin-bottom: 15px;
}

.form-group label {
	display: block;
	font-size: 14px;
	font-weight: bold;
	margin-bottom: 5px;
	text-align: left;
}

.form-group input {
	width: 300px;
	height: 40px;
	padding: 8px;
	font-size: 16px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.form-row {
	display: flex;
	justify-content: space-between;
}

.form-row .form-group {
	width: 45%;
}

.purchase-button {
	width: 150px;
	height: 40px;
	background-color: #3498db;
	color: #fff;
	font-size: 16px;
	font-weight: bold;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.purchase-button:hover {
	background-color: #2980b9;
}

.course-purchase label i {
	margin-left: 5px;
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
		<!--  linking tag -->
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
							href="purchase.jsp">Back</a></li>


						<li class="nav-item"><a class="nav-link click-scroll"
							href="#section_6">Contact</a></li>

						<li class="nav-item"><a class="nav-link click-scroll"
							href="#section_2">About Us</a></li>

					</ul>
					<a href="Login.jsp" class="btn custom-btn d-lg-block d-none">LogOut</a>
				</div>
			</div>
		</nav>

		<section class="course-intr">
			<div class="video-background">
				<video class="background-video" autoplay loop muted playsinline>
					<source src="video/tech.mp4" type="video/mp4">
				</video>
			</div>
			<div class="container intro-container">
				<div class="intro-content">
					<h2>Java Programming updated to Java 19</h2>
					<p>Learn Java In This Course And Become a Computer Programmer.
						Obtain valuable Core Java Skills And Java Certification</p>
					<div class="additional-info">
						<div class="rating">
							<i class="fas fa-star"></i> <span class="rating-value">4.5</span>
							<span class="rating-out-of">/5</span>
						</div>
						<div class="students">
							<i class="fas fa-users"></i> <span class="student-count">10,000</span>
							<span class="student-label">students</span>
						</div>
						<div class="best-seller">
							<i class="fas fa-tags"></i> <span class="best-seller-tag">Best
								Seller</span>
						</div>
						<div class="duration">
							<i class="fas fa-clock"></i> <span class="duration-label">Duration:</span>
							<span class="duration-value">4 weeks</span>
						</div>
					</div>
					<a href="#" class="enroll-button">Enroll Now</a>
				</div>
			</div>
			<div class="additional-details">
				<div class="faculty-details">
					<div class="faculty-info">
						<i class="fas fa-user"></i> <span class="faculty-name">Hari
							Krishna</span>
					</div>
					<div class="faculty-info">
						<i class="fas fa-graduation-cap"></i> <span
							class="faculty-expertise">Core Java</span>
					</div>
				</div>
				<div class="certificate-authority">
					<h3>Certificate</h3>
					<p>SRM Institute</p>
				</div>
			</div>
		</section>



		<section class="course-description">
			<div class="description-item">
				<div class="description-left">
					<h3>Advance your subject-matter expertise</h3>
					<div class="list-box">
						<ul>
							<li>Learn in-demand skills from university and industry
								experts</li>
							<li>Master a subject or tool with hands-on projects</li>
							<li>Develop a deep understanding of key concepts</li>
							<li>Earn a career certificate from University of California
								San Diego</li>
						</ul>
					</div>
				</div>
				<div class="description-right">
					<img src="images/cart.jpg" alt="Course Image">
				</div>
			</div>


			<div class="skills-section">
				<h3>Skills You'll Gain</h3>
				<div class="list-box">
					<ul class="skills-list">
						<li>Data Structure</li>
						<li>Hash Table</li>
						<li>Java Programming</li>
						<li>Object-Oriented Programming (OOP)</li>
						<li>Algorithms</li>
						<li>Problem Solving</li>
						<li>String (Computer Science)</li>
						<li>Cryptography</li>
						<li>Logic Programming</li>
						<li>Sorting Algorithm</li>
						<li>CTrees (Data Structures)</li>
						<li>SQL</li>
						<li>Linked List</li>
						<li>Data Visualization (DataViz)</li>
					</ul>
				</div>
			</div>
		</section>

		<div class="dynamic-sentence">
			<p id="dynamic-text"></p>
		</div>

		<section class="course-description">
			<div class="description-item">
				<div class="description-left">
					<h3>Perks</h3>
					<div class="list-box">
						<ul>
							<li>Shareable Certificate</li>
							<li>100% online courses</li>
							<li>Flexible Schedule</li>
							<li>Beginner Level</li>
							<li>English</li>
						</ul>
					</div>
				</div>
				<div class="description-right">
					<video controls width="600" height="400">
						<source src="video/code2.mp4" type="video/mp4">
					</video>
				</div>
			</div>

		</section>


		<section class="course-details">
			<div class="course-desc">
				<h2>Java Fundamentals</h2>
				<p>
					Java is a class-based, object-oriented programming language that is
					designed to have as few implementation dependencies as possible. It
					is intended to let application developers write once, and run
					anywhere (WORA), meaning that compiled Java code can run on all
					platforms that support Java without the need for recompilation.
					Java was first released in 1995 and is widely used for developing
					applications for desktop, web, and mobile devices. <br>Java is
					known for its simplicity, robustness, and security features, making
					it a popular choice for enterprise-level applications. JAVA was
					developed by James Gosling at Sun Microsystems Inc in the year 1995
					and later acquired by Oracle Corporation. It is a simple
					programming language. Java makes writing, compiling, and debugging
					programming easy. It helps to create reusable code and modular
					programs. Java is a class-based, object-oriented programming
					language and is designed to have as few implementation dependencies
					as possible.<br> A general-purpose programming language made
					for developers to write once run anywhere that is compiled Java
					code can run on all platforms that support Java. Java applications
					are compiled to byte code that can run on any Java Virtual Machine.
					The syntax of Java is similar to c/c++. History: Java’s history is
					very interesting. It is a programming language created in 1991.
					James Gosling, Mike Sheridan, and Patrick Naughton, a team of Sun
					engineers known as the Green team initiated the Java language in
					1991. Sun Microsystems released its first public implementation in
					1996 as Java 1.0. It provides no-cost -run-times on popular
					platforms. Java1.0 compiler was re-written in Java by Arthur Van
					Hoff to strictly comply with its specifications. With the arrival
					of Java 2, new versions had multiple configurations built for
					different types of platforms. <br>In 1997, Sun Microsystems
					approached the ISO standards body and later formalized Java, but it
					soon withdrew from the process. At one time, Sun made most of its
					Java implementations available without charge, despite their
					proprietary software status. Sun generated revenue from Java
					through the selling of licenses for specialized products such as
					the Java Enterprise System.
				</p>
			</div>
		</section>

		<section class="course-purchase">
			<div class="purchase-header">
				<h3>Course Purchase</h3>
			</div>
			<div class="purchase-form">
				<div class="form-group">
					<label for="card-number">Card Number <i
						class="fas fa-credit-card"></i></label> <input type="text"
						id="card-number" placeholder="Enter your card number">
				</div>
				<div class="form-group">
					<label for="card-name">Cardholder Name <i
						class="fas fa-user"></i></label> <input type="text" id="card-name"
						placeholder="Enter the cardholder's name">
				</div>
				<div class="form-row">
					<div class="form-group">
						<label for="expiry-date">Expiry Date <i
							class="far fa-calendar-alt"></i></label> <input type="text"
							id="expiry-date" placeholder="MM / YY">
					</div>
					<div class="form-group">
						<label for="cvv">CVV <i class="fas fa-lock"></i></label> <input
							type="password" id="cvv" placeholder="***">
					</div>
				</div>
				<div class="form-group">
					<label for="email">Email Address <i class="fas fa-envelope"></i></label>
					<input type="email" id="email"
						placeholder="Enter your email address">
				</div>
				<button class="purchase-button">
					Pay Now <i class="fas fa-arrow-right"></i>
				</button>
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
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
	<script>
		document
				.addEventListener(
						'DOMContentLoaded',
						function() {
							const dynamicText = document
									.getElementById('dynamic-text');
							const sentence = 'Start your learning journey today and acquire valuable skills in the field of computer science!';
							let currentChar = 0;

							function typeWriter() {
								if (currentChar < sentence.length) {
									dynamicText.textContent += sentence
											.charAt(currentChar);
									currentChar++;
									setTimeout(typeWriter, 100);
								} else {
									setTimeout(resetAnimation, 2000);
								}
							}

							function resetAnimation() {
								dynamicText.textContent = '';
								currentChar = 0;
								setTimeout(typeWriter, 0);
							}

							typeWriter();
						});
	</script>

	<script>
		document.addEventListener('DOMContentLoaded', function() {
			const expiryDateInput = document.getElementById('expiry-date');

			expiryDateInput.addEventListener('input', function(event) {
				const value = event.target.value;
				if (value.length === 2 && !value.includes('/')) {
					event.target.value = value + ' / ';
				}
			});
		});
	</script>

</body>
</html>

