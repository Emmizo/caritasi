<header class="header" id="header">
    <div class="header_toggle"><i id="header-toggle" class="fa fa-bars text-block"></i> </div>
    <div class="header_logo"> <a href="{{ url('/dashboard') }}">
        <img src="{{ asset('assets/images/logo.png') }}" alt="" class="logo-img">
    </a> </div>
    <div class="center-digital">
        <h2 style="font-size: 15px;"><b>{{ config('app.name') }}</b></h2>
    </div>



    <div data-toggle="dropdown" class="row-user-account">
        <div class="header_img">
            <img src="{{ !empty(Auth::user()->profile_picture) ? URL::asset(Auth::user()->profile_picture) : asset('/profile-pictures/1114160.png') }}"
                class="img-circle elevation-2" alt="">
        </div>
        <div class="name-user">{{ Auth::user()->name . ' ' . Auth::user()->last_name }}</div>
        <div class="name-user"><i class="fa fa-caret-down" aria-hidden="true"></i></div>
    </div>
    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
        <div class="dropdown-divider"></div>
        <a href="{{ route('manage-edit-profile') }}" class="dropdown-item">Edit Profile</a>
        <a href="{{ route('change-password') }}" class="dropdown-item">Change Password</a>
        {{-- <a href="{{ route('reset') }}" class="dropdown-item">Reset Password</a> --}}
        <div class="dropdown-divider"></div>
        <a href="{{ route('logout') }}" class="dropdown-item">Logout</a>
    </div>
</header>
<br />
<br />
