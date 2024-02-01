<div class="side-menu box">
    <a href="index.php" class="link">
        <div class="admin-box">

            <h3 class="text-uppercase fw-bold fs-5">Metrouni</h3>
            <span>adminmetero@gamil.com</span>

        </div>
    </a>
    <span class="divider"></span>
    <a href="index.php?home=true" class="link">
        <div class="list-btn fs-6 <?php if (isset($_GET["home"])) {
            echo "active-list";
        }
        ?>">

            <span class="me-2 text-warning"><i class="bi bi-house-fill"></i></span>
            <span class="">Home</span>

        </div>
    </a>    
    <div class="list-btn fs-6 ">
        <span class="me-2 text-warning"><i class="bi bi-hdd"></i></span>
        <span class="fw-medium  ">All Department</span>
    </div>
    <div class="list-btn fs-6 ">
        <span class="me-2 text-warning"><i class="bi bi-database-check"></i></span>
        <span class="">All Faculty</span>
    </div>
    <a class="link" href="add-faculty.php?addfaculty=true">
        <div class="list-btn fs-6  <?php if (isset($_GET["addfaculty"]) && $_GET["addfaculty"] =='true' ) {
            echo "active-list";
        }
        ?>">


            <span class="me-2 text-warning"><i class="bi bi-plus-circle-fill"></i></span>
            <span class="fw-medium  ">Add Faculty</span>

        </div>
    </a>
    <a href="add-department.php?adddept=true">
    <div class="list-btn fs-6 <?php 
    if (isset($_GET["adddept"]) && $_GET["adddept"] == 'true') {
        echo "active-list";
      }
    ?>">
        <span class="me-2 text-warning"><i class="bi bi-database-fill-add"></i></span>
        <span class="">Add Department</span>
    </div>
    </a>
    <a href="add-course.php?addcourse=true">
    <div class="list-btn fs-6 <?php 
    if (isset($_GET["addcourse"]) && $_GET["addcourse"] == 'true') {
        echo "active-list";
      }
    ?>">
        <span class="me-2 text-warning"><i class="bi bi-database-fill-add"></i></span>
        <span class="">Add Course</span>
    </div>
    </a>
    <a href="add-room.php?addroom=true">
    <div class="list-btn fs-6 <?php 
    if (isset($_GET["addroom"]) && $_GET["addroom"] == 'true') {
        echo "active-list";
      }
    ?>">
        <span class="me-2 text-warning"><i class="bi bi-database-fill-add"></i></span>
        <span class="">Add Room</span>
    </div>
    </a>
    <a href="add-batch.php?addbatch=true">
    <div class="list-btn fs-6 <?php 
    if (isset($_GET["addbatch"]) && $_GET["addbatch"] == 'true') {
        echo "active-list";
      }
    ?>">
        <span class="me-2 text-warning"><i class="bi bi-database-fill-add"></i></span>
        <span class="">Add Batch</span>
    </div>
    </a>
    <span class="divider"></span>
    <div class="list-btn fs-6 ">
        <span class="me-2 text-warning"><i class="bi bi-gear-fill"></i></span>
        <span class="">Setting</span>
    </div>
    <div class="list-btn fs-6 ">
        <span class="me-2 text-warning"><i class="bi bi-box-arrow-right"></i></span>
        <span class="">Log Out</span>
    </div>
</div>