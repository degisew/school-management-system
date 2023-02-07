<?php 
include ('connection.php');

$username=$_POST['username'];
$password=$_POST['password'];

$sql="SELECT * FROM users WHERE username='$username' and userpassword='$password'";

$query=mysqli_query($conn,$sql);
$data=mysqli_num_rows($query);
$arrays=mysqli_fetch_assoc($query);
//$fetcheddata=array($arrays);
//if($data==1){
  // if($arrays['username']=='$username'&& $arrays['userpassword']=='$password'){
        echo json_encode($arrays);
   //}
//    else{
//        echo json_encode('Invalid');
//    }
// }
// else{
//     echo json_encode($arrays);
// }
?>