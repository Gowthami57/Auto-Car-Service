<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<!-- <form action="#" method="post">
<input type="checkbox" name="check_list[]" value="C/C++"><label>C/C++</label><br/>
<input type="checkbox" name="check_list[]" value="Java"><label>Java</label><br/>
<input type="checkbox" name="check_list[]" value="PHP"><label>PHP</label><br/>
<input type="submit" name="submit" value="Submit"/>
</form> -->

</body>
</html>
<?php

$n=3;
echo "<form method='post'>";
while($n!=0){
	echo "<input type='checkbox' name='check_list[]' value='C/C++ $n'><label>C/C++". $n. "</label><br/>";
$n--;
}
echo "<input type='submit' name='submit' value='submit'>";

echo "</form>";
if(isset($_POST['submit']))
{
	if(!empty($_POST['check_list'])){
// Loop to store and display values of individual checked checkbox.
foreach($_POST['check_list'] as $selected){
echo $selected."</br>";
}
}
}
?>
