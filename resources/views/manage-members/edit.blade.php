@extends('layouts.app')

@section('content')
<section class="content-header">
    <div class="left-side-content">
        <div class="row mb-2">
            <div class="col-sm-12">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="{{ url('/dashboard') }}">Home</a></li>
                    <li class="breadcrumb-item"><a href="{{ route('manage-user') }}">Manager user</a></li>
                    <li class="breadcrumb-item active">{{ $title }}</li>
                </ol>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>
    <div class="container-fluid">
        <div class="row mt-4">
            <div class="col-12">
                <div class="card card-header-color">
                    <div class="card-header">
                        <h3 class="card-title">{{ $title }}</h3>
                    </div>
                    @if (session()->has('success'))
    <div class="alert msg alert-success alert-dismissible"> {!! session('success') !!} <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>
    @endif @if (session()->has('error'))
        <div class="alert msg alert-danger"> {!! session('error') !!} <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>
    @endif

                        <form role="form" id="update-employee33" action="{{ route('manage-members-update') }}" name="add-user"
                            name="update-employee" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="card-body">
                                <!-- Personal Information -->
                                <div class="section-header">
                                    <h4>Personal Information</h4>
                                </div>
                                <div class="row">
                                       <div class="col-md-4 mb-3">
                                           <div class="form-group">
                                               <label for="first_name">First name<span class="text-danger">*</span></label>
                                               <input type="text" class="form-control" id="first_name" name="first_name" value="{{ $info->first_name }}">
                                               <small class="text-danger">{{ $errors->first('first_name') }}</small>
                                           </div>
                                       </div>
                                       <div class="col-md-4 mb-3">
                                           <div class="form-group">
                                               <label for="last_name">Last name<span class="text-danger">*</span></label>
                                               <input type="text" class="form-control" id="last_name" name="last_name" value="{{ $info->last_name }}">
                                               <small class="text-danger">{{ $errors->first('address') }}</small>
                                           </div>
                                       </div>

                                       <div class="col-md-4 mb-3">
                                           <div class="form-group">
                                               <label for="dob">Birth of date<span class="text-danger">*</span></label>
                                               <input type="date" class="form-control" id="dob" name="dob" value="{{ $info->bod }}" >
                                               <small class="text-danger">{{ $errors->first('dob') }}</small>
                                           </div>
                                       </div>
                                       <div class="col-md-4 mb-3">
                                           <div class="form-group">
                                               <label for="address">Address<span class="text-danger">*</span></label>
                                               <input type="text" class="form-control" id="address" name="address" value="{{ $info->address }}">
                                               <small class="text-danger">{{ $errors->first('address') }}</small>
                                           </div>
                                       </div>
                                       <div class="col-md-4 mb-3">
                                        <div class="form-group">
                                            <label for="dob">Province<span class="text-danger">*</span></label>
                                            <select class="form-control " id="province_id" name="province_id">
                                                <option value="">Select provinces</option>
                                                @foreach($provinces as $province)
                                                <option value="{{ $province->id }}">{{ $province->name }}</option>
                                                @endforeach
                                            </select>
                                            <small class="text-danger">{{ $errors->first('province_id') }}</small>
                                        </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-group">
                                            <label for="dob">District<span class="text-danger">*</span></label>
                                            <select class="form-control " id="district_id" name="district_id">

                                            </select>
                                            <small class="text-danger">{{ $errors->first('district_id') }}</small>
                                        </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-group">
                                            <label for="dob">Sector<span class="text-danger">*</span></label>
                                            <select class="form-control " id="sector_id" name="sector_id">

                                            </select>
                                            <small class="text-danger">{{ $errors->first('sector_id') }}</small>
                                        </div>
                                    </div>
<div class="col-md-4 mb-3">
    <div class="form-group">
        <label for="dob">Cell<span class="text-danger">*</span></label>
        <select class="form-control " id="cell_id" name="cell_id">

        </select>
        <small class="text-danger">{{ $errors->first('cell_id') }}</small>
    </div>
