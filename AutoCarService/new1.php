<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<head>
	<title></title>

	<style>
		

#size{
  width:60%;
  height:50%;
}
.alignment-top{
  position:absolute;
  top:30%;
}

#fix{
  position:fixed;
  left:55%;
  top:25%;
  /* height:100%; */
  /*overflow-y: scroll;*/
  
}
	</style>
</head>
<body style="background-color:lightgray;">

 <nav class="navbar navbar-expand-md bg-dark  fixed-top">
  <div class="container">
    <a class="navbar-brand text-white ml-2" href="#"><span class="fa fa-car " aria-hidden="true"></span><strong >AUTO CAR SERVICE</strong></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
  <span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="collapsibleNavbar">
  <ul class="navbar-nav ms-auto ">
    <li class="nav-item ">
        <a  class="nav-link text-white " href="index.html"><strong>Home</strong></a>
    </li>
  </ul>
</div>
</div>
 </nav>  



</body>
</html>

<?php

$serviceCenterName= 'DEV AUTOMOTIVES';
$conn=mysqli_connect("localhost","root","","car_service")or die("Can't Connect to Database");
$query=mysqli_query($conn, "SELECT * FROM services where centerName = '$serviceCenterName'");
$res=mysqli_fetch_array($query);

       
	echo "<form action='' method='post'>";
  echo '<div class="alignment-top">' ;   
  
while($row=mysqli_fetch_array($query)){

   echo ' <div class="container d-flex justify-content-center mx-5 mt-4 bg-white align-items-center w-50 " style= "border:1px solid black; border-radius:10px;background-color: whitesmoke;  box-shadow: 5px 5px 5px #0a0a0a;">
   
    <div class="mt-3 flex-wrap">
    <img class="img-fluid h-10 mb-3" id="size" src='.$row[4].'>
    </div>
    <div class="ml-2 mt-0 flex-wrap ">
    <input type="checkbox" name="check_list[]" value="'.$row[2].'"> <label style="font-weight:bolder">'.$row[2].'</label>
    <p >'.$row[3].'</p>
    <button  class="btn btn-danger"style="margin-bottom: 5%">Normal: '.$row[5].'</button>
                          <button  class="btn btn-danger"style="margin-bottom: 5%">SUV: '.$row[6].'</button>
                          <button  class="btn btn-danger"style="margin-bottom: 5%">Luxury: '.$row[7].'</button>
    </div>
    
    </div>
    ';
}

echo '</div>';

$date=date("Y-m-d");
	$date1=strtotime($date);
	$maxDate=strtotime("+8 day",$date1);
	$maxDate= date('Y-m-d', $maxDate);
  //ffff

//   echo "<div class='container '>
//   <aside class='px-lg-5 my-5 fixed-top' >
//        <div class='card mt-5 pull-right' style='width:30rem;height: 25rem;'>
//          <h2 class='card-title text-center'>Select your Time slot :</h2> 
//          <input type='date' name='slot' min='$date'  max='$maxDate'><br>
//          <label><h5>Choose your car catogory:</h5></label>
//          <select name='car' id='car'  data-width='100%'  >
//            	 <option>Choose your car </option>
//               <option value='normal'><b>Normal:-  3lac-13lac </b></option>
//              <option value='suv'><b>SUV:-  14lac- 30lac</b></option>
//              <option value='luxury'><b>Luxury:-  31 lac- Above</b></option>
//            </select><br><br>
//          <div class='px-5 mx-5'> 
//          <div class='btn-group mr-2 aria-label='First group'>
//                       <input type='submit' value='09-10 AM'  name='slotBook' class='btn-danger btn-sm mx-2 my-2 '>
//                          <input type='submit' value='10-11 AM' name='slotBook' class='btn-danger btn-sm mx-2 my-2'>
//                          <input type='submit' value='11-12 AM' name='slotBook' class='btn-danger btn-sm mx-2 my-2'></div>
//            <div class='btn-group mr-2 aria-label='Second group'>               
//                         <input type='submit' value='12-01 PM'  name='slotBook' class='btn-danger btn-sm mx-2 my-2'>
//                         <input type='submit' value='02-03 PM' name='slotBook' class='btn-danger btn-sm mx-2 my-2'>
//                         <input type='submit' value='03-04 PM'  name='slotBook' class='btn-danger btn-sm mx-2 my-2'></div>
//                         <div class='btn-group mr-2 aria-label='Third group'>            
//                          <input type='submit' value='04-05 PM'  name='slotBook' class='btn-danger btn-sm mx-2 my-2'>
//                         <input type='submit' value='05-06 PM'  name='slotBook' class='btn-danger btn-sm mx-2 my-2'>
//                         <input type='submit' value='06-07 PM'  name='slotBook' class='btn-danger btn-sm mx-2 my-2'></div>
//                         <div class='btn-group mr-2 aria-label='Fourth group'> 
//                        <input type='submit' value='07-08 PM'  name='slotBook' class='btn-danger btn-sm mx-2 my-2'></div>
           
