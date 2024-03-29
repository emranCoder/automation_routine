<?php
include("Header.php");
header("Cache-Control: no-cache, must-revalidate");

if (isset($_POST["batchNo"]) && isset($_POST["deptName"]) && isset($_POST["courseCode"])) {
    $batchNo = $_POST["batchNo"];
    $deptName = $_POST["deptName"];
    $courseCode = $_POST["courseCode"];
    $sectionName = $_POST["sectionName"];

    foreach ($courseCode as $key => $value) {
        $insertQuery = "INSERT INTO `batch`(`batchName`, `batchNo`, `section`, `courseName`) VALUES ('$deptName','$batchNo','$sectionName','$value')";
        $result = mysqli_query($conn, $insertQuery);
    }
    if ($result) {
        header("Location: add-batch.php?insert=true&&addbatch=true");
    } else {
        header("Location: add-batch.php?insert=false&&addbatch=true");
    }
} else {
    if (!(isset($_GET["addbatch"]) && $_GET["addbatch"] == 'true')) {
        header('location: add-batch.php?addbatch=true');
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

                    <div class="toast fade show toast-custom align-items-center bd-callout-warning bd-callout" role="alert"
                        aria-live="assertive" aria-atomic="true">
                        <div class="d-flex">
                            <div class="toast-body text-dark fw-semibold">
                                Successfully! Batch Add
                            </div>
                            <button type="button" class="btn-close me-2 m-auto" data-bs-dismiss="toast"
                                aria-label="Close"></button>
                        </div>
                    </div>
                    <?php
                } else if (isset($_GET['insert']) && $_GET['insert'] === "false") {
                    ?>

                        <div class="toast fade show toast-custom align-items-center bd-callout-warning bd-callout" role="alert"
                            aria-live="assertive" aria-atomic="true">
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


                <form action="add-batch.php" method="post"
                    class="box-inside bg-white border-rounded my-4  px-5 py-3 pb-5 shadow">
                    <h3 class="box-title">Add Batch</h3>
                    <div class="mb-3">
                        <label for="" class="form-label">Select Department</label>
                        <select class="form-select dept-data" name="deptName" id="" required>
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
                    <div class="invisible d-flex justify-content-center align-items-center search-spin">
                        <div class="spinner-border text-primary" role="status">
                        </div>
                    </div>
                    <div class="d-none dtl-box">
                        <div class="row gap-0">
                            <div class="col-md-7">
                                <label for="" class="form-label">Batch No</label>
                                <div class="mb-3">
                                    <input type="text" class="form-control" name="batchNo" id=""
                                        aria-describedby="helpId" placeholder="Batch Number"
                                        onkeypress="return event.charCode >= 48 && event.charCode <= 57" />
                                </div>
                            </div>
                            <div class="col-md-5">
                                <label for="" class="form-label">Section</label>
                                <div class="row">
                                    <div class="col-md-3 ">
                                        <div class="mb-3 d-flex align-items-center">
                                            <input type="text" class="form-control" name="" id=""
                                                aria-describedby="helpId" placeholder="A" value="A" disabled />
                                            <span class="ms-3">to</span>
                                        </div>
                                    </div>
                                    <div class="col-md-3">

                                        <select class="form-select" name="sectionName" id="">
                                            <option selected>...</option>
                                            <option value="Axa">A</option>
                                            <option value="B">B</option>
                                            <option value="C">C</option>
                                            <option value="D">D</option>
                                            <option value="E">E</option>
                                            <option value="F">F</option>
                                            <option value="G">G</option>
                                            <option value="H">H</option>
                                            <option value="I">I</option>
                                            <option value="J">J</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="mb-3">
                                    <label for="" class="form-label">Add Course</label>
                                    <input type="text" class="form-control input-datalist" name="" id=""
                                        aria-describedby="helpId" placeholder="Type Course code (i.e. CSE 215).."
                                        list="list-courses" id="input-datalist" oninput='course(value)' />
                                    <datalist id="list-courses">

                                    </datalist>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="flex my-3 overflow-y-auto codes-box">

                            </div>
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