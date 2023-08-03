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
            if (q2Answer === "a") {
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
            if (q6Answer === "a") {
                score++;
            }
            
            var q7Answer = form.elements["q7"].value;
            if (q7Answer === "b") {
                score++;
            }
            
            var q8Answer = form.elements["q8"].value;
            if (q8Answer === "d") {
                score++;
            }
            
            var q9Answer = form.elements["q9"].value;
            if (q9Answer === "a") {
                score++;
            }
            
            var q10Answer = form.elements["q10"].value;
            if (q10Answer === "b") {
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
			<h1>Data Structures Quiz</h1>
			<form id="quizForm">
				<div class="question">
					<p>Question 1: How is an array initialized in C language?</p>
					<div class="options">
						<label> <input type="radio" name="q1" value="a"> <span
							class="checkmark"></span> int a[3] = {1,2,3};
						</label> <label> <input type="radio" name="q1" value="b">
							<span class="checkmark"></span> int a = {1,2,3};
						</label> <label> <input type="radio" name="q1" value="c">
							<span class="checkmark"></span> int a[] = new int[3];
						</label> <label> <input type="radio" name="q1" value="d">
							<span class="checkmark"></span> int a(3) = [1,2,3];
						</label>
					</div>
				</div>

				<div class="question">
					<p>Question 2: Which of the following is a linear data
						structure?</p>
					<div class="options">
						<label> <input type="radio" name="q2" value="a"> <span
							class="checkmark"></span> Array
						</label> <label> <input type="radio" name="q2" value="b">
							<span class="checkmark"></span> AVL Trees
						</label> <label> <input type="radio" name="q2" value="c">
							<span class="checkmark"></span> Binary Trees
						</label> <label> <input type="radio" name="q2" value="d">
							<span class="checkmark"></span> Graphs
						</label>
					</div>
				</div>

				<div class="question">
					<p>Question 3: How is the 2nd element in an array accessed
						based on pointer notation?</p>
					<div class="options">
						<label> <input type="radio" name="q3" value="a"> <span
							class="checkmark"></span> *a + 2
						</label> <label> <input type="radio" name="q3" value="b">
							<span class="checkmark"></span> *(a + 2)
						</label> <label> <input type="radio" name="q3" value="c">
							<span class="checkmark"></span> *(*a + 2)
						</label> <label> <input type="radio" name="q3" value="d">
							<span class="checkmark"></span> &(a + 2)
						</label>
					</div>
				</div>

				<div class="question">
					<p>Question 4: Which of the following is not the type of queue?</p>
					<div class="options">
						<label> <input type="radio" name="q4" value="a"> <span
							class="checkmark"></span> Priority Queue
						</label> <label> <input type="radio" name="q4" value="b">
							<span class="checkmark"></span> Single-ended queue
						</label> <label> <input type="radio" name="q4" value="c">
							<span class="checkmark"></span> Circular queue
						</label> <label> <input type="radio" name="q4" value="d">
							<span class="checkmark"></span> Ordinary queue
						</label>
					</div>
				</div>

				<div class="question">
					<p>Question 5: From following which is not the operation of
						data structure?</p>
					<div class="options">
						<label> <input type="radio" name="q5" value="a"> <span
							class="checkmark"></span> Operations that manipulate data in some
							way
						</label> <label> <input type="radio" name="q5" value="b">
							<span class="checkmark"></span> Operations that perform a
							computation
						</label> <label> <input type="radio" name="q5" value="c">
							<span class="checkmark"></span> Operations that check for syntax
							errors
						</label> <label> <input type="radio" name="q5" value="d">
							<span class="checkmark"></span> Operations that monitor an object
							for the occurance of a controlling event
						</label>
					</div>
				</div>

				<div class="question">
					<p>Question 6: What function is used to append a character at
						the back of a string in C++?</p>
					<div class="options">
						<label> <input type="radio" name="q6" value="a"> <span
							class="checkmark"></span> push_back()
						</label> <label> <input type="radio" name="q6" value="b">
							<span class="checkmark"></span> append()
						</label> <label> <input type="radio" name="q6" value="c">
							<span class="checkmark"></span> push()
						</label> <label> <input type="radio" name="q6" value="d">
							<span class="checkmark"></span> insert()
						</label>
					</div>
				</div>

				<div class="question">
					<p>Question 7: When a pop() operation is called on an empty
						queue, what is the condition called?</p>
					<div class="options">
						<label> <input type="radio" name="q7" value="a"> <span
							class="checkmark"></span> Overflow
						</label> <label> <input type="radio" name="q7" value="b">
							<span class="checkmark"></span> Underflow
						</label> <label> <input type="radio" name="q7" value="c">
							<span class="checkmark"></span> Syntax Error
						</label> <label> <input type="radio" name="q7" value="d">
							<span class="checkmark"></span> Garbage Value
						</label>
					</div>
				</div>

				<div class="question">
					<p>Question 8: Which of the following data structures can be
						used to implement queues?</p>
					<div class="options">
						<label> <input type="radio" name="q8" value="a"> <span
							class="checkmark"></span> Stack
						</label> <label> <input type="radio" name="q8" value="b">
							<span class="checkmark"></span> Arrays
						</label> <label> <input type="radio" name="q8" value="c">
							<span class="checkmark"></span> LinkedList
						</label> <label> <input type="radio" name="q8" value="d">
							<span class="checkmark"></span> All of the Above
						</label>
					</div>
				</div>

				<div class="question">
					<p>Question 9: Which of the following data structures finds its
						use in recursion?</p>
					<div class="options">
						<label> <input type="radio" name="q9" value="a"> <span
							class="checkmark"></span> Stack
						</label> <label> <input type="radio" name="q9" value="b">
							<span class="checkmark"></span> Arrays
						</label> <label> <input type="radio" name="q9" value="c">
							<span class="checkmark"></span> LinkedList
						</label> <label> <input type="radio" name="q9" value="d">
							<span class="checkmark"></span> Queues
						</label>
					</div>
				</div>

				<div class="question">
					<p>Question 10: Which of the following data structures allow
						insertion and deletion from both ends?</p>
					<div class="options">
						<label> <input type="radio" name="q10" value="a">
							<span class="checkmark"></span> Stack
						</label> <label> <input type="radio" name="q10" value="b">
							<span class="checkmark"></span> Deque
						</label> <label> <input type="radio" name="q10" value="c">
							<span class="checkmark"></span> Queue
						</label> <label> <input type="radio" name="q10" value="d">
							<span class="checkmark"></span> Strings
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