</div>
<div class="col-md-4 mb-3">
    <div class="form-group">
        <label for="dob">Village<span class="text-danger">*</span></label>
        <select class="form-control " id="village_id" name="village_id">

        </select>
        <small class="text-danger">{{ $errors->first('cat_id') }}</small>
    </div>
</div>
<div class="col-md-4 mb-3">
    <div class="form-group">
        <label for="dob">Citizenship Status<span class="text-danger">*</span></label>
        <select class="form-control " id="resident" name="resident">
            <option value="">Select citizenship status</option>
            <option value="Rwandan">Rwandan</option>
            <option value="Foreign">Foreign</option>
            <option value="Refugee">Refugee</option>
        </select>
        <small class="text-danger">{{ $errors->first('resident') }}</small>
    </div>
</div>
<div class="col-md-4 mb-3">
    <div class="form-group">
        <label for="dob">Identification Type<span class="text-danger">*</span></label>
        <select class="form-control " id="identification" name="identification">
            <option value="">Select identification type</option>
            <option value="None">None</option>
            <option value="National Id">National Id</option>
            <option value="Passport">Passport</option>
            <option value="Driving License">Driving License</option>
        </select>
        <small class="text-danger">{{ $errors->first('cat_id') }}</small>
    </div>
</div>
<div class="col-md-4 mb-3">
    <div class="form-group">
        <label for="dob">Disability<span class="text-danger">*</span></label>
        <select class="form-control " id="disablity" name="disablity">
            <option value="">Select disablity</option>
            <option value="">Select disability</option>
            <option value="None">None</option>
            <option value="Visual">Visual</option>
            <option value="Hearing">Hearing</option>
            <option value="Visual-Hearing">Visual-Hearing</option>
            <option value="Speech-Language">Speech-Language</option>
            <option value="Visual-Speech">Visual-Speech</option>
            <option value="Hearing-speech">Hearing-speech</option>
            <option value="Visual-Hearing-speech">Visual-Hearing-speech</option>
            <option value="Physical">Physical</option>
            <option value="Visual-Physical">Visual-Physical</option>
            <option value="Hearing-Physical">Hearing-Physical</option>
            <option value="Visual-Hearing-Physical">Visual-Hearing-Physical</option>
            <option value="Speech-Physical">Speech-Physical</option>
            <option value="Visual-Speech-Physical">Visual-Speech-Physical</option>
            <option value="Hearing-Speech-Physical">Hearing-Speech-Physical</option>
            <option value="Visual-Hearing-Speech-Physical">Visual-Hearing-Speech-Physical</option>
            <option value="Learning impairment">Learning impairment</option>
            <option value="Visual-Learning">Visual-Learning</option>
            <option value="Hearing-Learning">Hearing-Learning</option>
            <option value="Loss both arms">Loss both arms</option>
            <option value="Loss right arm">Loss right arm</option>
            <option value="Loss left arm">Loss left arm</option>
            <option value="Loss both legs">Loss both legs</option>
            <option value="Loss right leg">Loss right leg</option>
            <option value="Loss left leg">Loss left leg</option>
            <option value="Loss both arms and both legs">Loss both arms and both legs</option>
            <option value="Loss both arms and right leg">Loss both arms and right leg</option>
            <option value="Loss both arms and left leg">Loss both arms and left leg</option>
            <option value="Loss Right arm and right leg">Loss Right arm and right leg</option>
            <option value="Loss Right arm and left leg">Loss Right arm and left leg</option>
            <option value="Loss Right arm and both legs">Loss Right arm and both legs</option>
            <option value="Loss left arm and left leg">Loss left arm and left leg</option>
            <option value="Loss left arm and right leg">Loss left arm and right leg</option>
            <option value="Loss left arm and both legs">Loss left arm and both legs</option>
            <option value="Other">Other</option>
            <option value="Albinism">Albinism</option>
        </select>
        <small class="text-danger">{{ $errors->first('province_id') }}</small>
    </div>
