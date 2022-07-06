<?php 
 session_start();

	if(empty($_SESSION['id'])):
		header('Location:../index.php');
	endif;

error_reporting(0);
$id = $_SESSION['id'];	

include('../dist/includes/dbcon.php');

//for class...
if (isset($_REQUEST["fetchData"])) {
	$fetchDetails = $_POST["fetchDetails"];
	 
	$getDet = mysqli_query($con, "select * from cys where cys_id ='$fetchDetails'");
	$listDet = mysqli_fetch_assoc($getDet);
	$lastClassId = $listDet["numb"];
?>
	<input type="text" value="<?php echo $fetchDetails;?>" disabled>
	<input type="text" name="classNumber" id="classNumber" value="<?php echo $listDet["numb"];?>" disabled>
<?php 
	mysqli_query($con, "update member set last_class='$lastClassId' where member_id='$id'")or die(mysqli_error());
			
    // echo json_encode(['success'=>true, 'message'=>'Added successfully']);

}

//for room...
if (isset($_REQUEST["fetchRoom"])) {
	$fetchRooms = $_POST["fetchRooms"];
	$classNumber = $_POST["classNumber"]; //number of class selected above...
	
	$getDet = mysqli_query($con, "select * from room where room_id ='$fetchRooms'");
	$listDet = mysqli_fetch_assoc($getDet);
	$lastRoomId = $listDet["capacity"];
?>
	<input type="hidden" value="<?php echo $listDet["capacity"] . " Capacity";?>" disabled>
<?php 
	if ($classNumber > $lastRoomId) { ?>
		<script>
			alert('Room Capacity is too small for the number of students');
		</script>
	<?php } else {
		mysqli_query($con,"update member set last_room='$lastRoomId' where member_id='$id'")or die(mysqli_error());
	?>
		<!-- <script>
			alert('Updated Successfully');
		</script> -->
	<?php }		
}

?>
