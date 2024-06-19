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
            <div class="col-6">
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
                                <div class="row">
                                       <div class="col-md-6 mb-3">
                                           <div class="form-group">
                                               <label for="first_name">First name<span class="text-danger">*</span></label>
                                               <input type="text" class="form-control" id="first_name" name="first_name" value="{{ $info->first_name }}">
                                               <small class="text-danger">{{ $errors->first('first_name') }}</small>
                                           </div>
                                       </div>
                                       <div class="col-md-6 mb-3">
                                           <div class="form-group">
                                               <label for="last_name">Last name<span class="text-danger">*</span></label>
                                               <input type="text" class="form-control" id="last_name" name="last_name" value="{{ $info->last_name }}">
                                               <small class="text-danger">{{ $errors->first('address') }}</small>
                                           </div>
                                       </div>
                                   </div>
                                   <div class="row">
                                       <div class="col-md-6 mb-3">
                                           <div class="form-group">
                                               <label for="dob">Birth of date<span class="text-danger">*</span></label>
                                               <input type="date" class="form-control" id="dob" name="dob" value="{{ $info->bod }}" >
                                               <small class="text-danger">{{ $errors->first('dob') }}</small>
                                           </div>
                                       </div>
                                       <div class="col-md-6 mb-3">
                                           <div class="form-group">
                                               <label for="address">Address<span class="text-danger">*</span></label>
                                               <input type="text" class="form-control" id="address" name="address" value="{{ $info->address }}">
                                               <small class="text-danger">{{ $errors->first('address') }}</small>
                                           </div>
                                       </div>
                                   </div>
                                   <div class="row">
                                       <div class="col-md-6 mb-3">
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
                                       <div class="col-md-6 mb-3">
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
    </script>
@endsection
