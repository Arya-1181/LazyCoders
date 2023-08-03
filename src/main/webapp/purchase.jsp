<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
	color: #404040;
	font-size: 20px;
}

h3 {
	color: #ff571a;
	font-size: 15px;
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
					<ul class="navbar-nav align-items-lg-center ">
						<li class="nav-item"><a class="nav-link click-scroll"
							href="Welcome.jsp">Back to Home</a></li>
					</ul>

					<a href="Login.jsp"
						class="btn custom-btn d-lg-block d-none  ms-auto me-lg-5">Login</a>
				</div>
			</div>
		</nav>
		<section style="background-color: white; padding: 20px;">
			<h6
				style="color: #00000; text-align: center; border-bottom: 1px solid orange; padding-bottom: 10px;">
				Select Courses</h6>
			<div class="my-account">
				<button class="account-btn">
					<i class="bi bi-person-fill"></i> My Account
				</button>
				<div class="account-dropdown">
					<a href="#">Profile</a> <a href="#">Settings</a> <a href="#">Logout</a>
				</div>
			</div>
		</section>


		<section id="home">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-12">
						<h1>Boost Your Coding Skills</h1>
						<p>Learn to code from scratch and take your skills to the next
							level with LazyCoderz. We offer a wide range of coding tutorials,
							exercises, and resources to help you become a better programmer.
						</p>
						<a href="#about" class="custom-btn">Learn More</a>
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
							<p>Access our extensive library of online coding tutorials
								and learn at your own pace.</p>
						</div>
					</div>
					<div class="col-lg-4 col-md-6 col-sm-12">
						<div class="feature-item">
							<i class="bi bi-person"></i>
							<h3>Expert Instructors</h3>
							<p>Learn from industry experts and experienced programmers
								who will guide you through the learning process.</p>
						</div>
					</div>
					<div class="col-lg-4 col-md-6 col-sm-12">
						<div class="feature-item">
							<i class="bi bi-bookmark"></i>
							<h3>Coding Resources</h3>
							<p>Explore our collection of coding resources, including
								cheat sheets, code snippets, and more.</p>
						</div>
					</div>
				</div>
			</div>
		</section>



		<section class="categories">
			<h2>Course Categories</h2>
			<div class="slider-container">
				<button class="slider-button left-button">&lt;</button>
				<div class="category-card active">
					<img class="zoom-image" src="images/web.png" alt="Category Image">
					<h3>Web Development</h3>
				</div>
				<div class="category-card">
					<img class="zoom-image" src="images/mob.png" alt="Category Image"
						style="width: 100px; height: 100px; border-radius: 50%;">
					<h3>Mobile App Development</h3>
				</div>
				<div class="category-card">
					<img class="zoom-image" src="images/cloud.png" alt="Category Image"
						style="width: 100px; height: 100px; border-radius: 50%;">
					<h3>Cloud Computing</h3>
				</div>
				<div class="category-card">
					<img class="zoom-image" src="images/db.png" alt="Category Image"
						style="width: 100px; height: 100px; border-radius: 50%;">
					<h3>Database</h3>
				</div>
				<div class="category-card">
					<img class="zoom-image" src="images/dev.png" alt="Category Image"
						style="width: 100px; height: 100px; border-radius: 50%;">
					<h3>DevOps</h3>
				</div>
				<div class="category-card">
					<img class="zoom-image" src="images/data.png" alt="Category Image"
						style="width: 100px; height: 100px; border-radius: 50%;">
					<h3>Data Structures</h3>
				</div>
				<div class="category-card">
					<img class="zoom-image" src="images/pro.png" alt="Category Image"
						style="width: 100px; height: 100px; border-radius: 50%;">
					<h3>Programming</h3>
				</div>

				<button class="slider-button right-button">&gt;</button>
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

		<div class="course-header">
			<h2>All Courses</h2>
		</div>

		<section class="course-listing" id="course"
			style="background-color: white; padding: 20px;">
			<div class="course-card">
				<img src="images/java2.png" alt="Java Course Thumbnail"
					style="width: 100px; height: 100px; border-radius: 50%;">
				<h3>Java Course</h3>
				<p>Description: Learn the fundamentals of Java programming
					language and object-oriented programming concepts. Build real-world
					applications and gain valuable coding skills.</p>
				<div class="rating">Course Rating: 4.5/5</div>
				<div class="price">$99</div>
				<div class="perks">
					<ul>
						<li>Access to interactive coding exercises and quizzes</li>
						<li>Hands-on projects to reinforce learning</li>
						<li>Support from experienced Java developers</li>
						<li>Certificate of completion</li>
					</ul>
				</div>
				<form action="purchase.jsp" method="post">
					<input type="hidden" name="courseId" value="courseId123"> <input
						type="hidden" name="action" value="add">
					<a href="cart.jsp" class="buy-button">Buy Now</a>
				</form>
			</div>

			<div class="course-card">
				<img src="images/cpp.png" alt="C++ Course Thumbnail"
					style="width: 100px; height: 100px; border-radius: 50%;">
				<h3>C++ Course</h3>
				<p>Description: Master the C++ programming language and learn
					how to develop efficient and high-performance applications. Explore
					advanced topics such as templates, memory management, and more.</p>
				<div class="rating">Course Rating: 4.8/5</div>
				<div class="price">$99</div>
				<div class="perks">
					<ul>
						<li>Comprehensive C++ curriculum with hands-on exercises</li>
						<li>Practical examples and coding challenges</li>
						<li>Personalized feedback on your code</li>
						<li>Access to a supportive community of learners</li>
					</ul>
				</div>
				<button class="buy-button">Buy Now</button>
			</div>

			<form action="purchase" method="post">
				<input type="hidden" name="courseName" value="Python Course">
				<input type="hidden" name="courseDetails"
					value="Dive into the world of Python programming and learn how to build web applications, automate tasks, analyze data, and more. Develop a strong foundation in Python.">

				<div class="course-card">
					<img src="images/py.png" alt="Python Course Thumbnail"
						style="width: 100px; height: 100px; border-radius: 50%;">
					<h3>Python Course</h3>
					<p>Description: Dive into the world of Python programming and
						learn how to build web applications, automate tasks, analyze data,
						and more. Develop a strong foundation in Python.</p>
					<div class="rating">Course Rating: 4.7/5</div>
					<div class="price">$99</div>
					<div class="perks">
						<ul>
							<li>Step-by-step guidance from Python experts</li>
							<li>Practical projects to apply your knowledge</li>
							<li>Supportive community and peer collaboration</li>
							<li>Lifetime access to course materials</li>
						</ul>
					</div>
					<button class="buy-button" type="submit">Buy Now</button>
				</div>
			</form>

			<div class="course-card">
				<img src="images/react.png" alt="React Course Thumbnail"
					style="width: 100px; height: 100px; border-radius: 50%;">
				<h3>React Course</h3>
				<p>Description: Learn how to build interactive user interfaces
					using React, a popular JavaScript library. Gain hands-on experience
					with React components, state management, and more.</p>
				<div class="rating">Course Rating: 4.9/5</div>
				<div class="price">$99</div>
				<div class="perks">
					<ul>
						<li>In-depth coverage of React fundamentals</li>
						<li>Building real-world projects to reinforce concepts</li>
						<li>Code reviews and feedback from React developers</li>
						<li>Access to a supportive online community</li>
					</ul>
				</div>
				<button class="buy-button">Buy Now</button>
			</div>
			<div class="course-card">
				<img src="images/js.png" alt="JavaScript Course Thumbnail"
					style="width: 100px; height: 100px; border-radius: 50%;">
				<h3>JavaScript Course</h3>
				<p>Description: Explore the power of JavaScript and learn how to
					build dynamic and interactive web applications. Understand core
					concepts and work with popular JavaScript frameworks.</p>
				<div class="rating">Course Rating: 4.6/5</div>
				<div class="price">$99</div>
				<div class="perks">
					<ul>
						<li>Comprehensive JavaScript curriculum for beginners to
							advanced</li>
						<li>Hands-on projects to strengthen your coding skills</li>
						<li>Support from experienced JavaScript developers</li>
						<li>Practical examples and real-world applications</li>
					</ul>
				</div>
				<button class="buy-button">Buy Now</button>
			</div>

			<div class="course-card">
				<img src="images/sql.png" alt="SQL Course Thumbnail"
					style="width: 100px; height: 100px; border-radius: 50%;">
				<h3>SQL Course</h3>
				<p>Description: Master SQL and learn how to effectively manage
					and manipulate relational databases. Develop skills to write
					complex queries, design database schemas, and optimize performance.</p>
				<div class="rating">Course Rating: 4.7/5</div>
				<div class="price">$99</div>
				<div class="perks">
					<ul>
						<li>Comprehensive coverage of SQL concepts and syntax</li>
						<li>Hands-on exercises to reinforce learning</li>
						<li>Real-world database projects</li>
						<li>Access to a supportive community of SQL enthusiasts</li>
					</ul>
				</div>
				<button class="buy-button">Buy Now</button>
			</div>

			<div class="course-card">
				<img src="images/node.png" alt="Node.js Course Thumbnail"
					style="width: 100px; height: 100px; border-radius: 50%;">
				<h3>Node.js Course</h3>
				<p>Description: Dive into server-side JavaScript with Node.js.
					Learn how to build scalable and high-performance web applications
					using the Node.js runtime environment.</p>
				<div class="rating">Course Rating: 4.8/5</div>
				<div class="price">$99</div>
				<div class="perks">
					<ul>
						<li>In-depth understanding of Node.js and its ecosystem</li>
						<li>Building web servers and RESTful APIs with Express.js</li>
						<li>Authentication, database integration, and security</li>
						<li>Real-world projects and deployment strategies</li>
					</ul>
				</div>
				<button class="buy-button">Buy Now</button>
			</div>

		</section>


		<section class="shopping-cart" style="background-color: white;">
			<a href="#" class="cart-icon">
				<button class="cart-button">
					<img src="images/cart.png" alt="Cart Icon">
				</button>
			</a>
		</section>

		<section class="hero" id="about">

			<div class="banner">About our program</div>
			<div class="description">
				<p>Welcome to our online computer science courses platform,
					where you can embark on a transformative learning journey from the
					comfort of your own home. Our website is dedicated to providing
					comprehensive and engaging computer science courses that cater to a
					wide range of learners, from beginners to experienced
					professionals. Whether you are looking to explore the fundamentals
					of programming or delve into advanced topics like artificial
					intelligence and cybersecurity, our platform has a diverse
					selection of courses to suit your needs.</p>
				<p>One of the key advantages of our website is the flexibility
					it offers. We understand that today's learners have busy schedules
					and commitments, which is why our courses are designed to be
					self-paced. You can access the course materials and lectures at any
					time that is convenient for you, allowing you to learn at your own
					pace and fit your studies around your other responsibilities.
					Moreover, our platform is accessible from any device with an
					internet connection, giving you the freedom to learn on your
					computer, tablet, or even your smartphone.</p>
				<p>When it comes to course content, we take great pride in
					curating a rich and up-to-date curriculum that covers the latest
					advancements and trends in the field of computer science. Our team
					of experienced instructors, who are industry professionals and
					subject matter experts, ensures that the courses are relevant,
					practical, and aligned with the demands of the job market. From
					programming languages such as Python, Java, and C++, to databases,
					algorithms, and software engineering principles, our courses offer
					a comprehensive understanding of the core concepts and skills
					required in the field.</p>
				<p>To enhance the learning experience, our website provides
					various interactive features and resources. Through our intuitive
					learning management system, you can access a variety of multimedia
					materials, including video lectures, coding exercises, quizzes, and
					real-world projects. These hands-on activities enable you to apply
					the theoretical knowledge you gain and develop practical skills
					that are directly applicable in the industry. Additionally, you
					will have the opportunity to participate in discussion forums,
					where you can connect with fellow learners, share insights, and
					seek guidance from instructors.</p>
				<p>We understand that certifications play a vital role in
					showcasing your expertise to potential employers or clients.
					Therefore, our website offers the option to earn certificates upon
					successful completion of the courses. These certificates not only
					validate your skills but also demonstrate your commitment to
					professional development. Furthermore, we regularly update our
					course offerings to ensure that you have access to the latest
					technologies and emerging areas of computer science, keeping you
					ahead of the curve in this rapidly evolving field.</p>

			</div>
			<a href="#course" class="explore-btn">Explore Courses</a>
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
		</main>
		<script>
		const accountBtn = document.querySelector('.account-btn');
		const accountDropdown = document.querySelector('.account-dropdown');

		accountBtn.addEventListener('click', () => {
			accountDropdown.style.display = accountDropdown.style.display === 'none' ? 'block' : 'none';
		});

		document.addEventListener('click', (event) => {
			if (!event.target.matches('.account-btn') && !event.target.closest('.account-dropdown')) {
				accountDropdown.style.display = 'none';
			}
		});
		const leftButton = document.querySelector('.left-button');
		const rightButton = document.querySelector('.right-button');
		const categoryCards = document.querySelectorAll('.category-card');

		let activeCardIndex = 0;

		leftButton.addEventListener('click', () => {
			activeCardIndex = (activeCardIndex - 1 + categoryCards.length) % categoryCards.length;
			updateActiveCard();
		});

		rightButton.addEventListener('click', () => {
			activeCardIndex = (activeCardIndex + 1) % categoryCards.length;
			updateActiveCard();
		});

		function updateActiveCard() {
			categoryCards.forEach((card, index) => {
				card.classList.toggle('active', index === activeCardIndex);
			});
		}
		function showPopupMessage() {
			var popup = document.createElement("div");
			popup.className = "popup-message";
			popup.innerHTML = "Added to cart";
			document.body.appendChild(popup);

			setTimeout(function() {
				document.body.removeChild(popup);
			}, 2000);
		}

		document.querySelector(".buy-button").addEventListener("click",
			function() {
				showPopupMessage();
			});
		</script>

		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.sticky.js"></script>
		<script src="js/click-scroll.js"></script>
		<script src="js/custom.js"></script>


		<script src="script.js"></script>
</body>
</html>
