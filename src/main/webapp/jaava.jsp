<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description" content="">
<meta name="author" content="">
<title>Quiz Page</title>
<link rel="stylesheet" type="text/css" href="quiz.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">


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

.collapse navbar-collapse {
	display: flex;
	align-items: center;
	justify-content: flex-start;
	margin-left: auto;
	margin-right: 5px;
}

h1 {
	color: #FFD700;
	font-size: 20px;
}

.quiz-container {
	max-width: 500px;
	margin: 0 auto;
	padding: 40px;
	background-color: #ffffff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
	font-size: 28px;
	margin-bottom: 30px;
	color: #333333;
}

.question {
	margin-bottom: 30px;
}

.question p {
	font-size: 18px;
	color: #333333;
	margin-bottom: 10px;
}

.options label {
	display: block;
	margin-bottom: 10px;
	cursor: pointer;
}

.options label input[type="radio"] {
	display: none;
}

.options label .checkmark {
	position: relative;
	display: inline-block;
	width: 20px;
	height: 20px;
	background-color: #f2f2f2;
	border: 2px solid #dddddd;
	border-radius: 50%;
	margin-right: 10px;
}

.options label .checkmark::after {
	content: '';
	position: absolute;
	display: none;
}

.options label input[type="radio"]:checked+.checkmark::after {
	display: block;
	border: solid #007bff;
	border-width: 0 2px 2px 0;
	transform: rotate(45deg);
	height: 10px;
	width: 5px;
	top: 2px;
	left: 6px;
}

