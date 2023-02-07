<?php 
include ('connection.php');
//should accept the selected user to be deactivated from the data table.
$sql="UPDATE users SET status=0 where username='degisew'";
$query=mysqli_query($conn,$sql);

if($query){
    echo json_encode('yes!');
}
?>