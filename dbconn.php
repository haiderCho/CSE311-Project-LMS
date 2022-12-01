<?php
session_start();

$hostname = "localhost";
$username = "root";
$password = "";
$databaseName = "LMS";

// Create connection
$conn = mysqli_connect($hostname, $username, $password, $databaseName);

// Check connection
if (!$conn) {
    echo "Connected unsuccessfully";
    die("Connection failed: " . mysqli_connect_error());
}
?>