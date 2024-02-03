<?php include("Header.php");

if (isset($_POST) && isset($_POST['fName']) && isset($_POST['email']) && isset($_POST['facultyNumber'])) {
    $fName = $_POST["fName"];
    $facultyDept = $_POST["facultyDept"];
    $facultyDesig = $_POST["facultyDesig"];
    $email = $_POST["email"];
    $facultyNumber = $_POST["facultyNumber"];

    var_dump($data);

    $insertQuery = "INSERT INTO `faculty`(`FirstName`, `LastName`, `designation`, `email`, `number`) VALUES ('$fName','$facultyDept','$facultyDesig','$email','$facultyNumber')";

    $result = mysqli_query($conn, $insertQuery);
    if ($result) {
        header("location: add-faculty.php?insert=true&&addfaculty=true");
    } else {
        header("location: add-faculty.php?insert=false&&addfaculty=true");
    }
} else {
    if (!(isset($_GET["addfaculty"]) && $_GET["addfaculty"] == 'true')) {
        header('location: add-faculty.php?addfaculty=true');
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
                                Successfully! Department Add
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



                <form action="add-faculty.php" method="post"
                    class="box-inside bg-white border-rounded my-4  px-5 py-3 pb-5 shadow">
                    <h3 class="box-title">Add Faculty</h3>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="" class="form-label">First Name</label>
                                <input type="text" class="form-control" name="fName" id="" aria-describedby="helpId"
                                    placeholder="First Name......" required="true" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="" class="form-label">Last Name</label>
                                <input type="text" class="form-control" name="lName" id="" aria-describedby="helpId"
                                    placeholder="Last Name......" required="true" />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="" class="form-label">Faculty Department</label>
                                <select class="form-select" name="facultyDept" id="">
                                    <option selected>Choose Department</option>
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
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="" class="form-label">Faculty Designation</label>
                                <input type="text" class="form-control" name="facultyDesig" id=""
                                    aria-describedby="helpId" placeholder="Type Faculty Designation......"
                                    required="true" />
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="" class="form-label">Faculty Email</label>

                        <div class="input-group mb-3">
                            <input type="email" class="form-control" name="email" id="" aria-describedby="helpId"
                                placeholder="facultyemail@mail.com" required="true" />
                            <span class="input-group-text" id="basic-addon1">@</span>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="" class="form-label">Faculty Number</label>
                        <input type="tel" class="form-control" name="facultyNumber" id="" aria-describedby="helpId"
                            placeholder="+880......." required="true"
                            onkeypress="return event.charCode >= 48 && event.charCode <= 57" />
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