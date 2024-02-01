<?php
include("Header.php");
header("Cache-Control: no-cache, must-revalidate");
if (!(isset($_GET["addcourse"]) && $_GET["addcourse"] == 'true')) {
    header('location: add-course.php?addcourse=true');
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
                    <h3 class="box-title">Add Course</h3>
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

                    <div class="row gap-0" style="--bs-gap: 0rem; --bs-gutter-x:5px">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <input type="text" class="form-control" name="" id="" aria-describedby="helpId" placeholder="Course Name" />
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="mb-3">
                                <input type="text" class="form-control" name="" id="" aria-describedby="helpId" placeholder="In Short Word" />
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="mb-3">
                                <input type="text" class="form-control" name="" id="" aria-describedby="helpId" placeholder="Course Code" />
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="mb-3">
                                <input type="text" class="form-control" name="" id="" aria-describedby="helpId" placeholder="Course Credit" />
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="mb-3">
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