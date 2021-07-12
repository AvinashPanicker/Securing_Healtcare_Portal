<?php
include("tables.php");
include("../header_inner.php");

$del_id=0;
$i=0;
?>
<h2>Doctors</h2>


		<link rel="stylesheet" type="text/css" href="datatables.min.css">
 
		<script type="text/javascript" src="datatables.min.js"></script>
		<script type="text/javascript" charset="utf-8">
			$(document).ready(function() {
				$('#example').DataTable();
			} );
		</script>

<style>
.hiddentd
{
display:inline-block;
    width:180px;
    white-space: nowrap;
    overflow:hidden !important;
   
}
</style>


<div class="">
<?php

	echo "<div class='col-sm-2' style='float:right;margin-bottom:10px;'>";
	
	  
                               
							   if($_SESSION['user']!="patient")
							   {
						
	echo "<form action='form.php' method='post'><input type='submit' name='view' value='Add New' class='form-control btn-danger'></form>";
							   }
	echo "</div>";
	
?>
<div class="clearfix"></div>
<table id="example" class="table table-striped table-bordered dataTable no-footer" cellspacing="0"  role="grid" aria-describedby="example_info"  width="100%">

       
        
            
          <?php
	
		  include("../connection.php");
	
	
	
	
	
	
	
	
if(isset($_REQUEST['del_id']))
{
$del_id=$_REQUEST['del_id'];
mysqli_query($con,"delete from $table where id='$del_id'");
//if($del_id!="")
}
	?>
    <script>


function rem()
{
if(confirm('Are you sure you want to delete this record?')){
return true;
}
else
{
return false;
}
}


function rem2()
{
if(confirm('Are you sure you want to deactive this record?')){
return true;
}
else
{
return false;
}
}
</script>
    
	
	<?php


	
	
	

	
	
		  $result2 = mysqli_query($con,"SHOW FIELDS FROM $table");

 echo "<thead><tr>";

while ($row2 = mysqli_fetch_array($result2))
 {

  $name=$row2['Field'];

  echo "<th>".
  str_replace('_', ' ', $name)
  ."</th>";
 $i++;
 }
 
							   if($_SESSION['user']!="patient")
							   {
 echo "
<th>Update</th>
 
 <th>Del</th> ";
							   }
							   echo "</tr></thead>";
   
  // $i=0;
   echo "<tbody>";
   
         //   echo "ddd".$_SESSION['user'];
                
							   if($_SESSION['user']=="patient")
							   {
								 	$result = mysqli_query($con,"SELECT * FROM $table where patient_regno='$_SESSION[userid]'");   
							   }
							   else
							   {
         
 	$result = mysqli_query($con,"SELECT * FROM $table ");
							   }
	

		while($row = mysqli_fetch_array($result))
		{
		$id=$row['0'];
		echo "<tr>";
		$tt++;
		for($k=0;$k<$i;$k++)
		{
	
			
			if($k==0)
			{
			

			echo "<td >  $tt</td>";
				
			}
			
				
			elseif($k==31)
			{
				

			echo "<td class='hiddentd'> $row[content] </td>";
				
			}
			
			
				elseif($k==40)
			{
			  

			echo "<td > <img src='uploads/$row[$k]' width='100'></td>";
				
			}
			
			else
			{
			echo "<td >$row[$k]</td>";
			}
		
		
		
		
		
		}
		
		
		
		
		   
							   if($_SESSION['user']!="doctor")
							   {
						
			echo "
			
			<td><a href='update.php?id=$id'>Update</a>
			
			
			</td>
			
			<td><a href='?del_id=$id' onclick='return rem()'>Del</a></td>
		
			</tr>";
							   }
							   
							   
							   else
							   {
echo "
			
			
		
			</tr>";
								   
								   
							   }
		
		
		}
        
        ?>
        </tbody>
    </table>
			
		
   <script src="../assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="../assets/js/bootstrap.min.js" type="text/javascript"></script>



<script type="text/javascript">
	// For demo to fit into DataTables site builder...
	$('#example')
		.removeClass( 'display' )
		.addClass('table table-striped table-bordered');
</script>

<div class="clearfix"></div>
	
    </div> 
    <?php
		include("../footer_inner.php");
	?>