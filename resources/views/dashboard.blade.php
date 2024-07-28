@extends('layouts.app')
@section('content')
    <!-- <div class="content-wrapper"> -->
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-4">
                <div class="col-sm-12 justify-content-center dashboard m-5">

                </div>

                <div class="row d-flex justify-content-center">
                    @can('Manage-Users')


                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-blue">

                                <div class="inner">
                                    <h3 class="d-flex justify-content-center">
                                        {{ $users }}
                                    </h3>
                                    <p class="d-flex justify-content-center">
                                        Manage Users
                                    </p>
                                </div>

                                <div class="icon">
                                    <i class="ion ion-bag"></i>
                                </div>
                                <a href="{{ route('manage-user') }}" class="small-box-footer">
                                    More info <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div><!-- ./col -->
                        @endcan
                        @can('Manage-community')


                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-dark">

                                <div class="inner">
                                    <h3 class="d-flex justify-content-center">
                                        {{ $communities }}
                                    </h3>
                                    <p class="d-flex justify-content-center">
                                        Manage Communities
                                    </p>
                                </div>

                                <div class="icon">
                                    <i class="ion ion-bag"></i>
                                </div>
                                <a href="{{ route('manage-community') }}" class="small-box-footer">
                                    More info <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div><!-- ./col -->
                        @endcan
                        @can('Manage-Centrale')


                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-orange">

                                <div class="inner">
                                    <h3 class="d-flex justify-content-center">
                                        {{ $centers }}
                                    </h3>
                                    <p class="d-flex justify-content-center">
                                        Manage Centrale
                                    </p>
                                </div>

                                <div class="icon">
                                    <i class="ion ion-bag"></i>
                                </div>
                                <a href="{{ route('manage-centrales') }}" class="small-box-footer">
                                    More info <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div><!-- ./col -->
                        @endcan
                        @can('Manage-Members')


                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-yellow">

                                <div class="inner">
                                    <h3 class="d-flex justify-content-center">
                                        {{ $members }}
                                    </h3>
                                    <p class="d-flex justify-content-center">
                                        Manage Members
                                    </p>
                                </div>

                                <div class="icon">
                                    <i class="ion ion-bag"></i>
                                </div>
                                <a href="{{ route('manage-members') }}" class="small-box-footer">
                                    More info <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div><!-- ./col -->
                        @endcan
@can('Manage-Supports')
<div class="col-lg-3 col-xs-6">
    <!-- small box -->
    <div class="small-box bg-yellow">

        <div class="inner">
            <h3 class="d-flex justify-content-center">
                {{ $supports }}
            </h3>
            <p class="d-flex justify-content-center">
                Manage Supports
            </p>
        </div>

        <div class="icon">
            <i class="ion ion-bag"></i>
        </div>
        <a href="{{ route('manage-support') }}" class="small-box-footer">
            More info <i class="fa fa-arrow-circle-right"></i>
        </a>
    </div>
</div><!-- ./col -->
@endcan

                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!--  </div> -->
@endsection
