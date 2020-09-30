<?php
$servername = "localhost";
$username = "root";
$password = "usbw";
$dbname = "vromscwm_life_bike";

// Create connection
$db = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($db->connect_error) {
    die("Connection failed: " . $db->connect_error);
}
?>