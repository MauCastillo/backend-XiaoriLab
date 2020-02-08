<?php
	/* Database connection start */
	$servername = "localhost";
	$username = "id12075287_xiara";
	$password = "&3vVv_Yh92";
	$dbname = "id12075287_xiaratest";

	mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
	try {
	  $mysqli = new mysqli($servername, $username, $password,$dbname);
	  $mysqli->set_charset("utf8mb4");
	} catch(Exception $e) {
	  error_log($e->getMessage());
	  exit('Error connecting to database'); 
	}
?>
