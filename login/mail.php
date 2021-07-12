
<?php
date_default_timezone_set('Asia/Calcutta'); 

$u=$_REQUEST['UserName'];
if($_POST['type']=="Doctor")
{
	     
 	$result = mysqli_query($con,"SELECT * FROM doctor WHERE email='$u' ");

	$row = mysqli_fetch_array($result);
	$email=$row['email'];
		$uname=$row['email'];
		$pass=$row['password'];
}
else{
	     
 	$result = mysqli_query($con,"SELECT * FROM patient WHERE patient_regno='$u' ");

	$row = mysqli_fetch_array($result);
		$email=$row['email'];
		$uname=$row['email'];
		$pass=$row['password'];
}



$url="http://cloudviews.in/SMS/gateway.php"; 
//$email="gokul.vishnu587@gmail.com";

//$rand=rand(1000,9999);
$subject="Welcome To SECURE CLOUD SYSTEM ";
$from_name="Secure File Sharing App";
$msg="Your login id:$uname And Password: $pass"; // HTML message


/*$msg=$_POST['message']."<br> Name:-".$_POST['name']."<br> Email :-".$_POST['email'];
$subject="Otosense Healthcare Enquiry";
$title=$_POST['name'];*/

$message = urlencode($msg);
$ch = curl_init();
if (!$ch){die("Couldn't initialize a cURL
handle");} $ret = curl_setopt($ch,CURLOPT_URL,$url); 
curl_setopt ($ch,CURLOPT_POST, 1);
curl_setopt($ch,
CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch,CURLOPT_SSL_VERIFYHOST, 2);
curl_setopt ($ch,CURLOPT_POSTFIELDS,"email=$email&msg=$msg&subject=$subject&title=$title");
$ret = curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
//If you are behind proxy then please uncomment below line and provide your proxyip with port.
 // $ret = curl_setopt($ch, CURLOPT_PROXY, "PROXY IP ADDRESS:PORT");
$curlresponse = curl_exec($ch); //
 if(curl_errno($ch))
echo 'curl error : '. curl_error($ch);
if (empty($ret)) {
// some kind of an error

die(curl_error($ch));
curl_close($ch); // close cURL
 } else {

$info = curl_getinfo($ch);
curl_close($ch); // close cURL

echo $curlresponse;  

header("location:login1.php") ;
}
?>