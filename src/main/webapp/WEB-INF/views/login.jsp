<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="https://www.thymeleaf.org"
	xmlns:sec="https://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>


<script type="text/javascript"  src="/js/adminLogin.js" async ></script>
<link rel="stylesheet" href="/css/adminLogin.css">

<!------ Include the above in your HEAD tag ---------->
<title><spring:message code="message.login.title" /></title>
</head>
<body>


	<section class="login-block">
		<div class="container">
			<div class="row">
				<div class="col-md-4 login-sec">
					<h2 class="text-center">
						<spring:message code="message.login.lognNow" />
					</h2>
					<form class="login-form">
						<div class="form-group">
							<label for="exampleInputEmail1" class="text-uppercase"><spring:message
									code="message.login.user" /></label> <input type="text"
								class="form-control" placeholder="">

						</div>
						<div class="form-group">
							<label for="exampleInputPassword1" class="text-uppercase"><spring:message
									code="message.login.password" /></label> <input type="password"
								class="form-control" placeholder="">
						</div>


						<div class="form-check">
							<label class="form-check-label"> <input type="checkbox"
								class="form-check-input"> <small><spring:message
										code="message.login.rememberMe" /></small>
							</label>
							<button type="submit" class="btn btn-outline-primary btn-sm float-right">Submit</button>
						</div>

					</form>
					<div class="copy-text">
						<i class="fa fa-heart"></i> Created by Lalit <i
							class="fa fa-heart"></i>
							<button type="submit" class="btn btn-outline-dark btn-sm float-right signUp">Sign Up</button>
					</div>
					
				</div>
				<div class="col-md-8 banner-sec">
					<div id="carouselExampleIndicators" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carouselExampleIndicators" data-slide-to="0"
								class="active"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img class="d-block img-fluid"
									src="https://static.pexels.com/photos/33972/pexels-photo.jpg"
									alt="First slide">
								<div class="carousel-caption d-none d-md-block">
									<div class="banner-text">
										<h4>Welcome to Tutorial Creator</h4>
										<p>You can customize the UI and create your own
											tutorial.Hope you like it!</p>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid"
									src="https://images.pexels.com/photos/7097/people-coffee-tea-meeting.jpg"
									alt="First slide">
								<div class="carousel-caption d-none d-md-block">
									<div class="banner-text">
										<h4>Welcome to Tutorial Creator</h4>
										<p>You can customize the UI and create your own
											tutorial.Hope you like it!</p>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid"
									src="https://images.pexels.com/photos/872957/pexels-photo-872957.jpeg"
									alt="First slide">
								<div class="carousel-caption d-none d-md-block">
									<div class="banner-text">
										<h4>Welcome to Tutorial Creator</h4>
										<p>You can customize the UI and create your own
											tutorial.Hope you like it!</p>
									</div>
								</div>
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleIndicators"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next"
							href="#carouselExampleIndicators" role="button" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>

					</div>
				</div>
			</div>
	</section>
	
</body>
</html>