input[type="submit"] {
	display: block;
	margin: 30px auto 0;
	padding: 12px 20px;
	background-color: #007bff;
	color: #ffffff;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

.popup {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
	display: none;
	align-items: center;
	justify-content: center;
	z-index: 999;
}

.popup.show {
	display: flex;
}

.popup-inner {
	max-width: 400px;
	background-color: #ffffff;
	padding: 40px;
	border-radius: 5px;
	text-align: center;
}

.popup-inner h2 {
	font-size: 24px;
	margin-bottom: 20px;
	color: #333333;
}

.popup-inner .btn-container {
	margin-top: 20px;
	text-align: center;
}

.popup-inner .btn-container button {
	padding: 10px 20px;
	background-color: #007bff;
	color: #ffffff;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

.popup-inner .result {
	margin-top: 20px;
	text-align: center;
}

.popup-inner .result p {
	font-size: 18px;
	margin-bottom: 10px;
}

.popup-inner .result p.correct {
	color: #008000;
}

.popup-inner .result p.incorrect {
	color: #ff0000;
}

.close-btn {
	position: absolute;
	top: 10px;
	right: 10px;
	font-size: 18px;
	color: #999999;
	cursor: pointer;
}
.submit-button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            text-align: center;
            text-decoration: none;
            background-color: #1E90FF;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
}
.correct-answer {
        background-color: lightgreen;
}
</style>
<script>
        function showResult() {
            var form = document.getElementById("quizForm");
            var score = 0;
            var answers = [];

            var q1Answer = form.elements["q1"].value;
            if (q1Answer === "a") {
                score++;
            }

            var q2Answer = form.elements["q2"].value;
            if (q2Answer === "b") {
                score++;
            }
            
            var q3Answer = form.elements["q3"].value;
            if (q3Answer === "b") {
                score++;
            }
            
            var q4Answer = form.elements["q4"].value;
            if (q4Answer === "b") {
                score++;
            }
            
            var q5Answer = form.elements["q5"].value;
            if (q5Answer === "a") {
                score++;
            }
            
            var q6Answer = form.elements["q6"].value;
            if (q6Answer === "b") {
                score++;
            }
            
            var q7Answer = form.elements["q7"].value;
            if (q7Answer === "a") {
                score++;
            }
            
            var q8Answer = form.elements["q8"].value;
            if (q8Answer === "c") {
                score++;
            }
            
            var q9Answer = form.elements["q9"].value;
            if (q9Answer === "a") {
                score++;
            }
            
            var q10Answer = form.elements["q10"].value;
            if (q10Answer === "c") {
                score++;
            }


            var popup = document.createElement("div");
            popup.setAttribute("class", "popup");
            var popupInner = document.createElement("div");
            popupInner.setAttribute("class", "popup-inner");
            var resultMessage = document.createElement("h2");
            resultMessage.innerText = "Your score: " + score + "/10";
            var closeBtn = document.createElement("button");
            closeBtn.innerText = "OK";
            closeBtn.addEventListener("click", function () {
                popup.classList.remove("show");
            });
            var btnContainer = document.createElement("div");
            btnContainer.setAttribute("class", "btn-container");
            btnContainer.appendChild(closeBtn);
            popupInner.appendChild(resultMessage);
            popupInner.appendChild(btnContainer);
            popup.appendChild(popupInner);


            var quizContainer = document.getElementById("quizContainer");
            quizContainer.appendChild(popup);


            popup.classList.add("show");
        }

        document.addEventListener("click", function (event) {
            var popup = document.querySelector(".popup");
            var target = event.target;
            if (!popup.contains(target) && !target.classList.contains("close-btn")) {
                popup.classList.remove("show");
            }
        });
    </script>
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
					<ul class="navbar-nav align-items-lg-center ">
						<li class="nav-item"><a class="nav-link click-scroll"
							href="home.jsp">Back to Home</a></li>
					</ul>

					<a href="Login.jsp"
						class="btn custom-btn d-lg-block d-none  ms-auto me-lg-5">Login</a>
				</div>
			</div>
		</nav>
		<div class="quiz-container" id="quizContainer">
			<h1>Java Quiz</h1>
			<form id="quizForm">
				<div class="question">
					<p>Question 1: Number of primitive data types in Java are?</p>
					<div class="options">
						<label> <input type="radio" name="q1" value="a"> <span
							class="checkmark"></span> 6;
						</label> <label> <input type="radio" name="q1" value="b">
							<span class="checkmark"></span> 7;
						</label> <label> <input type="radio" name="q1" value="c">
							<span class="checkmark"></span> 8;
						</label> <label> <input type="radio" name="q1" value="d">
							<span class="checkmark"></span> 9
						</label>
					</div>
				</div>

				<div class="question">
					<p>Question 2: What is the size of float and double in java?</p>
					<div class="options">
						<label> <input type="radio" name="q2" value="a"> <span
							class="checkmark"></span> 32 and 64
						</label> <label> <input type="radio" name="q2" value="b">
							<span class="checkmark"></span> 32 and 32
						</label> <label> <input type="radio" name="q2" value="c">
							<span class="checkmark"></span> 64 and 64
						</label> <label> <input type="radio" name="q2" value="d">
							<span class="checkmark"></span> 64 and 32
						</label>
					</div>
				</div>

				<div class="question">
					<p>Question 3: Automatic type conversion is possible in which of the possible cases?</p>
					<div class="options">
						<label> <input type="radio" name="q3" value="a"> <span
							class="checkmark"></span> Byte to int
						</label> <label> <input type="radio" name="q3" value="b">
							<span class="checkmark"></span> int to long
						</label> <label> <input type="radio" name="q3" value="c">
							<span class="checkmark"></span> long to int
						</label> <label> <input type="radio" name="q3" value="d">
							<span class="checkmark"></span> short to int
						</label>
					</div>
				</div>

				<div class="question">
					<p>Question 4: Arrays in java are-</p>
					<div class="options">
						<label> <input type="radio" name="q4" value="a"> <span
							class="checkmark"></span> Object references
						</label> <label> <input type="radio" name="q4" value="b">
							<span class="checkmark"></span> Objects
						</label> <label> <input type="radio" name="q4" value="c">
							<span class="checkmark"></span> Primitive data types
						</label> <label> <input type="radio" name="q4" value="d">
							<span class="checkmark"></span> None
						</label>
					</div>
				</div>

				<div class="question">
					<p>Question 5: When is the object created with new keyword?</p>
					<div class="options">
						<label> <input type="radio" name="q5" value="a"> <span
							class="checkmark"></span> At run time
						</label> <label> <input type="radio" name="q5" value="b">
							<span class="checkmark"></span> At run compile time
						</label> <label> <input type="radio" name="q5" value="c">
							<span class="checkmark"></span> Depends on the code
						</label> <label> <input type="radio" name="q5" value="d">
							<span class="checkmark"></span> None
						</label>
					</div>
				</div>

				<div class="question">
					<p>Question 6: Identify the keyword among the following that makes a variable belong to a class,rather than being defined for each instance of the class.</p>
					<div class="options">
						<label> <input type="radio" name="q6" value="a"> <span
							class="checkmark"></span> final
						</label> <label> <input type="radio" name="q6" value="b">
							<span class="checkmark"></span> static
						</label> <label> <input type="radio" name="q6" value="c">
							<span class="checkmark"></span> volatile
						</label> <label> <input type="radio" name="q6" value="d">
							<span class="checkmark"></span> abstract
						</label>
					</div>
				</div>

				<div class="question">
					<p>Question 7:  In which of the following is toString() method defined?</p>
					<div class="options">
						<label> <input type="radio" name="q7" value="a"> <span
							class="checkmark"></span> java.lang.Object
						</label> <label> <input type="radio" name="q7" value="b">
							<span class="checkmark"></span> java.lang.String
						</label> <label> <input type="radio" name="q7" value="c">
							<span class="checkmark"></span> java.lang.util
						</label> <label> <input type="radio" name="q7" value="d">
							<span class="checkmark"></span> None
						</label>
					</div>
				</div>

				<div class="question">
					<p>Question 8: compareTo() returns</p>
					<div class="options">
						<label> <input type="radio" name="q8" value="a"> <span
							class="checkmark"></span> True
						</label> <label> <input type="radio" name="q8" value="b">
							<span class="checkmark"></span> False
						</label> <label> <input type="radio" name="q8" value="c">
							<span class="checkmark"></span> An int value
						</label> <label> <input type="radio" name="q8" value="d">
							<span class="checkmark"></span> None
						</label>
					</div>
				</div>

				<div class="question">
					<p>Question 9: To which of the following does the class string belong to.</p>
					<div class="options">
						<label> <input type="radio" name="q9" value="a"> <span
							class="checkmark"></span> java.lang
						</label> <label> <input type="radio" name="q9" value="b">
							<span class="checkmark"></span> java.awt
						</label> <label> <input type="radio" name="q9" value="c">
							<span class="checkmark"></span> java.applet
						</label> <label> <input type="radio" name="q9" value="d">
							<span class="checkmark"></span> java.string
						</label>
					</div>
				</div>

				<div class="question">
					<p>Question 10: Total constructor string class have?</p>
					<div class="options">
						<label> <input type="radio" name="q10" value="a">
							<span class="checkmark"></span> 3
						</label> <label> <input type="radio" name="q10" value="b">
							<span class="checkmark"></span> 7
						</label> <label> <input type="radio" name="q10" value="c">
							<span class="checkmark"></span> 13
						</label> <label> <input type="radio" name="q10" value="d">
							<span class="checkmark"></span> 20
						</label>
					</div>
				</div>


				<input class="submit-button" type="button" value="Submit" onclick="showResult()">
			</form>
		</div>
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
