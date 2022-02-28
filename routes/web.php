<?php

use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\Admin\Users\LoginController;
use \App\Http\Controllers\Admin\MainController;
use \App\Http\Controllers\Admin\MenuController;
use \App\Http\Controllers\Admin\ProductController;
use \App\Http\Controllers\Admin\SliderController;
use \App\Http\Controllers\HomeController;
use \App\Http\Controllers\Menu1Controller;
use \App\Http\Controllers\CartController;
use App\Http\Controllers\Admin\manage\manageUserController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('admin/users/login',[LoginController::class,'index'])->name('login');
Route::post('admin/users/login/store',[LoginController::class,'store']);
Route::middleware(['auth'])->group(function (){
    Route::prefix('admin')->group(function (){
        Route::get('/',[MainController::class,'index'])->name('admin');
        Route::get('main',[MainController::class,'index']);
        #menu
        Route::prefix('menus')->group(function (){
            Route::get('add',[MenuController::class,'create']);
            Route::post('add',[MenuController::class,'store']);
            Route::get('list',[MenuController::class,'index']);
            Route::get('edit/{menu}',[MenuController::class,'show']);
            Route::post('edit/{menu}',[MenuController::class,'update']);
            Route::DELETE('destroy',[MenuController::class,'destroy']);
        });
        #product
        Route::prefix('products')->group(function (){
            Route::get('add',[ProductController::class,'create']);
            Route::post('add',[ProductController::class,'store']);
            Route::get('list',[ProductController::class,'index']);
            Route::get('search',[ProductController::class,'search']);
            Route::get('edit/{product}',[ProductController::class,'show']);
            Route::post('edit/{product}',[ProductController::class,'update']);
            Route::DELETE('destroy',[ProductController::class,'destroy']);

        });
        #sliders
        Route::prefix('sliders')->group(function (){
            Route::get('add',[SliderController::class,'create']);
            Route::post('add',[SliderController::class,'store']);
            Route::get('list',[SliderController::class,'index']);
            Route::get('edit/{slider}',[SliderController::class,'show']);
            Route::post('edit/{slider}',[SliderController::class,'update']);
            Route::DELETE('destroy',[SliderController::class,'destroy']);

        });
        #upload
        Route::post('upload/services',[\App\Http\Controllers\Admin\UploadController::class,'store']);
        #cart
        Route::get('customers',[\App\Http\Controllers\Admin\CartAdminController::class,'index']);
        Route::get('customers/view/{customer}',[\App\Http\Controllers\Admin\CartAdminController::class,'show']);
        #config user
        Route::prefix('manage')->group(function (){
            Route::get('add',[manageUserController::class,'create']);
            Route::post('add',[manageUserController::class,'store']);
            Route::get('list',[manageUserController::class,'index']);
            Route::get('edit/{slider}',[manageUserController::class,'show']);
            Route::post('edit/{slider}',[manageUserController::class,'update']);
            Route::DELETE('destroy',[manageUserController::class,'destroy']);
        });

    });

    Route::get('logout',[MainController::class,'logout']);
});

Route::get('/',[HomeController::class,'index']);
Route::post('/services/load-product',[HomeController::class,'loadProduct']);
Route::get('danh-muc/{id}-{slug}.html',[Menu1Controller::class,'index']);
Route::get('san-pham/{id}-{slug}',[\App\Http\Controllers\ProductHomeController::class,'index']);
Route::post('add-cart',[CartController::class,'index']);
Route::get('carts',[CartController::class,'show']);
Route::post('update-cart',[CartController::class,'update']);
Route::get('carts/delete/{id}',[CartController::class,'remove']);
Route::post('carts',[CartController::class,'addcart']);
Route::get('search',[\App\Http\Controllers\SearchHomeController::class,'index']);
#about
Route::get('about.html',[\App\Http\Controllers\AboutController::class,'index']);
Route::get('error403',[\App\Http\Controllers\AboutController::class,'error']);
Route::get('adminlogin',[\App\Http\Controllers\AboutController::class,'adminlogin']);

