<?php
include("Header.php");
header("Cache-Control: no-cache, must-revalidate");
if (!(isset($_GET["addbatch"]) && $_GET["addbatch"] == 'true')) {
    header('location: add-batch.php?addbatch=true');
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
                    <h3 class="box-title">Add Batch</h3>
                    <div class="mb-3">
                        <label for="" class="form-label">Select Department</label>
                        <select class="form-select" name="" id="">
                            <option selected>Choose Department</option>
                            <option>CSE</option>
                            <option value="">BBA</option>
                            <option value="">English</option>
                            <option value="">Economica</option>
                        </select>
                    </div>

                    <div class="row gap-0">
                        <div class="col-md-7">
                            <label for="" class="form-label">Batch No</label>
                            <div class="mb-3">
                                <input type="text" class="form-control" name="" id="" aria-describedby="helpId"
                                    placeholder="Course Name" />
                            </div>
                        </div>
                        <div class="col-md-5">
                            <label for="" class="form-label">Section</label>
                            <div class="row">
                                <div class="col-md-3 ">
                                    <div class="mb-3 d-flex align-items-center">
                                        <input type="text" class="form-control" name="" id="" aria-describedby="helpId"
                                            placeholder="A" value="A" disabled />
                                        <span class="ms-3">to</span>
                                    </div>
                                </div>
                                <div class="col-md-2">

                                    <input type="text" class="form-control" name="" id="" aria-describedby="helpId"
                                        placeholder=".." />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label for="" class="form-label">Add Course</label>
                                <input type="text" class="form-control" name="" id="" aria-describedby="helpId"
                                    placeholder="Type to add course.." />
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