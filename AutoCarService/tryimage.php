<!DOCTYPE html>
<html>
<head>
<title>Pagina 1 form</title>
</head>
<body>

<div>This is our upload control</div>

<form name="form" action="" method="post" enctype="multipart/form-data">
    <input type="file" name="foto">
<br>
    <input type="submit" name="sub" value="Insert">
  <input type="submit" name="submit2" value="display">
 </form>

 </body>
</html>
<?php 
$conn=mysqli_connect("localhost","root","","car_service")or die("Can't Connect to Database");

if(isset($_POST['sub'])){
$file_get = $_FILES['foto']['name'];
$temp = $_FILES['foto']['tmp_name'];

$file_to_saved = "images/".$file_get;//Documents folder, should exist in       your host in there you're going to save the file just uploaded

move_uploaded_file($temp, $file_to_saved);
echo $file_to_saved;

$insert_img = mysqli_query($conn,"INSERT INTO my_table (field_image) values  ('".$file_to_saved."')");
if ($insert_img) {
# code...
echo "Img inserted successfully";
}
else{
 echo "There is something wrong with this code. Eff!";
}

}

if(isset($_POST["submit2"]))
{

   $res=mysqli_query($conn,"select * from something");
   echo "<table>";
   echo "<tr>";
   
   while($row=mysqli_fetch_array($res))

   {
   	$val=$row[0];
   	   echo "<tr>";
   echo "<td>"; 
   echo "<img src='$val' style='height:300px; width:200px;'>";
   echo "</td>";
    echo "</tr>";
   } 
  
   
   echo "</table>";
  }

 ?>