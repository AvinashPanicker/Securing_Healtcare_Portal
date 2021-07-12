<?php
include("../common/menu.php");
include("../common/menu1.php");
	error_reporting(0);
?>

  <link rel="stylesheet" href="bootstrap.min.css">
  <script src="jquery.min.js"></script>
  <script src="bootstrap.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<title>Font Awesome Icons</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
  <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">

<?php
session_start();



if(isset($_POST['sub2']))
{
if($_POST['rand1']==$_POST['rand2'])	
	{
		
		if($data[1]=="JPG" || $data[1]=="jpg" || $data[1]=="PNG" ||$data[1]=="png" )
		{	
			echo "<img src='../document/decrypted/$_REQUEST[data]' width='400'>";
		}
		else
		{
			echo "<a href='../document/decrypted/$_REQUEST[data]'>View File</a>";
		}
		
	}
	else	
	{
	echo "<img src='../document/decoy/$_REQUEST[data]' width='400'>";	
		
		
	}

}
else
{
$rand=rand(1000,9999);

$url="http://akrut.in/SMS/gateway.php"; 

$ch = curl_init();
if (!$ch){die("Couldn't initialize a cURL
handle");} $ret = curl_setopt($ch,CURLOPT_URL,$url); 
curl_setopt ($ch,CURLOPT_POST, 1);
curl_setopt($ch,
CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch,CURLOPT_SSL_VERIFYHOST, 2);
curl_setopt ($ch,CURLOPT_POSTFIELDS,"email=$_SESSION[email]&msg=Your key for access is $rand ..");
$ret = curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

 curl_exec($ch); //
 curl_close($ch);

}






?>
<br /><br />
<form action="" method="post">
Enter Key
<input type="text" name="rand1" />
<input type="hidden" name="rand2" value="<?php echo $rand; ?>" />
<input type="submit" name="sub2"  />
</form>
</div>
</div>
</div>
</div>
</body>