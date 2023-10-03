<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DemoController;
use App\Http\Controllers\SingleActionController;
use App\Http\Controllers\PhotoController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\RegistrationController;
use App\Models\Customer;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('demo/{name}/{id?}', function ($name, $id=null) {
     echo "hello world";

    // echo $name;
    // echo $id;
    $data = compact('name', 'id');
    return view("demo", $data);
});

// Post or get =  any method it can take

Route::any('test', function () {
    echo "test";
});

Route::get('home/{name?}', function ($name=null) {
    $data_html = '<h2>sample data</h2>';
    $data = compact('name','data_html');

    return view('home')->with($data);
    // return view('home', $data);
});

Route::get('home-controller-test', [DemoController::class, 'index'])->name('demo.index');

Route::get('single-action', SingleActionController::class);

Route::resource('photo', PhotoController::class);

Route::get('register', [RegistrationController::class, 'index']);
Route::post('register', [RegistrationController::class, 'register']);

Route::get('customer', function () {
    $customers = Customer::all();
    echo "<pre>";
    print_r($customers->toArray());
});

Route::get('customer-signup', [CustomerController::class, 'index']);
Route::post('customer-signup', [CustomerController::class, 'signup']);

Route::get('customer/view', [CustomerController::class, 'view']);
