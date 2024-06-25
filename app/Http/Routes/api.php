<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ImageController;
use App\Http\Controllers\RegionController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\RoleHasPermissionController;
use App\Http\Controllers\ProvinceController;

Route::get('hello', function () {
    return response()->json();
});

// Region
Route::get('/api/province', [RegionController::class, 'getProvince']);
