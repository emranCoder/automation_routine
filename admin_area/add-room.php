<?php
include("Header.php");
header("Cache-Control: no-cache, must-revalidate");

if(isset($_POST["roomNo"]) &&  isset($_POST["capacity"]) &&  isset($_POST["roomType"])){

$roomNo =$_POST["roomNo"];
$capacity =$_POST["capacity"];
$roomType =$_POST["roomType"];


    $insertQuery = "INSERT INTO `room`(`roomNo`, `capacity`, `roomType`) VALUES ('$roomNo','$capacity','$roomType')";

    $result = mysqli_query($conn, $insertQuery);
    if ($result) {
        header("location: add-room.php?insert=true&&addroom=true");
    } else {
        header("location: add-room.php?insert=false&&addroom=true");
    }



}else
{
    if (!(isset($_GET["addroom"]) && $_GET["addroom"] == 'true')) {
        header('location: add-room.php?addroom=true');
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
                                Successfully! Room Add
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


                <form action="add-room.php" method="POST" class="box-inside bg-white border-rounded my-4  px-5 py-3 pb-5 shadow">
                    <h3 class="box-title">Add Room</h3>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="" class="form-label">Room No</label>
                                <input type="text" class="form-control" name="roomNo" id="" aria-describedby="helpId"
                                    placeholder="Room Number"
                                    onkeypress="return event.charCode >= 48 && event.charCode <= 57" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="" class="form-label">Capacity</label>
                                <input type="text" class="form-control" name="capacity" id="" aria-describedby="helpId"
                                onkeypress="return event.charCode >= 48 && event.charCode <= 57" 
                                    placeholder="Room Capacity" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="" class="form-label">Room Type</label>
                                <select class="form-select" name="roomType" id="">
                                    <option selected>Type</option>
                                    <option value="Normal">Normal</option>
                                    <option value="Project">Project</option>
                                    <option value="Lab">Lab</option>
                                    <option value="Special">Special</option>
                                </select>
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