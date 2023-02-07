<?php
include 'connection.php';
$sql='create database montossorian';

$execute=mysqli_query($conn,$sql);
if($execute)
echo 'database created';
else echo 'DB creation failed';
?>