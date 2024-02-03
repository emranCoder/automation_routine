<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script>
     document.addEventListener('DOMContentLoaded', e => {
        $('#input-datalist').autocomplete();
    }, false);

    $(document).ready(function() {
        
        let x = 1
        $(".add-field").click(() => {
            $("#field").append(`<div class="row gap-0" style="--bs-gap: 0rem; --bs-gutter-x:5px"><div class="col-md-4"><div class="mb-3"><input type="text" class="form-control" name="array` + x + `['courseName']" id="" aria-describedby="helpId" placeholder="Course Name"  required/></div></div><div class="col-md-2"><div class="mb-3"><input type="text" class="form-control" name="array` + x + `['shortWord']" id="" aria-describedby="helpId" placeholder="In Short Word"  required/></div></div><div class="col-md-2"><div class="mb-3"><input type="text" class="form-control" name="array` + x + `['courseCode']" id="" aria-describedby="helpId" placeholder="Course Code"  required/></div></div><div class="col-md-2"><div class="mb-3"><input type="text" class="form-control" name="array` + x + `['courseCredit']" id="" aria-describedby="helpId" placeholder="Course Credit"  required/></div></div><div class="col-md-2"><div class="mb-3"><select class="form-select" name="array` + x + `['courseType']" id="" required><option selected>Type</option><option>Normal</option><option value="">Project</option><option value="">Lab</option><option value="">Special</option></select></div></div></div>`)
            $("#numOfValue").val(x);
            x++;
        });
        
        //Validation Input Field Only Number
        $('#textNumberValidate').keypress(function(e) {
            if (!(e.key > '0' && e.key <= '9' || e.key === '.')) {
                e.preventDefault();
            }
        });
        
        let data; 
        $('.dept-data').change((e)=>{
            $('.search-spin').removeClass("invisible");
            let qData = e.target.value;
            $.post("get_course.php", { fetch:true,qData: qData }, function(response){
                if(response!="null"){
                    $('.search-spin').addClass("invisible");
                    $('.dtl-box').removeClass("d-none")
                    data =JSON.parse(response);
                    $.each(data,function(key, value) {
                        $("#list-courses").append("<option class='course-code'>"+value+"</option>")

                    });
                    console.log(response);
                    
                }else
                {
                    $('.dtl-box').addClass("d-none")
                    $('.search-spin').html("<span class='text-danger fw-semibold fs-5'>Please Insert Course first</span>")
                }
                
            });
        });
       

    });
</script>

</body>

</html>