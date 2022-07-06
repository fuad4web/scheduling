<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;

if($_POST)
{
include('../dist/includes/dbcon.php');

	$rank = $_POST['rank'];

			$query=mysqli_query($con,"select * from rank where rank='$rank'")or die(mysqli_error());
			$count=mysqli_num_rows($query);		
			if ($count>0)
			{
				echo "<script type='text/javascript'>alert('Faculty already added!');</script>";	
				echo "<script>document.location='rank.php'</script>";  
			}	
			else
			{	
				//echo '<script>alert("'.$rank.'");</script>';
			mysqli_query($con, "INSERT INTO `rank` (`rank`) VALUES ('$rank')")or die(mysqli_error());
				
				echo "<script type='text/javascript'>alert('Successfully added a Faculty!');</script>";	
				echo "<script>document.location='rank.php'</script>";  
			}
}					  
	
?>
