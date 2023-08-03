<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>LazyCoderz </title>


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;400;700&display=swap"
	rel="stylesheet">
<link href="css/bootstrap-icons.css" rel="stylesheet">
<link href="css/templatemo-festava-live.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="styles.css">

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

h2 {
	color: #FFA500;
	font-size: 20px;
}

h3 {
	color: #FFA500;
	font-size: 15px;
}


body {
	font-family: 'Outfit', sans-serif;
}

.site-header {
	background-color: #F5F5F5;
	padding: 20px;
}

.nav-link {
	color: #09091B;
}

.custom-btn {
	background-color: #FFA500;
	color: #fff;
}

.search-bar {
	display: flex;
	align-items: center;
	justify-content: center;
	margin-bottom: 20px;
}

.search-bar input[type="text"] {
	padding: 10px;
	border: none;
	border-radius: 5px 0 0 5px;
}

.search-bar button[type="submit"] {
	padding: 10px 15px;
	background-color: #FFA500;
	border: none;
	border-radius: 0 5px 5px 0;
	color: #fff;
}

.my-account {
	position: relative;
	display: inline-block;
}

.account-btn {
	background-color: transparent;
	border: none;
	color: #FFA500;
	cursor: pointer;
}

.account-dropdown {
	display: none;
	position: absolute;
	background-color: #F5F5F5;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.account-dropdown a {
	color: #09091B;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.account-dropdown a:hover {
	background-color: #ffc107;
	color: #FF4500;
}

.my-account:hover .account-dropdown {
	display: block;
}
</style>
</head>

<body>
	<header class="site-header">
		<nav
			class="navbar navbar-expand-lg navbar-dark fixed-top navbar-bg-navy">
			<div class="container">
				<a class="navbar-brand" href="#">LazyCoderz</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav ms-auto">
						<li class="nav-item"><a class="nav-link" href="#home">Home</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#features">Features</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#pricing">Pricing</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#contact">Contact</a>
						</li>
						<li class="nav-item"><a class="nav-link custom-btn" href="#">Get
								Started</a></li>
						<li class="nav-item">
							<div class="my-account">
								<button class="account-btn">
									<i class="bi bi-person-fill"></i> My Account
								</button>
								<div class="account-dropdown">
									<a href="#">Profile</a> <a href="#">Settings</a> <a href="#">Logout</a>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<section id="home">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12">
					<h2>Welcome to LazyCoderz</h2>
					<h1>Boost Your Coding Skills</h1>
					<p>Learn to code from scratch and take your skills to the next
						level with LazyCoderz. We offer a wide range of coding tutorials,
						exercises, and resources to help you become a better programmer.</p>
					<a href="#features" class="custom-btn">Learn More</a>
				</div>
				<div class="search-bar">
					<input type="text" placeholder="Search courses...">
					<button type="submit">Search</button>
				</div>
				<div class="col-lg-6 col-md-12">
					<img src="images/developer.png" class="img-fluid"
						alt="Developer Image">
				</div>
			</div>
		</div>
	</section>

	<section id="features">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6 col-sm-12">
					<div class="feature-item">
						<i class="bi bi-laptop"></i>
						<h3>Online Tutorials</h3>
						<p>Access our extensive library of online coding tutorials and
							learn at your own pace.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12">
					<div class="feature-item">
						<i class="bi bi-person"></i>
						<h3>Expert Instructors</h3>
						<p>Learn from industry experts and experienced programmers who
							will guide you through the learning process.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12">
					<div class="feature-item">
						<i class="bi bi-bookmark"></i>
						<h3>Coding Resources</h3>
						<p>Explore our collection of coding resources, including cheat
							sheets, code snippets, and more.</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="pricing">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2>Choose Your Plan</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6 col-sm-12">
					<div class="pricing-item">
						<h3>Basic</h3>
						<p class="price">$19.99</p>
						<ul>
							<li>Access to all tutorials</li>
							<li>One-on-one support</li>
							<li>Community forum</li>
							<li>Lifetime access</li>
						</ul>
						<a href="#" class="custom-btn">Get Started</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12">
					<div class="pricing-item">
						<h3>Pro</h3>
						<p class="price">$39.99</p>
						<ul>
							<li>Access to all tutorials</li>
							<li>One-on-one support</li>
							<li>Community forum</li>
							<li>Assignments and quizzes</li>
							<li>Lifetime access</li>
						</ul>
						<a href="#" class="custom-btn">Get Started</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12">
					<div class="pricing-item">
						<h3>Enterprise</h3>
						<p class="price">$99.99</p>
						<ul>
							<li>Access to all tutorials</li>
							<li>One-on-one support</li>
							<li>Community forum</li>
							<li>Assignments and quizzes</li>
							<li>Project mentoring</li>
							<li>Lifetime access</li>
						</ul>
						<a href="#" class="custom-btn">Get Started</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2>Contact Us</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<form action="#" method="post">
						<div class="mb-3">
							<input type="text" class="form-control" name="name"
								placeholder="Your Name" required>
						</div>
						<div class="mb-3">
							<input type="email" class="form-control" name="email"
								placeholder="Your Email" required>
						</div>
						<div class="mb-3">
							<textarea class="form-control" name="message" rows="5"
								placeholder="Your Message" required></textarea>
						</div>
						<div class="mb-3">
							<button type="submit" class="custom-btn">Send Message</button>
						</div>
					</form>
				</div>
				<div class="col-lg-6">
					<h3>Get in Touch</h3>
					<p>If you have any questions or inquiries, feel free to reach
						out to us. We'd love to hear from you!</p>
					<ul>
						<li><i class="bi bi-geo-alt-fill"></i> 123 Street, City,
							Country</li>
						<li><i class="bi bi-phone-fill"></i> +1 234 5678 900</li>
						<li><i class="bi bi-envelope-fill"></i> info@lazycoderz.com</li>
					</ul>
				</div>
			</div>
		</div>
	</section>

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<p>&copy; 2023 LazyCoderz. All Rights Reserved. | Designed by
						LazyCoderz Team</p>
				</div>
			</div>
		</div>
	</footer>


	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="js/templatemo-festava-live.js"></script>
</body>

</html>
