<?php
require 'valid.php';
require 'connection.php';
if(loggedin())
{
	echo 'Welcome';
	}
else
{
	Header('Location: login.php');	
}
if(isset($_POST['ticket-type'])) {
    $user_id = $_SESSION['user_id'];
    $event_id = $_SESSION['event_id'];
	$ticket_type = $_POST['ticket-type'];
	

    $booking_query = mysqli_query($conn,"insert into booking (id,cust_id,ticket_type) values ('$event_id','$user_id','$ticket_type')") or die("could not search!");
	echo "<script>alert('Booking Successful.')</script>";
	echo 'Booking ID :'.$_SESSION['user_id'];
}



?>

<!DOCTYPE HTML>
<html lang="zxx">

<head>
	<title>GPEvents Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Music Buzz Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
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
							<a class="nav-link" href="search.php">Home	
							</a>
						</li>
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