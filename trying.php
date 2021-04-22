<?php
$serviceCenterName= 'DEV AUTOMOTIVES';

$conn=mysqli_connect("localhost","root","","car_service")or die("Can't Connect to Database");
$query=mysqli_query($conn, "SELECT * FROM services where centerName = '$serviceCenterName'");
$res=mysqli_fetch_array($query);


echo $res['centerName'];


?>