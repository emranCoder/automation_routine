<?php
require_once("../config/config.php");

if (isset($_POST["fetch"]) && isset($_POST["qData"]) && $_POST["fetch"]=='true') {
  $qData = $_POST["qData"];
$data = [];
$getQuery = "SELECT `courseCode` FROM `course` WHERE `deptName`='$qData'";
$result = mysqli_query($conn, $getQuery);
if($result){
    while ($row = mysqli_fetch_array($result)) {
        $data[] = $row["courseCode"]; 
    }
    if($data)
    {
        echo json_encode($data);
    }else
    {
        echo json_encode(null);
    }
    
}


}else
{
echo"false";
}

?>