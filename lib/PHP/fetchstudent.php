<?php
include('connection.php');

$sql="SELECT * FROM students";

$query= mysqli_query($conn,$sql);

 $fetched=mysqli_fetch_array($query);
 $x=mysqli_num_rows($query);
// $list=array();
// $list[]=$fetched;

echo json_encode($fetched);
?>