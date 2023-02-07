<?php
include('connection.php');
//$id=$_POST['id'];
$fname=$_POST['fn'];
$mname=$_POST['mn'];
$lname=$_POST['ln'];
$age=$_POST['age'];
$gender=$_POST['sex'];
$grade=$_POST['level'];
$phone=$_POST['phonen'];
$address=$_POST['add'];
$username=$fname.'1234';
$password='12345678';
$status='1';
$role='student';
$sql="INSERT INTO students (firstname,middlename,lastname,age,gender,phone,address,grade,username,userpassword,role,userstatus) VALUES('$fname','$mname','$lname','$age','$gender','$phone','$address','$grade','$username','12345678','$role','1')";

$query= mysqli_query($conn,$sql);

if($query){
    echo json_encode('ok');
}else{
    echo json_encode('error');
}

?>