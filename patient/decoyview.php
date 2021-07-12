<?php
session_start();
echo "<img src='$_REQUEST[data]' width='400'>";

$url="http://cloudviews.in/SMS/gateway.php"; 

$ch = curl_init();
if (!$ch){die("Couldn't initialize a cURL
handle");} $ret = curl_setopt($ch,CURLOPT_URL,$url); 
curl_setopt ($ch,CURLOPT_POST, 1);
curl_setopt($ch,
CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch,CURLOPT_SSL_VERIFYHOST, 2);
curl_setopt ($ch,CURLOPT_POSTFIELDS,"email=$_SESSION[email]&msg=Some one access your account ..");
$ret = curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

 curl_exec($ch); //
 curl_close($ch);








?>