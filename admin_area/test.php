<?php

require_once("../config/config.php");

if(isset($_POST["batchNo"]) && isset($_POST["deptName"]) && isset($_POST["courseCode"])) {
$batchNo = $_POST["batchNo"];
$deptName = $_POST["deptName"];

$courseCode = $_POST["courseCode"];
if($_POST["sectionName"]!="...")
{
    $sectionName = $_POST["sectionName"];
}else
{
    $sectionName = "A";
}

foreach ($courseCode as $key => $value) {
   $insertQuery = "INSERT INTO `batch`(`batchName`, `batchNo`, `section`, `courseName`) VALUES ('$deptName','$batchNo','$sectionName','$value')";
   $result = mysqli_query($conn, $insertQuery);
}
if($result)
{
    header("Location: add-batch.php?insert=true&&addbatch=true");
}else
{
    header("Location: add-batch.php?insert=false&&addbatch=true");
}




}


?>