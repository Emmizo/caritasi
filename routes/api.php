<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\MemberController;
use App\Http\Controllers\API\DashboardController;

Route::group(['namespace' => 'Api', 'prefix' => 'v1'], function () {
    Route::post('login', [AuthController::class, 'login']);
    Route::post('forget-password-api', [AuthController::class,'forgetPassword']);

    Route::get('/reset-pass/{token}', [AuthController::class, 'create'])
                ->middleware('guest')
                ->name('password.reset');
  });
#Manage Authentication and Users APIs
Route::group(['namespace' => 'Api', 'prefix' => 'v1','middleware' => 'auth:api'], function () {
    Route::post('change-password',[AuthController::class,'changePassword']);
    Route::post('/logout-api', [AuthController::class, 'destroy'])->name('logout-api');
    Route::get('/user-detail',[AuthController::class,'index'])->name('user-detail');
    Route::post('/update-profile',[AuthController::class, 'update'])->name('update-profile');

});

#Manage members

Route::group(['namespace' => 'Api', 'prefix' => 'v1','middleware' => 'auth:api'], function () {
    Route::get('list-members',[MemberController::class,'index']);
    Route::post('/create-member', [MemberController::class, 'store']);
    Route::get('/accept',[memberController::class,'status']);
    // Route::post('/reject',[memberController::class, 'status'])->name('update-profile');
});

#Manage Dashboard

Route::group(['namespace' => 'Api', 'prefix' => 'v1','middleware' => 'auth:api'], function () {
    Route::get('dashboard',[DashboardController::class,'index']);

});
