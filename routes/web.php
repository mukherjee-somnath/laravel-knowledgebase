<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DemoController;
use App\Http\Controllers\SingleActionController;
use App\Http\Controllers\PhotoController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\RegistrationController;
use App\Http\Controllers\MemberController;
use App\Models\Customer;
use Illuminate\Http\Request;

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
    return view('index');
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

Route::get('laravel-signup', [CustomerController::class, 'laravel_signup'])->name('laravel.signup');
Route::get('customer-signup', [CustomerController::class, 'index']);
Route::post('customer-signup', [CustomerController::class, 'signup'])->name('customer.create');

Route::prefix('customer')->group(function () {
    Route::get('view', [CustomerController::class, 'view'])->name('customer.view')->middleware('somnath');
    Route::get('delete/{id}', [CustomerController::class, 'delete'])->name('customer.delete');
    Route::get('force-delete/{id}', [CustomerController::class, 'force_delete'])->name('customer.force-delete');
    Route::get('restore/{id}', [CustomerController::class, 'restore'])->name('customer.restore');
    Route::get('trash', [CustomerController::class, 'trash'])->name('customer.trash');
    Route::get('edit/{id}', [CustomerController::class, 'edit'])->name('customer.edit');
    Route::post('update', [CustomerController::class, 'update'])->name('customer.update');
});




// Route::post('customer/update', [CustomerController::class, 'update'])->name('customer.update');
Route::get('get-all-sessions', function(){
    $session = session()->all();
    p($session);
    return redirect('/');
});

Route::get('set-session', function(Request $request){
    $request->session()->put('name', 'somnath');
    $request->session()->flash('status', 'Success');
    return redirect('get-all-sessions');
})->name('set.session');

Route::get('destroy-session', function(){
    session()->forget(['name']);
    return redirect('get-all-sessions');
})->name('destroy.session');

Route::get('file-upoload', [CustomerController::class, 'file_view'])->name('file.view');
Route::post('file-upload',[CustomerController::class, 'file_upload'])->name('file.upload');


Route::middleware(['guard'])->group(function () {
    Route::get('member', [MemberController::class, 'getMember'])->name('member.data');
    Route::get('group', [MemberController::class, 'getGroup'])->name('group.data');
});

// Route::get('member', [MemberController::class, 'getMember'])->name('member.data')->middleware('guard');
// Route::get('group', [MemberController::class, 'getGroup'])->name('group.data')->middleware('guard');

Route::get('no-access', function(){
    echo "Access denied.";
});

//Route Model binding
Route::get('group-model/{id}', [MemberController::class, 'groupModel'])->name('group.model');