</div>
<div class="col-md-4 mb-3">
    <div class="form-group">
        <label for="dob">Parent Status<span class="text-danger">*</span></label>
        <select class="form-control " id="parent_status" name="parent_status">
            <option value="">Select parent status</option>
            <option value="All Parents Alive">All Parents Alive</option>
            <option value="All Parents Deceased">All Parents Deceased</option>
            <option value="Father Deceased">Father Deceased</option>
            <option value="Mother Deceased">Mother Deceased</option>
        </select>
        <small class="text-danger">{{ $errors->first('parent_status') }}</small>
    </div>
</div>
</div>
<hr />
<!-- Father's Section -->
<div class="section-header">
    <h4>Father's Information</h4>
</div>
<div class="row">
    <!-- Father's Name -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="father_name">Father's Name<span class="text-danger">*</span></label>
            <input type="text" class="form-control" id="father_name" name="father_name">
            <small class="text-danger">{{ $errors->first('father_name') }}</small>
        </div>
    </div>

    <!-- Date of Birth -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="dob">Date of Birth<span class="text-danger">*</span></label>
            <input type="date" class="form-control" id="dob" name="dob">
            <small class="text-danger">{{ $errors->first('dob') }}</small>
        </div>
    </div>

    <!-- Official Paper Type -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="official_paper_type">Official Paper Type</label>
            <select class="form-control" id="official_paper_type" name="official_paper_type">
                <option value="None">None</option>
                <option value="ID">ID</option>
                <option value="Passport">Passport</option>
                <!-- Add more options as needed -->
            </select>
            <small class="text-danger">{{ $errors->first('official_paper_type') }}</small>
        </div>
    </div>

    <!-- ID Number -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="id_number">ID Number<span class="text-danger">*</span></label>
            <input type="text" class="form-control" id="id_number" name="id_number">
            <small class="text-danger">{{ $errors->first('id_number') }}</small>
        </div>
    </div>

    <!-- Phone Number -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="phone_number">Phone Number<span class="text-danger">*</span></label>
            <input type="text" class="form-control" id="phone_number" name="phone_number">
            <small class="text-danger">{{ $errors->first('phone_number') }}</small>
        </div>
    </div>

    <!-- Job Type -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="job_type">Job Type</label>
            <input type="text" class="form-control" id="job_type" name="job_type">
            <small class="text-danger">{{ $errors->first('job_type') }}</small>
        </div>
    </div>

    <!-- Income per Month -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="income_per_month">Income per Month</label>
            <input type="number" class="form-control" id="income_per_month" name="income_per_month">
            <small class="text-danger">{{ $errors->first('income_per_month') }}</small>
        </div>
    </div>

    <!-- House (Yes/No) -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="house">House<span class="text-danger">*</span></label>
            <select class="form-control" id="house" name="house">
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>
            <small class="text-danger">{{ $errors->first('house') }}</small>
        </div>
    </div>

    <!-- Education Level -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="education_level">Education Level</label>
            <input type="text" class="form-control" id="education_level" name="education_level">
            <small class="text-danger">{{ $errors->first('education_level') }}</small>
        </div>
    </div>

    <!-- Disability (Yes/No) -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="disability">Disability</label>
            <select class="form-control" id="disability" name="disability" onchange="toggleDisabilityDetails()">
                <option value="no">No</option>
                <option value="yes">Yes</option>
            </select>
            <small class="text-danger">{{ $errors->first('disability') }}</small>
        </div>
    </div>

    <!-- Disability Details -->
    <div class="col-md-4 mb-3" id="disability_details" style="display: none;">
        <div class="form-group">
            <label for="disability_type">Disability Type</label>
            <input type="text" class="form-control" id="disability_type" name="disability_type"
                placeholder="e.g., Visual">
            <small class="text-danger">{{ $errors->first('disability_type') }}</small>
        </div>
    </div>

    <!-- Head of Family (Yes/No) -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="head_of_family">Head of Family<span class="text-danger">*</span></label>
            <select class="form-control" id="head_of_family" name="head_of_family">
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>
            <small class="text-danger">{{ $errors->first('head_of_family') }}</small>
        </div>
    </div>
