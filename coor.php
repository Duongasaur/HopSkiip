<?php include'database.php' ?>
<?php
$EventID = 4;
$stmt = $conn->prepare("SELECT X_Value FROM event WHERE ID = '$EventID'");
$stmt -> execute();
$xcor = $stmt -> fetchColumn(0);
echo $xcor, "hello";
?>