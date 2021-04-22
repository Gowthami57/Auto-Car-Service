<?php
	header("Pragma: no-cache");
	header("Cache-Control: no-cache");
	header("Expires: 0");

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Pay Your Bill</title>
<meta name="GENERATOR" content="Evrsoft First Page">
<link rel="stylesheet" type="text/css" href="paymentCSS.css">
</head>
<body onload="javascript:hideTable()" value="hide">
	<h1>Pay Your Bill</h1>
	<pre>
	</pre>
	<form method="post" action="pgRedirect.php">
	<div class="wrapper">
        <div class="payment">
          <div class="payment-logo">
            <p>p</p>
          </div>
          
          
          <h2>Payment Gateway</h2>
          <div class="form">
            <div class="card space icon-relative" >
              	<tr>
					<td><label>AMOUNT</label></td>
					<td><input title="TXN_AMOUNT" tabindex="10"
						type="text" name="TXN_AMOUNT"
						value="1">
					</td>
				</tr>
		<tr>
					<td><input class="btn" value="CheckOut" type="submit"	onclick=""></td>
				</tr>
           
            
          </div>
        </div>
      </div>
      
          <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
		<table border="1" id="table">
			<tbody>
				<tr>
					<th>S.No</th>
					<th>Label</th>
					<th>Value</th>
				</tr>
				<tr>
					<td>1</td>
					<td><label>ORDER_ID::*</label></td>
					<td><input id="ORDER_ID" tabindex="1" maxlength="20" size="20"
						name="ORDER_ID" autocomplete="off"
						value="<?php echo  "ORDS" . rand(10000,99999999)?>">
					</td>
				</tr>
				<tr>
					<td>2</td>
					<td><label>CUSTID ::*</label></td>
					<td><input id="CUST_ID" tabindex="2" maxlength="12" size="12" name="CUST_ID" autocomplete="off" value="CUST001"></td>
				</tr>
				<tr>
					<td>3</td>
					<td><label>INDUSTRY_TYPE_ID ::*</label></td>
					<td><input id="INDUSTRY_TYPE_ID" tabindex="4" maxlength="12" size="12" name="INDUSTRY_TYPE_ID" autocomplete="off" 
					value="Retail"></td>
				</tr>
				<tr>
					<td>4</td>
					<td><label>Channel ::*</label></td>
					<td><input id="CHANNEL_ID" tabindex="4" maxlength="12"
						size="12" name="CHANNEL_ID" autocomplete="off" value="WEB">
					</td>
				</tr>
				
			</tbody>
		</table>
		
	</form>
</body>
<script>
function hideTable(){
document.getElementById('table').style.visibility="hidden";
}

</script>

</html>