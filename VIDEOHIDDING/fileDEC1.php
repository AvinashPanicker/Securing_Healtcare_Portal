<?php
include("../header_inner.php");
?>
<form enctype="multipart/form-data" action="" method="POST">
<h2>Video Extraction</h2>
<div  class='col-md-6'>
Enter Image Name : <input name="uploadedfile" type="text" class='form-control' /></div>
<div  class='col-md-6'>
Password <input name="pass" type="text" class='form-control' /></div>
<div  class='col-md-6'>
<input type="submit" value="Upload File" name='sub2' class='btn btn-success' /></div>
</form>

<?php
error_reporting(0);
  if(isset($_POST['sub2']))
{
  
$myFile = "videoextract/$_POST[uploadedfile]";   // input image file with video inside path
echo $myFile."<br>";

$password=$_POST['pass'];  


$fh = fopen($myFile, 'r');
$img = fread($fh, filesize($myFile));
fclose($fh);
//echo $theData;

$data=explode("#%!",$img);

$video=$data['1'];

$rand=rand(9999,100000);

$filename="$rand.mp4";

$myFile = "videoextract/$filename";
$fh = fopen($myFile, 'w') or die("can't open file");
$stringData = $video;
fwrite($fh, $stringData);

fclose($fh);
 echo strlen($myFile)."<br>";
  

  
  
  
  
  
  
  
  
  
  
  
  
  # --- DECRYPTION ---
//$filename="a.jpg";
    # the key should be random binary, use scrypt, bcrypt or PBKDF2 to
    # convert a string into a key
    # key is specified using hexadecimal
    $key = pack('H*', $password);
    
    # show key size use either 16, 24 or 32 byte keys for AES-128, 192
    # and 256 respectively
    $key_size =  strlen($key);
 //   echo "Key size: " . $key_size . "\n";
    

    # create a random IV to use with CBC encoding
    $iv_size = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC);
    //$iv = mcrypt_create_iv($iv_size, MCRYPT_RAND);
    
    # creates a cipher text compatible with AES (Rijndael block size = 128)
    # to keep the text confidential 
    # only suitable for encoded input that never ends with value 00h
    # (because of default zero padding)
 
    # prepend the IV for it to be available for decryption
  
  //  echo  $ciphertext_base64 . "\n";








$myFile = "videoextract/$filename";
$fh = fopen($myFile, 'r');
$ciphertext_base64 = fread($fh,filesize($myFile));
fclose($fh);












    # === WARNING ===

    # Resulting cipher text has no integrity or authenticity added
    # and is not protected against padding oracle attacks.
    
    # --- DECRYPTION ---
    
    $ciphertext_dec = base64_decode($ciphertext_base64);
    
    # retrieves the IV, iv_size should be created using mcrypt_get_iv_size()
    $iv_dec = substr($ciphertext_dec, 0, $iv_size);
    
    # retrieves the cipher text (everything except the $iv_size in the front)
    $ciphertext_dec = substr($ciphertext_dec, $iv_size);

    # may remove 00h valued characters from end of plain text
    $plaintext_dec = mcrypt_decrypt(MCRYPT_RIJNDAEL_128, $key,
                                    $ciphertext_dec, MCRYPT_MODE_CBC, $iv_dec);
    
   // echo  $plaintext_dec . "\n";

	
$filename4="output/".$filename;
$myFile = "$filename4";
$fh = fopen($myFile, 'w') ;
$stringData = $plaintext_dec;
fwrite($fh, $stringData);

fclose($fh);
  echo "<a href='$filename4' target='_blank'>Download</a>";
  }
?>