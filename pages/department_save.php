<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;
if($_POST)
{
include('../dist/includes/dbcon.php');

	$code = $_POST['code'];		
	$name = $_POST['name'];			
	$rank_id = $_POST['rank'];
					
	
			mysqli_query($con,"INSERT INTO dept(dept_code,dept_name,rank_id) 
				VALUES('$code','$name','$rank_id')")or die(mysqli_error());
			// echo "<script type='text/javascript'>alert('".$rank_id."');</script>";		
			echo "<script type='text/javascript'>alert('Successfully added a department!');</script>";	
			echo "<script>document.location='department.php'</script>";  
	
}					  
	
?>