</div>
<hr />
<!-- Mother's Section -->
<div class="section-header">
    <h4>Mother's Information</h4>
</div>
<div class="row">
    <!-- Mother's Name -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="mother_name">Mother's Name<span class="text-danger">*</span></label>
            <input type="text" class="form-control" id="mother_name" name="mother_name">
            <small class="text-danger">{{ $errors->first('mother_name') }}</small>
        </div>
    </div>

    <!-- Date of Birth -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="mother_dob">Date of Birth<span class="text-danger">*</span></label>
            <input type="date" class="form-control" id="mother_dob" name="mother_dob">
            <small class="text-danger">{{ $errors->first('mother_dob') }}</small>
        </div>
    </div>

    <!-- Official Paper Type -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="mother_official_paper_type">Official Paper Type</label>
            <select class="form-control" id="mother_official_paper_type" name="mother_official_paper_type">
                <option value="None">None</option>
                <option value="ID">ID</option>
                <option value="Passport">Passport</option>
                <!-- Add more options as needed -->
            </select>
            <small class="text-danger">{{ $errors->first('mother_official_paper_type') }}</small>
        </div>
    </div>

    <!-- ID Number -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="mother_id_number">ID Number<span class="text-danger">*</span></label>
            <input type="text" class="form-control" id="mother_id_number" name="mother_id_number">
            <small class="text-danger">{{ $errors->first('mother_id_number') }}</small>
        </div>
    </div>

    <!-- Phone Number -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="mother_phone_number">Phone Number<span class="text-danger">*</span></label>
            <input type="text" class="form-control" id="mother_phone_number" name="mother_phone_number">
            <small class="text-danger">{{ $errors->first('mother_phone_number') }}</small>
        </div>
    </div>

    <!-- Job Type -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="mother_job_type">Job Type</label>
            <input type="text" class="form-control" id="mother_job_type" name="mother_job_type">
            <small class="text-danger">{{ $errors->first('mother_job_type') }}</small>
        </div>
    </div>

    <!-- Income per Month -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="mother_income_per_month">Income per Month</label>
            <input type="number" class="form-control" id="mother_income_per_month" name="mother_income_per_month">
            <small class="text-danger">{{ $errors->first('mother_income_per_month') }}</small>
        </div>
    </div>

    <!-- House (Yes/No) -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="mother_house">House<span class="text-danger">*</span></label>
            <select class="form-control" id="mother_house" name="mother_house">
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>
            <small class="text-danger">{{ $errors->first('mother_house') }}</small>
        </div>
    </div>

    <!-- Education Level -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="mother_education_level">Education Level</label>
            <input type="text" class="form-control" id="mother_education_level" name="mother_education_level">
            <small class="text-danger">{{ $errors->first('mother_education_level') }}</small>
        </div>
    </div>

    <!-- Disability (Yes/No) -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="mother_disability">Disability</label>
            <select class="form-control" id="mother_disability" name="mother_disability"
                onchange="toggleDisabilityDetails()">
                <option value="no">No</option>
                <option value="yes">Yes</option>
            </select>
            <small class="text-danger">{{ $errors->first('mother_disability') }}</small>
        </div>
    </div>

    <!-- Disability Details -->
    <div class="col-md-4 mb-3" id="mother_disability_details" style="display: none;">
        <div class="form-group">
            <label for="mother_disability_type">Disability Type</label>
            <input type="text" class="form-control" id="mother_disability_type" name="mother_disability_type"
                placeholder="e.g., Visual">
            <small class="text-danger">{{ $errors->first('mother_disability_type') }}</small>
        </div>
    </div>

    <!-- Head of Family (Yes/No) -->
    <div class="col-md-4 mb-3">
        <div class="form-group">
            <label for="mother_head_of_family">Head of Family<span class="text-danger">*</span></label>
            <select class="form-control" id="mother_head_of_family" name="mother_head_of_family">
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>
            <small class="text-danger">{{ $errors->first('mother_head_of_family') }}</small>
        </div>
    </div>
    <hr>

                                       <div class="col-md-4 mb-3">
                                           <div class="form-group">
                                               <label for="dob">Category issues<span class="text-danger">*</span></label>
                                               <select class="form-control" id="cat_id" name="cat_id">
                                              <option value="">Select category issues</option>

                                              @foreach($categories as $category)
                                              <?php $selected = $category->id ==$info->cat_id?"selected":""?>
                                              <option value = "{{ $category->id }}" <?=$selected?>>{{ $category->category_name }}</option>
                                              @endforeach
                                               </select>
                                               <small class="text-danger">{{ $errors->first('cat_id') }}</small>
                                           </div>
                                       </div>
                                       <div class="col-md-4 mb-3">
                                           <div class="form-group">
                                               <label for="address">Phone<span class="text-danger">*</span></label>
                                               <input type="text" class="form-control" id="phone" name="phone" value="{{ $info->phone }}">
                                               <small class="text-danger">{{ $errors->first('phone') }}</small>
                                           </div>
                                       </div>
                                       <input type="hidden" name="id" value="{{ $info->id }}">
                                   </div>
                                       <div class="col-md-12 mb-3">
                                           <div class="form-group">
                                               <label for="description">Description<span class="text-danger">*</span></label>
                                               <textarea  class="form-control" id="description" name="description" row="5">{{ $info->description }}</textarea>
                                               <small class="text-danger">{{ $errors->first('description') }}</small>
                                           </div>
                                       </div>
