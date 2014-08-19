<?php
//Connection to DataBase [Portable Code]

$host="localhost"; // Host name 
$username1="root"; // Mysql username 
$password=""; // Mysql password 
$db_name="HopSkiip"; // Database name 

// Connect to server and select databse.
$conn = new PDO("mysql:host=$host;dbname=$db_name", $username1, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
?>