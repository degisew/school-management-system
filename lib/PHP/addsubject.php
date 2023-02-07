<?php
include('connection.php');
//$id=$_POST['id'];
$sname=$_POST['sname'];
$scode=$_POST['scode'];
$grade=$_POST['grade'];
$credit=$_POST['credit'];

$sql="INSERT INTO subjects VALUES('$sname','$scode','$grade','$credit')";

$query= mysqli_query($conn,$sql);

if($query){
    echo json_encode('ok');
}else{
    echo json_encode('error');
}

?>