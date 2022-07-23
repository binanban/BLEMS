<?php
	if($_SERVER['REQUEST_METHOD'] == 'POST'){


$tid=$_POST['tid'];
$subject=$_POST['subject'];
$require_time=$_POST['require_time'];
$availableDay = $_POST['availableDay'];

include 'db.php';
 $sql = mysqli_query($conn, "SELECT * FROM `instructor_availability` where TEACHER_ID='$tid' AND DAY = $availableDay");
    while($row = mysqli_fetch_array($sql)){
      $starttime=$row['FROMTIME'];  
      $endtime=$row['TOTIME'];
      

      	// Getting the biggest value of time schedule for the selected day
      	$MAXTIMEID = mysqli_query($conn, "SELECT MAX(END_TIME) as maxtime FROM `schedules` Where DAY_ID = $availableDay");
      	$rowmax = mysqli_fetch_array($MAXTIMEID);


      	// Checking the null value
      	if(isset($rowmax['maxtime']))
      	{
      		$maxID = $rowmax['maxtime'];
      	}
      	else
      	{
      		$maxID = $starttime;
      	}
      	
      	// get the available hours 
				$sqlcount = mysqli_query($conn, "SELECT COUNT(id) as id FROM `time` Where id >= $maxID AND id <= $endtime");
				$count = mysqli_fetch_array($sqlcount);

      	$countrow = $count['id'];

      	// Validate that the instructor's available minutes and hours are still within the chosen period.
      		if($countrow >= $require_time){

      			$req = $maxID+($require_time - 1);

		      	$sqlTIME = mysqli_query($conn, "SELECT MAX(id) as m FROM `time` Where id >= $maxID AND id <= $req");

				    $rowt = mysqli_fetch_array($sqlTIME);
				    $schedendtime = $rowt['m'];


				    $q = mysqli_query($conn, "SELECT * FROM `schedules` Where DAY_ID = 1");
				    $a = array();
				    foreach ($q as $value) {
				    	$a[] = $value['ROOM_ID'];
				    }

				    if(isset($a))
				    {
				    	$imp = implode(", ",$a);
							$availRoom = array();
					    $q1 = mysqli_query($conn, "SELECT ID FROM `rooms` Where id NOT IN ($imp)");
					    while($rowt = mysqli_fetch_array($q1))
					    {
					    	$availRoom[] = $rowt['ID']."<br>";
					    	
					    }

					    if(!empty($availRoom))
					    {
					    	$key = array_rand($availRoom);
						   	$pickRoom = $availRoom[$key];
				      	


				      	$sqlsched = "INSERT INTO schedules
									 (
									 TEACHER_ID,
									 ROOM_ID,
									 SUBJECT_ID,
									 DAY_ID,
									 START_TIME,
									 END_TIME
									 
									 
									   )
								VALUES (
									'$tid',
									'$pickRoom',
									'$subject',
									'$availableDay',
									'$maxID',
									'$schedendtime' 
									
								)";

								if (mysqli_query($conn, $sqlsched)){
									echo "inserted";
								}
					    }else
			      	{
			      		echo "All rooms are no longer available.";
			      	}

					   	
			      }
			      	

				    

		   
      	}else{
      		switch ($countrow) {
      			case 2:
      				$timeleft = "30 minutes";
      				break;
      			case 3:
      				$timeleft = "1 hour";
      				break;
      			case 4:
      				$timeleft = "1 hour & 30 minutes";
      				break;
      			case 5:
      				$timeleft = "2 hours";
      				break;
      			case 6:
      				$timeleft = "2 hours & 30 minutes";
      				break;
      			case 7:
      				$timeleft = "3 hours";
      				break;
      			default:
      				$timeleft = "null";
      				break;
      		}
      		echo "Available time left is ".$timeleft;
      	}

		// CHECK AVAILABLE TIME
      	// $MAXTIMEID = mysqli_query($conn, "SELECT MAX(END_TIME) as maxtime FROM `schedules` Where DAY_ID = 1");
      	// $rowmax = mysqli_fetch_array($MAXTIMEID);
      	// echo $rowmax['maxtime'];



      		
      }




  }

