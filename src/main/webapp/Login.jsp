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

					<a href="Register.jsp" class="btn custom-btn d-lg-block d-none">Sign
						up</a>
				</div>
			</div>
		</nav>
		<!-- video and footer tag -->

		<section class="vh-100" style="background-color: #000000;">
			<div id="message"></div>
			<div class="container py-5 h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col col-xl-10">
						<div class="card" style="border-radius: 1rem;">
							<div class="row g-0">
								<div class="col-md-6 col-lg-5 d-none d-md-block">
									<img src="images/pexels.jpg" alt="login form" class="img-fluid"
										style="border-radius: 1rem 0 0 1rem;" />
								</div>
								<div class="col-md-6 col-lg-7 d-flex align-items-center">
									<div class="card-body p-4 p-lg-5 text-black">

										<form action="LoginServ" method="post">

											<div class="d-flex align-items-center mb-3 pb-1">
												<i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
												<span class="h1 fw-bold mb-0">Login</span>
											</div>

											<h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign
												in into your account</h5>

											<div class="form-outline mb-4">
												<input type="email" id="uemail" name="uemail"
													class="form-control form-control-lg" /> <label
													class="form-label" for="uemail">Email address</label>
											</div>

											<div class="form-outline mb-4">
												<input type="password" id="upwd" name="upwd"
													class="form-control form-control-lg" /> <label
													class="form-label" for="upwd">Password</label>
											</div>

											<div class="pt-1 mb-4">
												<button class="btn btn-dark btn-lg btn-block" type="submit">Login</button>
											</div>

											<a class="small text-muted" href="#!">Forgot password?</a>
											<p class="mb-5 pb-lg-2" style="color: #393f81;">
												Don't have an account? <a href="Register.jsp" style="color: #393f81;">Register
													here</a>
											</p>
											<a href="#!" class="small text-muted">Terms of use.</a> <a
												href="#!" class="small text-muted">Privacy policy</a>
										</form>

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

