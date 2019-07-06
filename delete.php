
<?php
require('valid.php');
require('connection.php');
$id=$_SESSION['user_id'];
 
$result = mysqli_query($conn,"DELETE FROM customer WHERE cust_id='$id'") or die ( mysqli_error());

session_destroy();
header("Location: login.php"); 
?>