//        </div>
//        </div>
       
//       </aside>  
// </div>";
 
echo "<div  id='fix' >
<div class='card ' style='width:90%;border:1px solid black; border-radius:10px;background-color: whitesmoke;  box-shadow: 5px 5px 5px #0a0a0a;'>
<label class='mt-3'><h2 style='text-align:center;text-decoration:underline;'>Select your time slot:</h2></label><br>

<label><h5 style='margin-left:15%  ;'>Choose date:</h5></label>
 <input type='date' name='slot' min='$date' style='height:60%;width:59%; margin-left: 15%  ;' max='$maxDate' ><br>

  <label><h5 style=margin-left:15%;'>Choose your car catogory:</h5></label>
<select  name='car' id='car'  style='width:59%;margin-left:15%;'>
  <option>Choose your car </option>
 <option value='normal'><b>Normal:-  3lac-13lac </b></option>
 <option value='suv'><b>SUV:-  14lac- 30lac</b></option>
 <option value='luxury'><b>Luxury:-  31 lac- Above</b></option>
</select><br><br>

<div class='px-5 '> 
        
                       <input type='submit' value='09-10 AM'  name='slotBook' class='btn-danger btn-sm mx-2 my-2 '>
                          <input type='submit' value='10-11 AM' name='slotBook' class='btn-danger btn-sm mx-2 my-2'>
                          <input type='submit' value='11-12 AM' name='slotBook' class='btn-danger btn-sm mx-2 my-2'>
                           
                         <input type='submit' value='12-01 PM'  name='slotBook' class='btn-danger btn-sm mx-2 my-2'>
                         <input type='submit' value='02-03 PM' name='slotBook' class='btn-danger btn-sm mx-2 my-2'>
                         <input type='submit' value='03-04 PM'  name='slotBook' class='btn-danger btn-sm mx-2 my-2'>
                                   
                          <input type='submit' value='04-05 PM'  name='slotBook' class='btn-danger btn-sm mx-2 my-2'>
                         <input type='submit' value='05-06 PM'  name='slotBook' class='btn-danger btn-sm mx-2 my-2'>
                         <input type='submit' value='06-07 PM'  name='slotBook' class='btn-danger btn-sm mx-2 my-2'>
                       
                        <input type='submit' value='07-08 PM'  name='slotBook' class='btn-danger btn-sm mx-2 my-2'>
           
        </div>
<br><br>
</div></div>
          ";




echo "</form>";


if(isset($_POST['slotBook'])){

	$slot=$_POST['slot'];
	$carType= $_POST['car'];
  $_SESSION['user']='Heena';
  $_SESSION['phone']='7018706040'; 
  $n=0;
  $time=$_POST['slotBook'];

	if(!empty($_POST['check_list'])){

foreach($_POST['check_list'] as $selected){

$arr[$n] = ($n+1). ". ". $selected;
$n++;
}
$services_str=implode(" ", $arr);
$to ='soodheena0001@gmail.com';
$sub='Request For Slot Booking';



$message='Username : '.  $_SESSION['user']."\n".
'Phone number : '.  $_SESSION['phone']. "\n" .
'Services requested for : '.$services_str . "\n".
'Slot Date :-'. $slot."\n".
'Type of a car :-'. $carType."\n".
'Timings : '.$time;
$user=$_SESSION['user'];
$phone=$_SESSION['phone'];
$header='From: soodheena72@gmail.com';
echo "Message= ". $message;

$insertSlot="INSERT INTO `slot_booking`(`username`, `phone`, `services`, `date`, `car_type`, `time`) VALUES ('$user','$phone','$services_str','$slot','$carType','$time')";
$insertResult=mysqli_query($conn,$insertSlot)or die(mysqli_error($conn)); 

// if(mail($to, $sub, $message, $header)){
// echo "<h1> mail has sent successfully";

// }

// else
// echo "failed to send mail";

}
else{
  echo "<script>alert('Services can not be empty !! Please select services');</script>";
}


}
else{
  echo "Something went wrong please try again ";
}

?>