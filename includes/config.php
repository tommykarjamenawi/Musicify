<?php
	ob_start();
	session_start();

	$timezone = date_default_timezone_set("Europe/Amsterdam");

	$con = mysqli_connect("localhost", "u474709953_tommy", "Test1234", "u474709953_musicify");

	if(mysqli_connect_errno()) {
		echo "Failed to connect: " . mysqli_connect_errno();
	}
?>