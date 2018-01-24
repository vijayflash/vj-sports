<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>VJ SPORTS</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="home.css" rel="stylesheet">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body style="background: #ff0000">
	<nav class="navbar navbar-custom">
		<header id="name">
			India's largest online shopping for sports<span
				style="padding-left: 1100px">Bring back to action</span>
		</header>
		<ul class="nav navbar-nav">
			<li><a href="#" id="name">HOME</a></li>
			<li><a href="#" id="name">ABOUT US</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" id="name">CATEGORIES<span class="caret"></span></a>
				<ul class="dropdown-menu" style="background: #ff0032">
					<li><a href="#">CRICKET</a></li>
					<li><a href="#">BASKETBALL</a></li>
					<li><a href="#">FOOTBALL</a></li>
					<li><a href="#">VOLLEYBALL</a></li>
					<li><a href="#">HOCKEY</a></li>
					<li><a href="#">ATHLETS ZONE</a></li>
				</ul>
		</ul>




		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" id="name">LOGIN<span
					class="glyphicon glyphicon-log-in"></span></a>
				<ul class="dropdown-menu dropdown-lr animated slideInRight"
					style="width: 500px" role="menu">
					<div class="col-lg-12">
						<div class="text-center">
							<h3>
								<b>LOGIN</b>
							</h3>
						</div>
						<form id="ajax-login-form" method="post" role="form"
							autocomplete="off">
							<div class="form-group">
								<label for="username">Username</label> <input type="text"
									name="username" id="username" tabindex="1" class="form-control"
									placeholder="Username" value="" autocomplete="off">
							</div>

							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									name="password" id="password" tabindex="2" class="form-control"
									placeholder="Password" autocomplete="off">
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-xs-7">
										<input type="checkbox" tabindex="3" name="remember"
											id="remember"> <label for="remember">
											Remember Me</label>
									</div>
									<div class="col-xs-5 pull-right">
										<input type="submit" name="login-submit" id="login-submit"
											tabindex="4" class="form-control btn btn-success"
											value="Log In">
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-lg-12">
										<div class="text-center">
											<a index="5" class="forgot-password">Forgot Password?</a>
										</div>
									</div>
								</div>
							</div>
							<input type="hidden" class="hide" name="token" id="token"
								value="a465a2791ae0bae853cf4bf485dbe1b6">
						</form>
					</div>
				</ul></li>
			<c:url value="/signup" var="signup"></c:url>
			<li><a href="${signup}" id="name" style="padding-right: 40px"><span
					class="glyphicon glyphicon-user">SIGNUP</span></a></li>

		</ul>




		</div>
		</form>
	</nav>
	</div>


	<div class="container">
		<div id="mycarousel" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="resources/images/newca.jpg",  class: "tales" >
				</div>
				<div class="item">
					<img src="resources/images/newca2.jpg",  class: "tales" >
				</div>
				<div class="item">
					<img src="resources/images/newca3.jpg",  class: "tales">
				</div>
				<div class="item">
					<img src="resources/images/newca4.jpg",  class: "tales">
				</div>
			</div>
			<a class="left carousel-control" href="#mycarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#mycarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<div class="section group">
		<div class="grid_1_of_4 images_1_of_4">
			<a href="preview-3.html"><img src="images/feature-pic1.png"
				alt="" /></a>
			<h2>Lorem Ipsum is simply</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
			<p>
				<span class="strike">$528.22</span><span class="price">$505.22</span>
			</p>
			<div class="button">
				<span><img src="resources/images/newca3.jpg" alt="" /><a
					href="preview-3.html" class="cart-button">Add to Cart</a></span>
			</div>
			<div class="button">
				<span><a href="preview-3.html" class="details">Details</a></span>
			</div>
		</div>
		<div class="grid_1_of_4 images_1_of_4">
			<a href="preview-2.html"><img src="resources/images/newca3.jpg"
				alt="" /></a>
			<h2>Lorem Ipsum is simply</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
			<p>
				<span class="strike">$640.89</span><span class="price">$620.87</span>
			</p>
			<div class="button">
				<span><img src="resources/images/newca3.jpg" alt="" /><a
					href="preview-3.html" class="cart-button">Add to Cart</a></span>
			</div>
			<div class="button">
				<span><a href="#" class="details">Details</a></span>
			</div>
		</div>
		<div class="grid_1_of_4 images_1_of_4">
			<a href="preview-4.html"><img src="images/feature-pic3.jpg"
				alt="" /></a>
			<h2>Lorem Ipsum is simply</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
			<p>
				<span class="strike">$240.66</span><span class="price">$220.97</span>
			</p>
			<div class="button">
				<span><img src="resources/images/bat2.jpg" alt="" /><a
					href="preview-6.html" class="cart-button">Add to Cart</a></span>
			</div>
			<div class="button">
				<span><a href="#" class="details">Details</a></span>
			</div>
		</div>
		<div class="grid_1_of_4 images_1_of_4">
			<a href="preview-2.html"><img src="images/feature-pic4.png"
				alt="" /></a>
			<h2>Lorem Ipsum is simply</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
			<p>
				<span class="strike">$436.22</span><span class="price">$415.54</span>
			</p>
			<div class="button">
				<span><img src="" alt="" /><a href="preview-3.html"
					class="cart-button">Add to Cart</a></span>
			</div>
			<div class="button">
				<span><a href="#" class="details">Details</a></span>
			</div>
		</div>
	</div>




</body>
</html>
