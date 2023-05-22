<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<title>LazyCoderz - Bootstrap 5 CSS Template</title>

<!-- CSS FILES -->
<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;400;700&display=swap"
	rel="stylesheet">

<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="css/bootstrap-icons.css" rel="stylesheet">

<link href="css/templatemo-festava-live.css" rel="stylesheet">

<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<link rel="stylesheet" href="css/style.css">


<style>
.gradient-custom-3 {
	/* fallback for old browsers */
	background: #84fab0;
	/* Chrome 10-25, Safari 5.1-6 */
	background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 0.5),
		rgba(143, 211, 244, 0.5));
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	background: linear-gradient(to right, rgba(132, 250, 176, 0.5),
		rgba(143, 211, 244, 0.5))
}

.gradient-custom-4 {
	/* fallback for old browsers */
	background: #84fab0;
	/* Chrome 10-25, Safari 5.1-6 */
	background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 1),
		rgba(143, 211, 244, 1));
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	background: linear-gradient(to right, rgba(132, 250, 176, 1),
		rgba(143, 211, 244, 1))
}

section.vh-100 {
	background-color: black;
}

.card {
	border: 1px solid orange;
}

.navbar-bg-navy {
  background-color: #09091B;
}

</style>

</head>
<body>

	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
	<main>

		<header class="site-header">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-12 d-flex flex-wrap">
						<p class="d-flex me-4 mb-0">
							<img src="images/favicon.png" alt="icon description">
						<center>
							<strong class="text-dark">Welcome to LazyCoderz</strong>
						</center>
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
							href="Welcome.jsp">Home</a></li>
					</ul>

					<a href="Login.jsp" class="btn custom-btn d-lg-block d-none">Already
						have an account! Login</a>
				</div>
			</div>
		</nav>
		<!-- video and footer tag -->

		<section class="vh-100" style="background-color: #000000;">
			<div class="container h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-lg-12 col-xl-11">
						<div class="card text-black bg-black" style="border-radius: 25px;">
							<div class="card-body p-md-5">
								<div class="row justify-content-center">
									<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

										<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4"
											style="color: #ffb700;">Sign up</p>

										<form method="post" action="RegisterServ" class="register-form" id="register-form">

											<div class="d-flex flex-row align-items-center mb-4">
												<i class="fas fa-user fa-lg me-3 fa-fw"></i>
												<div class="form-outline flex-fill mb-0">
													 <input type="text" id="uname" name="uname"
														class="form-control" /> <label class="form-label"
														for="uname" style="color: #ffb700;">Your Name</label>
												</div>
											</div>

											<div class="d-flex flex-row align-items-center mb-4">
												<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
												<div class="form-outline flex-fill mb-0">
													<input type="email" id="uemail" name="uemail"
														class="form-control" /> <label class="form-label"
														for="uemail" style="color: #ffb700;">Your Email</label>
												</div>
											</div>

											<div class="d-flex flex-row align-items-center mb-4">
												<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
												<div class="form-outline flex-fill mb-0">
													<input type="password" id="upwd" name="upwd"
														class="form-control" /> <label class="form-label"
														for="upwd" style="color: #ffb700;">Password</label>
												</div>
											</div>

											<div class="d-flex flex-row align-items-center mb-4">
												<i class="fas fa-key fa-lg me-3 fa-fw"></i>
												<div class="form-outline flex-fill mb-0">
													<input type="password" id="form3Example4cd"
														class="form-control" /> <label class="form-label"
														for="form3Example4cd" style="color: #ffb700;">Confirm
														password</label>
												</div>
											</div>

											<div class="form-check d-flex justify-content-center mb-5">
												<input class="form-check-input me-2" type="checkbox"
													value="" id="form2Example3c" /> <label
													class="form-check-label" for="form2Example3"
													style="color: #ffb700;"> I agree all statements in
													<a href="#!">Terms of service</a>
												</label>
											</div>

											<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
												<button type="submit" class="btn btn-primary btn-lg">Register</button>
											</div>

										</form>

									</div>
									<div
										class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

										<img src="images/rege.jpg" class="img-fluid"
											alt="Sample image">

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script>
			$(document).ready(
					function() {
						var status = "${status}";
						if (status === "failed") {
							$("#message").html(
									"Invalid credentials. Please try again.")
									.addClass("alert alert-danger").show();
						}
					});
		</script>

		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="js/main.js"></script>
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<link rel="stylesheet" href="alert/dist/sweetalert.css">

	</main>
	<footer class="site-footer">

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

	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "success") {
			swal("Sorry", "Wrong Username or Password", "error");
		}
	</script>

</body>
</html>

