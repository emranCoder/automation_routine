<?php
include("Header.php");

if (isset($_POST['deptName']) && isset($_POST['InShort'])) {
    $deptName = $_POST["deptName"];
    $InShort = $_POST["InShort"];
    $NumOfStudent = $_POST["NumOfStudent"];

    var_dump($data);

    $insertQuery = "INSERT INTO `department`(`deptName`, `inShort`, `numOfStudent`) VALUES  ('$deptName','$InShort','$NumOfStudent')";

    $result = mysqli_query($conn, $insertQuery);
    if ($result) {
        header("location: add-department.php?insert=true&&adddept=true");
    } else {
        header("location: add-department.php?insert=false&&adddept=false");
    }
} else {

    if (!(isset($_GET["adddept"]) && $_GET["adddept"] == 'true')) {
        header('location: add-department.php?adddept=true');
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

                    <difv class="toast fade show toast-custom align-items-center bd-callout-warning bd-callout" role="alert" aria-live="assertive" aria-atomic="true" bs-autohide="true" autohide="true">
                        <div class="d-flex">
                            <div class="toast-body text-dark fw-semibold">
                                Successfully! Department Add
                            </div>
                            <button type="button" class="btn-close me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
                        </div>
                    </difv>
                <?php
                } else if (isset($_GET['insert']) && $_GET['insert'] === "false") {
                ?>

                    <div class="toast fade show toast-custom align-items-center bd-callout-warning bd-callout" role="alert" aria-live="assertive" aria-atomic="true" data-bs-autohide="true">
                        <div class="d-flex">
                            <div class="toast-body text-danger fw-semibold">
                                Opps! Something Wrong
                            </div>
                            <button type="button" class="btn-close me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
                        </div>
                    </div>

                <?php
                }
                ?>
                <!-- ========== End Toast ========== -->

                <form action="add-department.php" method="POST" class="box-inside bg-white border-rounded my-4  px-5 py-3 pb-5 shadow">
                    <h3 class="box-title">Add Department</h3>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="" class="form-label">Department Name</label>
                                <input type="text" class="form-control" name="deptName" id="" aria-describedby="helpId" placeholder="Dept. Name" required />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="" class="form-label">In Short</label>
                                <input type="text" class="form-control" name="InShort" id="" aria-describedby="helpId" placeholder="In short Name" required />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="" class="form-label">Number of Students</label>
                                <input type="text" class="form-control" name="NumOfStudent" id="" aria-describedby="helpId" placeholder="Total Students" required onkeypress="return event.charCode >= 48 && event.charCode <= 57" title="Number Only" />
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