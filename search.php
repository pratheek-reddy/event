<?php
require 'valid.php';
require 'connection.php';
if(loggedin())
{
	echo 'Welcome '.$_SESSION['user_id'];
	}
else
{
	Header('Location: login.php');	
}
?>

<!DOCTYPE HTML>
<html lang="zxx">

<head>
	<title>GPEvents Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="TheEvenet Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<!--<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>-->

	<!-- Bootstrap Core CSS -->
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<!-- Custom CSS -->
	<link href="css/styless.css" rel='stylesheet' type='text/css' />
	<!-- font-awesome icons -->
	<link href="css/fontawesome-all.min.css" rel="stylesheet">
	<!-- //Custom Theme files -->
	<!--webfonts-->
	<link href="//fonts.googleapis.com/css?family=Ubuntu:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">
	<!--//webfonts-->
</head>

<body>
	<!-- header -->
	<header>
	<style type="text/css">
   body { background: #2f4f4f !important; } /* Adding !important forces the browser to overwrite the default style applied by Bootstrap */
</style>
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light">
				<a class="navbar-brand" href="index.html">
					GPEvents
				</a>
				<button class="navbar-toggler ml-lg-auto ml-sm-5" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
				 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav text-center ml-auto">
						<li class="nav-item active  mr-3">
							<a class="nav-link" href="#home">Home
								<span class="sr-only">(current)</span>
							</a>
						<li class="nav-item  mr-3">
							<a class="nav-link scroll" href="mydetails.php">Edit Your Account</a>
						</li>

						<li class="nav-item">
							<a href="delete.php"> <button type="button" class="btn btn-primary" align="right" style="float:right">Delete Account</button></a>
						</li>
						<li class="nav-item">
						<a href="destroy.php" <button type="button" class="btn btn-primary" align="right" style="float:right">Log out</button></a>
						<!--<a href="login.php"	<input type="button" class="btn btn-primary" value="Log out">-->
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</header>
	<!-- //header -->
	<!-- banner -->
	<div class="banner" id="home">
		<div class="container">
			<div class="banner-text">
				<div class="slider-info text-uppercase">
					<h1 class="text-uppercase"> events at your fingertips.</h1>
					<p class="text-white">Enter the dates to check events happening in and around your location. </p>
					<form class="form-inline" action="result.php" method="post">

						<div class="form-style-agile">
							<input id="datepicker" class="form-control mb-2 mr-sm-2 mb-sm-0" id="inlineFormInput" placeholder="From YYYY-MM-DD"
							 name="from" type="text" value="" 
							 required="">
						</div>
						<div class="form-style-agile">
							<input id="datepicker" class="form-control mb-2 mr-sm-2 mb-sm-0" id="inlineFormInput" placeholder="To YYYY-MM-DD"
							 name="to" type="text" value="" 
							 required="">
						</div>
						<input type="submit" class="btn btn-primary" value="Go">
					</form>
				</div>
			</div>
		</div>
	</div>
	
		
	
	<!--
		

			 copyright 
	<div class="cpy-right text-center">
		<p>© 2018 Music Buzz. All rights reserved | Design by
			<a href="http://w3layouts.com"> W3layouts.</a>
		</p>
	</div>-->
			<!-- //copyright -->
			<!-- js-->
			<script src="js/jquery-2.2.3.min.js"></script>
			<!-- js-->
			<!-- start-smooth-scrolling -->
			<script src="js/move-top.js "></script>
			<script src="js/easing.js "></script>
			<script>
				jQuery(document).ready(function ($) {
					$(".scroll ").click(function (event) {
						event.preventDefault();

						$('html,body').animate({
							scrollTop: $(this.hash).offset().top
						}, 1000);
					});
				});
			</script>
			<!-- //end-smooth-scrolling -->
			<!-- smooth-scrolling-of-move-up -->
			<script>
				$(document).ready(function () {
					/*
					 var defaults = {
						 containerID: 'toTop', // fading element id
						 containerHoverID: 'toTopHover', // fading element hover id
						 scrollSpeed: 1200,
						 easingType: 'linear' 
					 };
					 */

					$().UItoTop({
						easingType: 'easeOutQuart'
					});

				});
			</script>
			<script src="js/SmoothScroll.min.js "></script>
			<!-- //smooth-scrolling-of-move-up -->
			<!-- Bootstrap Core JavaScript -->
			<script src="js/bootstrap.js">
			</script>
			<!-- //Bootstrap Core JavaScript -->
</body>

</html>