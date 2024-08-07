@extends('layouts.app')

@section('content')
    <section class="content-header">
        <div class="left-side-content">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('/dashboard') }}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('manage-members') }}">{{ $brVal }}</a></li>
                        <li class="breadcrumb-item active">{{ $title }}</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <div class="container-fluid">
        <div class="row mt-4">
            <div class="col-8">
                <div class="card card-header-color">
                    <div class="card-header">
                        <h3 class="card-title">{{ $title }}</h3>
                    </div>
                    @if (session()->has('success'))
    <div class="alert msg alert-success alert-dismissible"> {!! session('success') !!} <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>
    @endif @if (session()->has('error'))
        <div class="alert msg alert-danger"> {!! session('error') !!} <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>
    @endif
                    <form role="form" id="add-members" action="{{ route('manage-members-save') }}" name="add-members"
                        method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="card-body">
                         <div class="row">
                                <div class="col-md-6 mb-3">
                                    <div class="form-group">
                                        <label for="first_name">First name<span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="first_name" name="first_name">
                                        <small class="text-danger">{{ $errors->first('first_name') }}</small>
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <div class="form-group">
                                        <label for="last_name">Last name<span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="last_name" name="last_name">
                                        <small class="text-danger">{{ $errors->first('last_name') }}</small>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <div class="form-group">
                                        <label for="dob">Birth of date<span class="text-danger">*</span></label>
                                        <input type="date" class="form-control" id="dob" name="dob">
                                        <small class="text-danger">{{ $errors->first('dob') }}</small>
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <div class="form-group">
                                        <label for="address">Address<span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="address" name="address">
                                        <small class="text-danger">{{ $errors->first('address') }}</small>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <div class="form-group">
                                        <label for="dob">Category issues<span class="text-danger">*</span></label>
                                        <select class="form-control category_type" id="cat_id" name="cat_id">
                                       <option value="">Select category issues</option>
                                       @foreach($categories as $category)
                                       <option value = "{{ $category->id }}">{{ $category->category_name }}</option>
                                       @endforeach
                                        </select>
                                        <small class="text-danger">{{ $errors->first('cat_id') }}</small>
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <div class="form-group">
                                        <label for="address">Phone<span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="phone" name="phone">
                                        <small class="text-danger">{{ $errors->first('phone') }}</small>
                                    </div>
                                </div>
                            </div>
                            <div class="student">
                                <div class="row ">
                                    <div class="col-md-6 mb-3">
                                        <div class="form-group">
                                            <label for="school_name">School name<span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" id="school_name" name="school_name">
                                            <small class="text-danger">{{ $errors->first('school_name') }}</small>
                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <div class="form-group">
                                            <label for="sdms">SDMS Code<span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" id="sdms" name="sdms_code">
                                            <small class="text-danger">{{ $errors->first('sdms_code') }}</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="patient">
                                <div class="row ">
                                    <div class="col-md-6 mb-3">
                                        <div class="form-group">
                                            <label for="hospita">Hosiptal<span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" id="hospital" name="hospital">

                                        </div>
                                    </div>
                                    {{-- <div class="col-md-6 mb-3">
                                        <div class="form-group">
                                            <label for="sdms">SDMS Code<span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" id="sdms" name="sdms_code">

                                        </div>
                                    </div> --}}
                                </div>
                            </div>
                            <div class="other-support">
                            <div class="col-md-12 mb-3">
                                <div class="form-group">
                                    <label for="description">Explain other support<span class="text-danger">*</span></label>
                                    <textarea  class="form-control" id="other_support" name="other_support" row="5"></textarea>

                                </div>
                            </div>
                        </div>
                                <div class="col-md-12 mb-3">
                                    <div class="form-group">
                                        <label for="description">Description<span class="text-danger">*</span></label>
                                        <textarea  class="form-control" id="description" name="description" row="5"></textarea>
                                        <small class="text-danger">{{ $errors->first('description') }}</small>
                                    </div>
                                </div>

                            <div class=" col-md-6">
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
    <!-- Bootstrap4 Duallistbox -->
    <script src="{{ asset('plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js') }}"></script>

    <script type="text/javascript" src="{{ asset('js/jquery.mask.min.js') }}"></script>
    <script type="text/javascript">
        $(document).ready(function() {


            $('#add-members').validate({
                rules: {
                    first_name: {
                        required: true,
                    },
                    last_name: {
                        required: true,
                    },
                    dob:{
                        required:true,
                    },
                    address: {
                        required: true,

                    },
                    phone: {
                        minlength: 14,
                        required:true,
                    },
                    cat_id:{
                        required: true,
                    },
                    description:{
                        required: true,
                    },


                },
                messages: {
                    fname: {
                        required: "Please enter a first name",
                    },
                    lname: {
                        required: "Please enter a last name",
                    },
                    dob:{
                        required: "Please enter a date of birth",
                    },
                    address: {
                        required: "Please enter a address",

                    },
                    phone: {
                        minlength: "Please enter a valid phone number",
                        required:"Please enter phone number",
                    },
                    cat_id:{
                        required: "Please select a category",
                    },
                    description:{
                        required: "Please fill description",
                    },

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
            $('#sdms').mask('000 0000 0000');
        });

        function resetForm() {
            document.getElementById("add-user").reset();
        }

        $(document).on("change", ".category_type", function () {
    // var select = sel.options[sel.selectedIndex].text;
    var select = $('#cat_id').val();
            console.log(select);
            if (select == 1) {
                $(".patient").addClass("active");
            } else {
                $(".patient").removeClass("active");
            }
            if (select == 2) {
                $(".student").addClass("active");
            } else {
                $(".student").removeClass("active");
            }
            if(select ==3){
                $(".other-support").addClass("active");
            }else{
                $(".other-support").removeClass("active");
            }
});
    </script>
@endsection
