<?php


require_once("../config/config.php");

if (isset($_POST["deptName"]) &&  isset($_POST["numOfValue"]) &&  isset($_POST["array"])) {
    $deptName = $_POST["deptName"];
    $numOfValue = $_POST["numOfValue"];

    if ($numOfValue) {

        for ($i = 0; $i <=$numOfValue; $i++) {
            if($i)
            {
                $data = $_POST["array" . $i];
                $courseName = $data["'courseName'"];
                $shortWord = $data["'shortWord'"];
                $courseCode = $data["'courseCode'"];
                $courseCredit = $data["'courseCredit'"];
                $courseType = $data["'courseType'"];

                $insertQuery = "INSERT INTO `course`(`deptName`, `courseName`, `inShort`, `courseCode`, `courseCredit`, `courseType`) VALUES  ('$deptName','$courseName','$shortWord','$courseCode','$courseCredit','$courseType')";
               $result = mysqli_query($conn, $insertQuery);
            }else
            {
                    $data = $_POST["array"];
                    $courseName = $data["'courseName'"];
                    $shortWord = $data["'shortWord'"];
                    $courseCode = $data["'courseCode'"];
                    $courseCredit = $data["'courseCredit'"];
                    $courseType = $data["'courseType'"];
                    $insertQuery = "INSERT INTO `course`(`deptName`, `courseName`, `inShort`, `courseCode`, `courseCredit`, `courseType`) VALUES  ('$deptName','$courseName','$shortWord','$courseCode','$courseCredit','$courseType')";
                    $result = mysqli_query($conn, $insertQuery);
            }
              
        }
    } else {
        $data = $_POST["array"];
        $courseName = $data["'courseName'"];
        $shortWord = $data["'shortWord'"];
        $courseCode = $data["'courseCode'"];
        $courseCredit = $data["'courseCredit'"];
        $courseType = $data["'courseType'"];
        $insertQuery = "INSERT INTO `course`(`deptName`, `courseName`, `inShort`, `courseCode`, `courseCredit`, `courseType`) VALUES  ('$deptName','$courseName','$shortWord','$courseCode','$courseCredit','$courseType')";
        $result = mysqli_query($conn, $insertQuery);
    }
    if ($result) {
        header("location: add-course.php?insert=true&&addcourse=true");
    } else {
        header("location: add-course.php?insert=false&&addcourse=false");
    }
}

?>