<!DOCTYPE html>

<?php include'database.php' ?>

<?php 

$TableName="event"; // Table name
$UserID = "1";
$ShortName = "New Event";
$LongName = "Come to this Event";
$Address = "123 Home St";
$X_Value = "-27.477215";
$Y_Value = "153.011852";
//DateTime
//DateTime
$Cost = "600";
$Adult = "1";
$Contact = "0411966389";
//Timestamp

$stmt = $conn->prepare("INSERT INTO $TableName (UserID, ShortName, LongName, Address, 
	X_Value, Y_Value, Cost, Adult, Contact) 
	VALUES ('$UserID', '$ShortName', '$LongName','$Address', '$X_Value', '$Y_Value',
	 '$Cost', '$Adult', 'Contact')");
$stmt -> execute();

echo "yo";

?>