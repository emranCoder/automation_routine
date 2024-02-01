<?php
include("Header.php");
header("Cache-Control: no-cache, must-revalidate");
if (!(isset($_GET["addroom"]) && $_GET["addroom"] == 'true')) {
    header('location: add-room.php?addroom=true');
}
?>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-3">
            <?php include("SideMenu.php"); ?>

        </div>
        <div class="col-md-9">
            <div class="right-box">
                <form action="" class="box-inside bg-white border-rounded my-4  px-5 py-3 pb-5 shadow">
                    <h3 class="box-title">Add Room</h3>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="" class="form-label">Room No</label>
                                <input type="text" class="form-control" name="" id="" aria-describedby="helpId"
                                    placeholder="Room Number" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="" class="form-label">Capacity</label>
                                <input type="text" class="form-control" name="" id="" aria-describedby="helpId"
                                    placeholder="Room Capacity" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="" class="form-label">Room Type</label>
                                <select class="form-select" name="" id="">
                                    <option selected>Type</option>
                                    <option>Normal</option>
                                    <option value="">Project</option>
                                    <option value="">Lab</option>
                                    <option value="">Special</option>
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