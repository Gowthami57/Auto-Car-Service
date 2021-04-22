
<?php
$to ='csabhi1999@gmail.com';
$sub='get lost';
$message='tatti khalo';
$header='From: soodheena72@gmail.com';
if(mail($to, $sub, $message, $header)){
	echo "<h1> mail has sent successfully";
}
else
echo "failed";

?>