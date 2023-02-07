<?php
include('connection.php');
//$id=$_POST['id'];
$fname=$_POST['fname'];
$mname=$_POST['mname'];
$lname=$_POST['lname'];
$age=$_POST['age'];
$gender=$_POST['sex'];
$qlfn=$_POST['qlfn'];
$phone=$_POST['phonen'];
$address=$_POST['add'];
$salary= $_POST['salary'];
$exp= $_POST['exp'];
$username=$fname.'1234';
$password='12345678';
$status='1';
$role='director';

$sql="INSERT INTO director(firstname,middlename,lastname,age,gender,phone,address,qualification,experience,salary,username,password,role,status) VALUES('$fname','$mname','$lname','$age','$gender','$phone','$address','$qlfn','$exp','$salary','$username','$password','$role','$status')";

$query= mysqli_query($conn,$sql);

if($query){
    echo json_encode('ok');
}else{
    echo json_encode('error');
}

?>