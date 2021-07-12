<?php
//session_start();
include("../header_inner.php");
include("table.php");

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
<style>
.reddd
{
color:#F00;	
}
.green
{
color:#F0F;	
}
</style>
<!--<style>
div
{
text-transform:capitalize;
margin-bottom:5px;	
}

</style>-->
<?php

include("data_validation.php");
include("../connection.php");



if($_REQUEST['ccid']!="")
{
mysqli_query($con,"update consultation set recover='$_REQUEST[per]',status=1 where id='$_REQUEST[ccid]'");
}

if($_REQUEST['medd']!="")
{
	//echo "Inserted ...........";
mysqli_query($con,"insert into consultation (reference_no,consultation_details,medicine,doctor_id,disease,test,remarks) value ('$_REQUEST[ref_id]','$_REQUEST[symptoms]','$_REQUEST[med]','$_SESSION[doctor]','$_REQUEST[diseaes]','$_REQUEST[test]','$_REQUEST[remarks]')");
}
$g=0;

$result = mysqli_query($con,"SHOW FIELDS FROM $table");

$i = 0;

echo "";
echo "<table width='800' border=0><tr><td width='500' valign='top'>";
echo "<h2>$title</h2>";


echo "<form action='' method='post' enctype='multipart/form-data' name='register_form' id='register_form'>";


?>

Reference Id : <input type="text" name="ref" value="<?php echo $_REQUEST['ref_id']; ?>"  width="400px">
<?php
if($_REQUEST['symptomss']=="")
{
?>
<br><br>



<br /><br />
<textarea name="symptoms" placeholder="Use enter key to seperate symptoms" style="width:400px;height:100px;"><?php echo $_REQUEST['symptoms']; ?></textarea>


<br /><br />
<textarea name="med" placeholder="Enter Medicine" style="width:400px;height:100px;"><?php echo $_REQUEST['med']; ?></textarea>



<br /><br />
<textarea name="diseaes" placeholder="Enter Disesaes" style="width:400px;height:100px;"><?php echo $_REQUEST['diseaes']; ?></textarea>


<br /><br />
<textarea name="test" placeholder="Enter Test" style="width:400px;height:100px;"><?php echo $_REQUEST['test']; ?></textarea>



<br /><br />
<textarea name="remarks" placeholder="Remarks" style="width:400px;height:100px;"><?php echo $_REQUEST['remarks']; ?></textarea>









<br /><br />
<center>
<input name="medd" value="Enter Symptoms & Submit" type="submit" class='btn btn-primary'>
</center>
<br>

</form>

















<?php



//echo "</form>";

foreach($_POST['spl'] as $item)
{
	//echo "sssssss";
  $spl=$spl.$item."*";
}
//echo "kkkkkkk".$spl;

//include("stepone.php");
}
include("../connection.php");








		
		
		
		
		
		
		
		
		
		
		
		
		
		
	  $flag=1;


echo "</td><td valign='top'>
";
include("../connection.php");

 $result = mysqli_query($con,"SELECT * FROM patient WHERE patient_regno='$_REQUEST[ref_id]'") or die('Could not connect: ' . mysqli_error($con));

while($row = mysqli_fetch_array($result))
  {
	  echo "
	  <b>
	  Patient Name : $row[name] <br>
	   DOB : $row[dob] <br>
	   Mobile :  $row[mobile]
	   </b>
	    <br><br>";
	  $flag=1;
  }
  
  $result = mysqli_query($con,"SELECT * FROM consultation WHERE reference_no='$_REQUEST[ref_id]' order by id desc") or die('Could not connect: ' . mysqli_error($con));

while($row = mysqli_fetch_array($result))
  {
	  echo " 
	  <h6>Consultation Details  ( $row[datetime] ) </h6>Consultation Details :: $row[consultation_details] <br> Medicine :: $row[medicine]
	  <br> Disease :: $row[disease]
	    <br> Test :: $row[test]
		<br> Remarks :: $row[remarks]
	  <form action='?close='1'&ccid=$row[id]&ref_id=$_REQUEST[ref_id]&&dieases=$_REQUEST[dieases]&spl=$_REQUEST[spl]&symptoms=$_REQUEST[symptoms]' >
	  
	  <input name='close' type='hidden' value='1'>
	  <input name='ccid' type='hidden' value='$row[id]'>
	  <input name='ref_id' type='hidden' value='$_REQUEST[ref_id]'>
	  
	 
	  </form> <hr>";
	  $flag=1;
  }


echo "

</td></tr></table>



<div class='clearfix'></div>


";






mysqli_close($con);

include("../footer_inner.php");

?>
   <div id="sample">
 <!-- <script type="text/javascript" src="nicEdit-latest.js"></script> <script type="text/javascript">
//<![CDATA[
        bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
  //]]>
  </script>-->