<div class="col-md-4 mb-3 form-group clearfix">
    <label for="profile_pic">Are you able to Support?</label><br><br>
    <div class="icheck-primary d-inline">
        <input type="radio" id="radioPrimary1" name="support_status" checked="" value="1"
        {{ $info->support_status == 1 ? 'checked' : '' }}
        >
        <label for="radioPrimary1">Ourselves</label>
    </div>
    <div class="icheck-danger d-inline">
        <input type="radio" id="radioPrimary2" name="support_status" value="2" {{ $info->support_status == 2 ? 'checked' : '' }}>
        <label for="radioPrimary2">We can not</label>
    </div>
</div>
                                   <div class=" col-md-4">
                                       <button type="submit" class="btn btn-dark btn-lg" id="send_btn2"> <i
                                               class="fa fa-plus"></i>&nbsp; Save</button>
                                       <a href="{{ route('manage-members') }}"
                                           class="btn border border-dark btn-lg employeesclosee btn-cancel">Cancel</a>

                                   </div>
                               </div>
                        </form>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('style')
    <!-- Bootstrap4 Duallistbox -->
    <link rel="stylesheet" href="{{ asset('plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css') }}">
@endsection

@section('script')
    <script src="{{ asset('plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('js/jquery.mask.min.js') }}"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#add-user').validate({
                rules: {
                    fname: {
                        required: true,
                    },
                    lname: {
                        required: true,
                    },
                    email: {
                        required: true,
                        email: true,
                    },
                    phone: {
                        minlength: 14,
                    },
                    chapter: {
                        required: true,
                    },
                    profile_pic: {
                        extension: "jpeg,jpg,png",
                        maxsize: 5242880 // <- 5 MB
                    },
                    role: {
                        required: true,
                    }
                },
                messages: {
                    fname: {
                        required: "Please enter a first name",
                    },
                    lname: {
                        required: "Please enter a last name",
                    },
                    email: {
                        required: "Please enter a email address",
                        email: "Please enter a vaild email address"
                    },
                    phone: {
                        minlength: "Please enter a valid phone number"
                    },
                    profile_pic: {
                        extension: "Please upload file in these format only (jpg, jpeg, png).",
                        maxsize: "File size must be less than 5 mb."
                    },
                    role: {
                        required: "Please select role"
                    }
                },
                errorElement: 'span',
                errorPlacement: function(error, element) {
                    error.addClass('invalid-feedback');
                    element.closest('.form-group').append(error);
                },
                highlight: function(element, errorClass, validClass) {
                    $(element).addClass('is-invalid');
                },
                unhighlight: function(element, errorClass, validClass) {
                    $(element).removeClass('is-invalid');
                }
            });
        });

        $(document).ready(function() {
            $('#phone').mask('(000) 000-0000');


        $(document).on('click', '.delete-place', function(){
    var id = $("#id").val();

    var del_url = "{{route('manage-user-images-delete')}}";
    swal({
      title: 'Are you want to delete image ?',
      type: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#22D69D',
      cancelButtonColor: '#FB8678',
      confirmButtonText: 'Yes, delete it!',
      cancelButtonText: 'No, cancel!',
      confirmButtonClass: 'btn',
      cancelButtonClass: 'btn',
    }).then(function (result) {
     if (result.value) {
      $.ajaxSetup({
        headers: {
          'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
        }
      });
      $.ajax({
        type: "DELETE",
        dataType: 'json',
        url: del_url,
        data:{
          id:id
        },
        success: function (data) {
          if(data){
           swal({
            title: "Success",
            text: "Deleted Successfully.",
            type: "success",
            confirmButtonColor: "#22D69D"
          });
           $("#delimg").hide();
           $("#hidden_image").val("");

         }
       }
     });
    }
  });
  });
});
$(document).ready(function () {
// Handle province selection
$('#province_id').change(function () {
let provinceId = $(this).val();
if (provinceId) {
$.ajax({
url: "{{ route('district') }}",
type: "GET",
data: { province_id: provinceId },
success: function (data) {
$('#district_id').empty().append('<option value="">Select District</option>');
$.each(data, function (key, value) {
$('#district_id').append('<option value="' + value.id + '">' + value.name + '</option>');
});
$('#sector_id, #cell_id, #village_id').empty().append('<option value="">Select Option</option>');
}
});
}
});

// Handle district selection
$('#district_id').change(function () {
let districtId = $(this).val();
if (districtId) {
$.ajax({
url: "{{ route('sector') }}",
type: "GET",
data: { district_id: districtId },
success: function (data) {
$('#sector_id').empty().append('<option value="">Select Sector</option>');
$.each(data, function (key, value) {
$('#sector_id').append('<option value="' + value.id + '">' + value.name + '</option>');
});
$('#cell_id, #village_id').empty().append('<option value="">Select Option</option>');
}
});
}
});

// Handle sector selection
$('#sector_id').change(function () {
let sectorId = $(this).val();
if (sectorId) {
$.ajax({
url: "{{ route('cell') }}",
type: "GET",
data: { sector_id: sectorId },
success: function (data) {
$('#cell_id').empty().append('<option value="">Select Cell</option>');
$.each(data, function (key, value) {
$('#cell_id').append('<option value="' + value.id + '">' + value.name + '</option>');
});
$('#village_id').empty().append('<option value="">Select Option</option>');
}
});
}
});

// Handle cell selection
$('#cell_id').change(function () {
let cellId = $(this).val();
if (cellId) {
$.ajax({
url: "{{ route('village') }}",
type: "GET",
data: { cell_id: cellId },
success: function (data) {
$('#village_id').empty().append('<option value="">Select Village</option>');
$.each(data, function (key, value) {
$('#village_id').append('<option value="' + value.id + '">' + value.name + '</option>');
});
}
});
}
});
});
function toggleDisabilityDetails() {
var disability = document.getElementById("disability").value;
var disabilityDetails = document.getElementById("disability_details");
disabilityDetails.style.display = disability === "yes" ? "block" : "none";
}
    </script>
@endsection
