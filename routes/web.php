<?php

use Illuminate\Support\Facades\Route;

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
