<?php
//session_start();
include('../db/connectionI.php');
//$db_name="music"; // Database name 


// Connect to server and select databse.


// username and password sent from form 
$myusername=$_POST['UserName']; 
$mypassword=$_POST['Password']; 

// To protect MySQL injection (more detail about MySQL injection)
$myusername = stripslashes($myusername);
$mypassword = stripslashes($mypassword);
$myusername = mysql_real_escape_string($myusername);
$mypassword = mysql_real_escape_string($mypassword);
	
if($myusername=="admin" && $mypassword=="admin")
{

$_SESSION['user'] ="admin";
$_SESSION['username'] ="";
	header("location:../dashboard/dashboard.php");
 

}

elseif($_POST['type']=="Doctor")
{
//echo "teacher $myusername $mypassword";
$tbl_name="doctor"; // Table name 
$sql="SELECT * FROM $tbl_name WHERE email='$myusername' and password='$mypassword'";
$result=mysqli_query($con,$sql);
$_SESSION['email']=$myusername;
// Mysql_num_row is counting table row
$count=mysqli_num_rows($result);
// If result matched $myusername and $mypassword, table row must be 1 row

// Register $myusername, $mypassword and redirect to file "login_success.php"
 $result = mysqli_query($con,"SELECT * FROM $tbl_name WHERE email='$myusername' and password='$mypassword'") or die('Could not connect: ' . mysqli_error($con));
$f=0;
while($row = mysqli_fetch_array($result))
  {


$_SESSION['user'] ="doctor";
$_SESSION['userid'] =$row['id'];

$_SESSION['question'] =$row['question'];

$_SESSION['answer'] =$row['answer'];

$_SESSION['doctor'] =$myusername;
	header("location:../dashboard/dashboard.php");
	$f=1;
  }

if($f==0)
header("location:login1.php");
}
elseif($_POST['type']=="Patient")
{
//echo "teacher $myusername $mypassword";
$tbl_name="patient"; // Table name 















$sql="SELECT * FROM $tbl_name WHERE patient_regno='$myusername' and password='$mypassword'";
$result=mysqli_query($con,$sql);

// Mysql_num_row is counting table row
$count=mysqli_num_rows($result);
// If result matched $myusername and $mypassword, table row must be 1 row

// Register $myusername, $mypassword and redirect to file "login_success.php"
 $result = mysqli_query($con,"SELECT * FROM $tbl_name WHERE patient_regno='$myusername' and password='$mypassword'") or die('Could not connect: ' . mysqli_error($con));
$f=0;
while($row = mysqli_fetch_array($result))
  {



$_SESSION['email']=$row['email'];


$_SESSION['user'] ="patient";
$_SESSION['userid'] =$myusername;
$_SESSION['username'] =$row['name'];
	header("location:../dashboard/dashboard.php");
	$f=1;
  }
  
  if($f==0)
header("location:login1.php");

}


else
{

header("location:login1.php?a=1");

}







?>
 
 



