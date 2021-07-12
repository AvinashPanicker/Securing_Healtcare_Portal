<?php








$url="http://cloudviews.in/SMS/gateway.php"; 
$message = urlencode($message);
$ch = curl_init();
if (!$ch){die("Couldn't initialize a cURL
handle");} $ret = curl_setopt($ch,CURLOPT_URL,$url); 
curl_setopt ($ch,CURLOPT_POST, 1);
curl_setopt($ch,
CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch,CURLOPT_SSL_VERIFYHOST, 2);
curl_setopt ($ch,CURLOPT_POSTFIELDS,"email=gettoanish@gmail.com&msg=khu hiuh iuh ");
$ret = curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

 curl_exec($ch); //
 curl_close($ch);

?>