<?php
include("../header_inner.php");
?>
<form enctype="multipart/form-data" action="" method="POST">
<h2>Video Hiding</h2>
<div  class='col-md-6'> 

Choose a Image to upload: <input name="uploadedfile" type="file" class='form-control' /></div>

<div  class='col-md-6'> Choose a Video to upload: <input name="uploadedfile2" type="file"  class='form-control'  /></div>
<div  class='col-md-6'> Password <input name="pass" type="text" class='form-control'  /></div>
<div  class='col-md-6'> <input type="submit" value="Upload File" name='sub2'  class='btn btn-success '/></div>
</form>


  <?php
  error_reporting(0);
  if(isset($_POST['sub2']))
{
  $target_path = "imageupload/";

$target_path = $target_path . basename( $_FILES['uploadedfile']['name']); 

if(move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $target_path)) {
    echo "The file ".  basename( $_FILES['uploadedfile']['name']). 
    " has been uploaded";
} else{
    echo "There was an error uploading the file, please try again!";
}



$target_path2 = "videoupload/";

$target_path2 = $target_path2 . basename( $_FILES['uploadedfile2']['name']); 

if(move_uploaded_file($_FILES['uploadedfile2']['tmp_name'], $target_path2)) {
    echo "The file ".  basename( $_FILES['uploadedfile2']['name']). 
    " has been uploaded";
} else{
    echo "There was an error uploading the file, please try again!";
}
  
  
  
$filename=basename( $_FILES['uploadedfile2']['name']);
$imgfile="a.jpg";


//$password="bcb04b7e103a0cd8b54763051cef08bc55abe029fdebae5e1d417e2ffb2a00a3";
$password=$_POST['pass'];  
$myFile = $target_path;


  echo filesize($myFile)."<br>";

$fh = fopen($myFile, 'r');
$img = fread($fh, filesize($myFile));
fclose($fh);
//echo $theData;


$myFile = $target_path2;
$fh = fopen($myFile, 'r');
$vid = fread($fh, filesize($myFile));
fclose($fh);
  
  echo filesize($myFile)."<br>";
  
  
  
  
  
  
  
  
  # --- ENCRYPTION ---
   
    # the key should be random binary, use scrypt, bcrypt or PBKDF2 to
    # convert a string into a key
    # key is specified using hexadecimal
    $key = pack('H*', $password);
    
    # show key size use either 16, 24 or 32 byte keys for AES-128, 192
    # and 256 respectively
    $key_size =  strlen($key);
 //   echo "Key size: " . $key_size . "\n";
    $filename2="videoupload/".$filename;
    $plaintext =file_get_contents($filename2);

    # create a random IV to use with CBC encoding
    $iv_size = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC);
    $iv = mcrypt_create_iv($iv_size, MCRYPT_RAND);
    
    # creates a cipher text compatible with AES (Rijndael block size = 128)
    # to keep the text confidential 
    # only suitable for encoded input that never ends with value 00h
    # (because of default zero padding)
    $ciphertext = mcrypt_encrypt(MCRYPT_RIJNDAEL_128, $key,
                                 $plaintext, MCRYPT_MODE_CBC, $iv);

    # prepend the IV for it to be available for decryption
    $ciphertext = $iv . $ciphertext;
    
    # encode the resulting cipher text so it can be represented by a string
    $ciphertext_base64 = base64_encode($ciphertext);

  //  echo  $ciphertext_base64 . "\n";
	
	/* $filename3="enc/".$filename;
	$myFile = "$filename3";
$fh = fopen($myFile, 'w') or die("can't open file");
$stringData = $ciphertext_base64;
fwrite($fh, $stringData);

fclose($fh);
*/

$rand4=rand(10000,99999);
$myFile = "videoextract/$rand4.jpg";
$fh = fopen($myFile, 'w') or die("can't open file");
$stringData = $img."#%!".$ciphertext_base64;
fwrite($fh, $stringData);

fclose($fh);
 echo strlen($ciphertext_base64)."<br>";
 

echo "<br><br><a href='$myFile' target='_blank' class='link'>Click For Encrypt File $rand4.jpg</a>";








$url="http://akrut.in/SMS/email.php"; 
$email="avinashapanicker7025@gmail.com";
$ch = curl_init();
if (!$ch){die("Couldn't initialize a cURL
handle");} $ret = curl_setopt($ch,CURLOPT_URL,$url); 
curl_setopt ($ch,CURLOPT_POST, 1);
curl_setopt($ch,
CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch,CURLOPT_SSL_VERIFYHOST, 2);
curl_setopt ($ch,CURLOPT_POSTFIELDS,"email=$email&msg=Your File Name is $rand4.jpg and Password is $password ");
$ret = curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

 curl_exec($ch); //
 curl_close($ch);







}
?>