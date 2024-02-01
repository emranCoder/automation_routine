<?php include("Header.php");
if (!(isset($_GET["adddept"]) && $_GET["adddept"] == 'true')) {
  header('location: add-department.php?adddept=true');
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
                    <h3 class="box-title">Add Department</h3>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="" class="form-label">Department Name</label>
                                <input type="text" class="form-control" name="" id="" aria-describedby="helpId"
                                    placeholder="Dept. Name" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="" class="form-label">In Short</label>
                                <input type="text" class="form-control" name="" id="" aria-describedby="helpId"
                                    placeholder="In short Name" />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                            <div class="mb-3">
                                <label for="" class="form-label">Number of Students</label>
                                <input type="text" class="form-control" name="" id="" aria-describedby="helpId"
                                    placeholder="Total Students" />
                            </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="" class="form-label">Department Head</label>
                                <input type="text" class="form-control" name="" id="" aria-describedby="helpId"
                                    placeholder="Type Name of head" />
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