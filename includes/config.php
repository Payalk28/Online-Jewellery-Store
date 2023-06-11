<?php
error_reporting(1);
//db connection settings
//$host="localhost"; // Host name 
//$username="root"; // Mysql username 
//$password=""; // Mysql password 
//$db_name="bbjewels"; // Database name

//$conn = mysqli_connect($host, $username, $password);// or trigger_error(mysql_error(mysql_error(),E_USER_ERROR)
//mysqli_select_db($db_name, $conn) or die("could not connected" . mysqli_error());
$con=mysqli_connect("localhost","root","","bbjewels") or die('Database not connected');
?>