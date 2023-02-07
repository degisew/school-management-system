<?php 
include ('connection.php');
$id=$_POST['id'];
$status=$_POST['status'];
$role=$_POST['role'];
$table='';
switch($role){
    case 'student': $table='students';
    break;
    case 'teacher': $table='teachers';
    break;
    case 'director': $table='director';
    break;
}

if($status==1){
    $status=0;
}else{
    $status=1;
}
//echo $role;
//if()
//should accept the selected user to be deactivated from the data table.
$sql="UPDATE $table SET statuss='$status' where auto_id='$id'";
$query=mysqli_query($conn,$sql);

if($query){
    echo 'yes';  
}
?>