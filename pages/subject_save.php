
 <?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;

if($_POST)
{
include('../dist/includes/dbcon.php');

	$code = $_POST['code'];			
	$title = $_POST['title'];					
	$member=$_SESSION['id'];
	$rank_id = $_POST['dept'];

	$query=mysqli_query($con,"select * from subject where subject_code='$code'")or die(mysqli_error());
			$count=mysqli_num_rows($query);		
			if ($count>0)
				{
					echo "<script type='text/javascript'>alert('Course already added!');</script>";	
				echo "<script>document.location='subject.php'</script>";  
				}
			else
			{	
				mysqli_query($con,"INSERT INTO subject(subject_code,subject_title,member_id,rank_id) 
				VALUES('$code','$title','$member','$rank_id')")or die(mysqli_error());
				// echo "<script type='text/javascript'>alert('".$rank_id."');</script>";	
				echo "<script type='text/javascript'>alert('Successfully added a Course!');</script>";	
				echo "<script>document.location='subject.php'</script>";  
			}
}					  
	
?>
