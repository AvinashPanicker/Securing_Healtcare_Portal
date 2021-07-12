  <?php
  
  
  
  
  
  
$org="a.mp4";

$output="68692.mp4";




$myFile = "videoupload/".$org;
echo "Orginal : ".md5_file($myFile)."<br>";
$fh = fopen($myFile, 'r');
$vid = fread($fh, filesize($myFile));
fclose($fh);
  $olen=filesize($myFile);

 // echo $olen;
  
  
  



$myFile = "output/".$output;
$fh = fopen($myFile, 'r');
$vid = fread($fh, $olen);
fclose($fh);

$myFile = "output/$output";
$fh = fopen($myFile, 'w') or die("can't open file");

fwrite($fh, $vid);

fclose($fh);


//echo "<br>".filesize($myFile)."<br>";
  
  echo "Output :: ".md5_file($myFile)."<br>";
  
?>