<?php
session_start();
 $con=mysqli_connect("localhost","root","","car_service")or die("Can't Connect to Database");
$center=$_SESSION['center']
?>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <script src="https://code.jquery.com/jquery-3.5.1.min.js" ></script>
<title></title>

</head>
<body style="background-color:lightgrey;">

<nav class="navbar navbar-expand-md bg-dark fixed-top">
  <div class="container">
    <a class="navbar-brand text-white ml-2" href="#"><span class="fa fa-car text-danger" style="margin-right: 7%" 
    aria-hidden="true"></span><strong class="ml-2">AUTO CAR SERVICE</strong></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
     aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
  <span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="collapsibleNavbar">
  <ul class="navbar-nav ms-auto ">
    <li class="nav-item ">
        <a  class="nav-link text-white " href="services.php"><strong>Services</strong></a>
    </li>
    <li class="nav-item ">
        <a  class=" text-white mx-3 btn btn-danger" href="logout.php"><strong>Logout</strong></a>
    </li>
  </ul>
</div>
</div>
 </nav>




<div class="container-fluid " style="margin:15% 0% 0% 30%;width:40%;height:50%;background-color: white;border-radius: 30px;
    box-shadow: 12px 12px 22px grey;">
       <h6 class="pt-3" style="color:red;text-align:justify;">Note : 
      Here we are providing you the facility where you can ask help from car service center, if you have stuck somewhere
       in the Jodhpur (Jaipur). <br><br>-- > By clicking on allow button you are allowing us to have the access to your location.<br >--> After Allowing, click on Start tracking button which will help service center to track your exact location. </h6>

<form method="post">
    <input type="hidden" name="longitude" id="longitude" value="<?php if(isset($_POST['longitude'])) echo $_POST['longitude']; ?>">
  <input type="hidden" name="latitude" id="latitude" value="<?php if(isset($_POST['latitude'])) echo $_POST['latitude']; ?>" >

<button style="margin: 2% 10% 5% 40% " class="btn btn-warning" id="start1" name="start1">Start tracking</button>

     </form>
     
      <button id="start" class="btn btn-primary" style="margin:2% 0% 0% 18%; position: absolute; ">Allow</button>
<!-- <button id="stop">Stop</button> -->
</div>
<div id='output'></div>
     <script>
    
      const start=document.querySelector("#start");
          document.getElementById('start1').disabled=true;
//const coordinates=[];
      start.addEventListener("click",()=>{
navigator.geolocation.getCurrentPosition(data=>{
  console.log(data);
  document.getElementById('latitude').value=data.coords.latitude;
  document.getElementById('longitude').value=data.coords.longitude;
     document.getElementById('start1').disabled=false;
// alert(data.coords.city);
},
error=> console.log(error));
      });


     </script>
</body>
</html>

<?php
if(isset($_POST['start1'])){
$long=$_POST['longitude'];
$lat=$_POST['latitude'];
 
 $phone=$_SESSION["userId"];

$query=mysqli_query($con,"Select * from userlocation where phone = $phone")
  or die(mysqli_error($con));
  $count=mysqli_num_rows($query);
      $count1=mysqli_fetch_array($query);
 $user= mysqli_query($con, "SELECT * from car_users where phone= $phone");
    
     $row=mysqli_fetch_array($user);
     $uname= $row['username'];
  if($count !=0 && (strcmp($count1['centerName'],$_SESSION['center'])==0)){
   //update user information

$res=mysqli_query($con,"UPDATE `userlocation` SET `latitude`= $lat, `longitute`= $long where `phone`= $phone")or
 die(mysqli_error($con));      
if($res){
     
 $to =$_SESSION['centerMail'];
  
//mail of service center
     
$sub=$uname.' is stucked somewhere and asking you for help';
$message="Username : ".$uname. " \n".
"Phone Number= ". $_SESSION["userId"]." \n".
"Latitude  = ". $lat." \n".
"Longitude = ". $long;
$header='From: soodheena72@gmail.com';
if(mail($to, $sub, $message, $header)){
  echo "<script> alert('Your location has sent successfully to car service provider.');</script>";

}
else
echo "failed";

}
  }

else{
$result=mysqli_query($con,"INSERT INTO `userlocation`(`phone`, `latitude`, `longitute`, `name`,`centerName`)
 VALUES ('$phone','$lat','$long', '$uname', '$center')")or die(mysqli_error($con)); 
if($result){
   
$to =$_SESSION['centerMail'];
     $user= mysqli_query($con, "SELECT * from car_users where phone= $phone");
     
     $row=mysqli_fetch_array($user);
    
     $uname= $row['username'];
$sub=$uname.' is stucked somewhere and asking you for help';
$message="Username : ".$uname. " \n".
"Phone Number= ". $_SESSION["userId"]." \n".
"Latitude  = ". $lat." \n".
"Longitude = ". $long;
$header='From: soodheena72@gmail.com';
if(mail($to, $sub, $message, $header)){
     echo "<script> alert('Your location has sent successfully to car service provider.');</script>";
}
else
echo "failed";

}  

}


}

?>