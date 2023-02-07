<?php
$user='root';
$password='';
$port='localhost:3306';
$db='montossorian';
$conn=mysqli_connect($port,$user,$password,$db);
// $sql='create database montossorian';
// $conn=mysqli_connect()
if(!$conn)
echo 'not connected';
?>