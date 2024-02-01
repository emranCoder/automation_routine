<?php include("Header.php"); 
if (!(isset($_GET["addfaculty"]) && $_GET["addfaculty"] == 'true')) {
  header('location: add-faculty.php?addfaculty=true');
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
                    <h3 class="box-title">Add Faculty</h3>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="" class="form-label">First Name</label>
                                <input type="text" class="form-control" name="" id="" aria-describedby="helpId"
                                    placeholder="First Name......" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="" class="form-label">Last Name</label>
                                <input type="text" class="form-control" name="" id="" aria-describedby="helpId"
                                    placeholder="Last Name......" />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="" class="form-label">Faculty Department</label>
                                <select class="form-select" name="" id="">
                                    <option selected>Choose Department</option>
                                    <option>CSE</option>
                                    <option value="">BBA</option>
                                    <option value="">English</option>
                                    <option value="">Economica</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="" class="form-label">Faculty Designation</label>
                                <input type="text" class="form-control" name="" id="" aria-describedby="helpId"
                                    placeholder="Type Faculty Designation......" />
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="" class="form-label">Faculty Email</label>

                        <div class="input-group mb-3">
                            <input type="email" class="form-control" name="" id="" aria-describedby="helpId"
                                placeholder="facultyemail@mail.com" />
                            <span class="input-group-text" id="basic-addon1">@</span>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="" class="form-label">Faculty Number</label>
                        <input type="text" class="form-control" name="" id="" aria-describedby="helpId"
                            placeholder="+880......." />
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