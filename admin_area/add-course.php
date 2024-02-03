<?php
include("Header.php");

if (isset($_POST["deptName"]) && isset($_POST["numOfValue"]) && isset($_POST["array"])) {
    $deptName = $_POST["deptName"];
    $numOfValue = $_POST["numOfValue"];

    if ($numOfValue) {

        for ($i = 0; $i <= $numOfValue; $i++) {
            if ($i) {
                $data = $_POST["array" . $i];
                $courseName = $data["'courseName'"];
                $shortWord = $data["'shortWord'"];
                $courseCode = $data["'courseCode'"];
                $courseCredit = $data["'courseCredit'"];
                $courseType = $data["'courseType'"];

                $insertQuery = "INSERT INTO `course`(`deptName`, `courseName`, `inShort`, `courseCode`, `courseCredit`, `courseType`) VALUES  ('$deptName','$courseName','$shortWord','$courseCode','$courseCredit','$courseType')";
                $result = mysqli_query($conn, $insertQuery);
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
} else {
    if (!(isset($_GET["addcourse"]) && $_GET["addcourse"] == 'true')) {
        header('location: add-course.php?addcourse=true');
    }
}

?>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-3">
            <?php include("SideMenu.php"); ?>

        </div>
        <div class="col-md-9">
            <div class="right-box">

                <!-- ========== Start Toast ========== -->
                <?php
                if (isset($_GET["insert"]) && $_GET["insert"] === "true") {
                    ?>

                    <difv class="toast fade show toast-custom align-items-center bd-callout-warning bd-callout" role="alert"
                        aria-live="assertive" aria-atomic="true" bs-autohide="true" autohide="true">
                        <div class="d-flex">
                            <div class="toast-body text-dark fw-semibold">
                                Successfully! Course Add
                            </div>
                            <button type="button" class="btn-close me-2 m-auto" data-bs-dismiss="toast"
                                aria-label="Close"></button>
                        </div>
                    </difv>
                    <?php
                } else if (isset($_GET['insert']) && $_GET['insert'] === "false") {
                    ?>

                        <div class="toast fade show toast-custom align-items-center bd-callout-warning bd-callout" role="alert"
                            aria-live="assertive" aria-atomic="true" data-bs-autohide="true">
                            <div class="d-flex">
                                <div class="toast-body text-danger fw-semibold">
                                    Opps! Something Wrong
                                </div>
                                <button type="button" class="btn-close me-2 m-auto" data-bs-dismiss="toast"
                                    aria-label="Close"></button>
                            </div>
                        </div>

                    <?php
                }
                ?>
                <!-- ========== End Toast ========== -->



                <form action="add-course.php" method="POST"
                    class="box-inside bg-white border-rounded my-4  px-5 py-3 pb-5 shadow">
                    <h3 class="box-title">Add Course</h3>
                    <div class="mb-3">
                        <label for="" class="form-label">Select Department</label>
                        <select class="form-select" name="deptName" id="" required>
                            <option>Choose Department</option>
                            <?php
                            $selectQuery = "SELECT deptID,inShort  FROM `department`";
                            $result = mysqli_query($conn, $selectQuery);
                            $numRows = mysqli_num_rows($result);
                            if ($numRows) {
                                while ($row = mysqli_fetch_assoc($result)) {

                                    $shortForm = $row["inShort"];
                                    echo '<option value="' . $shortForm . '">' . $shortForm . '</option>';
                                }
                            } else {
                                echo '<option class="text-danger">Insert Department First</option>';
                            }

                            ?>
                        </select>
                    </div>
                    <input value="" name='numOfValue' type="text" id="numOfValue" hidden class="hidden ">
                    <div id="field">
                        <div class="row gap-0" style="--bs-gap: 0rem; --bs-gutter-x:5px">
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <input type="text" class="form-control" name="array['courseName']" id=""
                                        aria-describedby="helpId" placeholder="Course Name" required />
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="mb-3">
                                    <input type="text" class="form-control" name="array['shortWord']" id=""
                                        aria-describedby="helpId" placeholder="In Short Word" required />
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="mb-3">
                                    <input type="text" class="form-control" name="array['courseCode']" id=""
                                        aria-describedby="helpId" placeholder="Course Code" required />
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="mb-3">
                                    <input type="text" class="form-control" name="array['courseCredit']" id="textNumberValidate"                                   aria-describedby="helpId" placeholder="Course Credit" required
                                        />
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="mb-3">
                                    <select class="form-select" name="array['courseType']" id="" required>
                                        <option selected>Type</option>
                                        <option>Normal</option>
                                        <option value="">Project</option>
                                        <option value="">Lab</option>
                                        <option value="">Special</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-9"></div>
                        <div class="col-md-3 d-flex align-items-end flex-column">
                            <span class='add-field cursor-pointer'>
                                Add field
                                <i class="bi bi-chevron-down"></i>
                            </span>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary mt-3">
                        GO <i class="bi bi-arrow-bar-right"></i>
                    </button>

                </form>
            </div>
        </div>
    </div>

</div>


<?php include("Footer.php"); ?>