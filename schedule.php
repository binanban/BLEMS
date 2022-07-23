<?php 
include_once('db.php');

if(isset($_POST["key"]))
{
    if($_POST["key"] == "onchangeValue")
    {
        $tid = $_POST['id'];

        $sqls = mysqli_query($conn, "SELECT * FROM `instructor_availability` WHERE TEACHER_ID = $tid");

        $output = '<option>--Select--</option>';

        while($rows = mysqli_fetch_assoc($sqls)){
            switch ($rows['DAY']) {
                case 1:
                    $dayName = "Monday";
                    break;
                case 2:
                   $dayName = "Tuesday";
                    break;
                case 3:
                   $dayName = "Wednesday";
                    break;
                case 4:
                   $dayName = "Thursday";
                    break;
                case 5:
                   $dayName =" Friday";
                    break;
                case 6:
                   $dayName = "Saturday";
                    break;
                
                default:
                    $dayName = "ERROR";
                    break;
            }
            $output .= '
                <option value="'.$rows['DAY'] .'">'.$dayName.'</option>
            ';
        }

        exit($output);
    }
}


include('auto_generated.php')
?>

<div id="element" class="hero-body-schedule">
<h2><font color="white">Add Schedule List</font></h2>
  
    <hr>
 <form class="form-horizontal" method="post">
  <fieldset>
    </br>


     <div class="control-group">
        <label class="control-label" for="input01">Instructor:</label>
        
    <div class="controls">
   <select name="tid" class="span3333" id="tid">
    <option>--Select--</option>
    <?php
    $sql = mysqli_query($conn, "SELECT * FROM `instructor_availability` Group by TEACHER_ID");
    while($row = mysqli_fetch_array($sql)){
      $teacherid=$row['TEACHER_ID'];
       $sql1 = mysqli_query($conn, "SELECT * From teacher_info WHERE TEACHER_ID='$teacherid'");
    while($row1 = mysqli_fetch_array($sql1)){
        ?>
    
    <option value="<?php echo $row1['TEACHER_ID']; ?>"><?php echo $row1['LASTNAME']." ".$row1['FIRSTNAME']." " .$row1['MIDDLENAME'];?></option>
    

<?php }
}?>
</select>

    </div>
    </div>
 
    <div class="control-group day">
        <label class="control-label" for="input01">Day Availability:</label>
        <div class="controls " >
         <select name="availableDay" class="span3333" id="availableDay">
             
         </select>
        </div>
    </div>
    
        <div class="control-group">
        <label class="control-label" for="input01">Subject:</label>
    <div class="controls">
  <select name="subject" class="span3333" id="subject">
    <option>--Select--</option>
    <?php
       $sqls = mysqli_query($conn, "SELECT * From `subjects`");
    while($rows = mysqli_fetch_assoc($sqls)){
        ?>
    
    <option value="<?php echo $rows['SUBJECT_ID']; ?>"><?php echo $rows['SUBJECT']; ?></option>
    

<?php }?>
 </select>
    </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="input01">Require Time:</label>
        <div class="controls">
         <select name="require_time" class="span3333" id="require_time">
             <option>--Select--</option>
             <option  value="3">1 hour</option>
             <option value="4">1 hour and 30 mins</option>
             <option value="5">2 hours</option>
             <option value="6">2 hour and 30 mins</option>
             <option value="7">3 hours</option>
         </select>
        </div>
    </div>
 
    

   
   
    
    <div class="control-group">
    <div class="controls">
   <input type="submit" class="btn btn-success " name="submitb" value="Submit Form">
      
    </div>
    </div>
    
    
    </fieldset>
    </form>

</div>

<!-- ------------------------------------------------------------------------ -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
      integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
      crossorigin="anonymous" referrerpolicy="no-referrer"></script>


<script type="text/javascript">
    $(document).ready(function(){
        $(".day").hide();
        $("#tid").change(function(){
            
            loadDayAvailable();
        });
    });

    function loadDayAvailable()
    {
        var tid = $("#tid").val();
        $.ajax({
              url: 'schedule.php',
              method: 'POST',
              dataType: 'text',
              data: {
                    key: 'onchangeValue',
                    id: tid
              },
              success: function(data){
                    $(".day").show();
                    $('#availableDay').html(data);
              }
        });
    }
</script>