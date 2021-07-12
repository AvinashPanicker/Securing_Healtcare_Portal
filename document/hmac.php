
<?php
include("../header_inner.php");
include("tables.phpp");

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


<form enctype="multipart/form-data" action="upload.php" method="POST">
<?php
if($_SESSION['user']=='patient')
{
	?>
<h4>Patient Id: </h4><input name="pid" type="text" value="<?php echo $_SESSION['userid']; ?>" <br />
<?php
}
else
{
	?>
<h4>Patient Id: </h4><input name="pid" type="text" value="<?php echo $_REQUEST['pid']; ?>" <br />
<?php
}
?>
<h4>Title: </h4><input name="title" type="text"  /><br />
<h4>Choose a file to upload: </h4><input name="uploadedfile" type="file" /><br />
<input type="submit" value="Upload File" />
</form>
</body>
</html>


