
<?php
set_time_limit(0);
include("../header_inner.php");
include("tables.php");

$k=0;
?><!DOCTYPE html>
<html lang="en">
<head>
 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap.min.css">
  <script src="jquery.min.js"></script>
  <script src="bootstrap.min.js"></script>
</head>
<body>





<?php
$target_path = "uploads/";

$target_path = $target_path . basename( $_FILES['uploadedfile']['name']); 
$target_path2='101.jpg';
if(move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $target_path)) 
{
	
	copy($target_path,$target_path2);
	//move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $target_path2);
	
	
    echo "The file ".  basename( $_FILES['uploadedfile']['name']). 
    " has been uploaded";
} 
else{
    echo "There was an error uploading the file, please try again!";
}
$infile="uploads/".$_FILES['uploadedfile']['name'];

$filename=$_FILES['uploadedfile']['name'];
?>
<html>
<head>
<title>Uploading Complete</title>
</head>
<body>
<h4>Uploaded File Info:</h4>
<ul>
<li>Sent file: <?php echo $_FILES['uploadedfile']['name'];  ?>
<li>File size: <?php echo $_FILES['uploadedfile']['size'];  ?> bytes
</ul> </body>
</html>

<?php

     // Open the file and returns a file pointer resource. 
    $handle = fopen($infile, "rb") or die("Could not open a file."); 
     // Returns the read string.
    $contents = fread($handle, filesize($infile));
     // Close the opened file pointer.
    fclose($handle);
	
	
    # the key should be random binary, use scrypt, bcrypt or PBKDF2 to
    # convert a string into a key
    # key is specified using hexadecimal
    $key = pack('H*', "bcb04b7e103a0cd8b54763051cef08bc55abe029fdebae5e1d417e2ffb2a00a3");
    # show key size use either 16, 24 or 32 byte keys for AES-128, 192
    # and 256 respectively
   $key_size =  strlen($key);
  //  echo "Key size: " . $key_size . "\n";
	
 #--- ENCRYPTION ---	

    # create a random IV to use with CBC encoding
    $iv_size = mcrypt_get_iv_size(MCRYPT_BLOWFISH, MCRYPT_MODE_CBC);
    $iv = mcrypt_create_iv($iv_size, MCRYPT_RAND);
    
    # creates a cipher text 
    # to keep the text confidential 
    # only suitable for encoded input that never ends with value 00h
    # (because of default zero padding)
    $ciphertext = mcrypt_encrypt(MCRYPT_BLOWFISH, $key,
                                 $contents, MCRYPT_MODE_CBC, $iv);

    # prepend the IV for it to be available for decryption
    $ciphertext = $iv . $ciphertext;
    
    # encode the resulting cipher text so it can be represented by a string
    $ciphertext_base64 = base64_encode($ciphertext);

    #echo  $ciphertext_base64 . "\n";
	$cipher = "encrypted/$filename";
	$fh = fopen($cipher, 'w') or die("can't open file");
	fwrite($fh, $ciphertext_base64 );
    fclose($fh);
	
	
	
	
	$fh = fopen('filename.txt', 'w') or die("can't open file");
	fwrite($fh, $filename );
    fclose($fh);
	
	
	
$myFile = $cipher;
$fh = fopen($myFile, 'r');
$encdata = fread($fh, filesize($myFile));
fclose($fh);
	
	
 # --- DECRYPTION ---
 
    $ciphertext_dec = base64_decode($ciphertext_base64);
    
    # retrieves the IV, iv_size should be created using mcrypt_get_iv_size()
    $iv_dec = substr($ciphertext_dec, 0, $iv_size);
    
    # retrieves the cipher text (everything except the $iv_size in the front)
    $ciphertext_dec = substr($ciphertext_dec, $iv_size);

    # may remove 00h valued characters from end of plain text
    $plaintext_dec = mcrypt_decrypt(MCRYPT_BLOWFISH, $key,
                                    $ciphertext_dec, MCRYPT_MODE_CBC, $iv_dec);
    
    #echo  $plaintext_dec . "\n";
	$myFile = "decrypted/$filename";
	$fh = fopen($myFile, 'w') or die("can't open file");
	fwrite($fh, $plaintext_dec );
    fclose($fh);	
?>

<?php

include('../db/connectionI.php');

$myhmac=hash_hmac_file('sha512', $myFile, 'secret');
?>
<html>
<head>
<h4> Its HMAC key is: </h4>
</body>
</html>
<?php
echo $myhmac;
$sql="insert into document(patient_id,file_title,file_path,hmac) values('$_POST[pid]','$_POST[title]','$filename','$myhmac')";
mysqli_query($con,$sql) or die("ERROR :: ".mysqli_error($con));



$python = `python decoyimage.py`;
echo $python;
?>
