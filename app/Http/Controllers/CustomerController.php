<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;

class CustomerController extends Controller
{
    public function index(){
        return view('customer-signup');
    }

    public function signup(Request $request){
        $request->validate(
            [
                'name' => 'required',
                'email' => 'required|email',
                'password' => 'required',
                'confirm-password' => 'required|same:password'
            ]
        );
        $customer = New Customer;
        $customer->name = $request->name;
        $customer->email = $request->email;
        $customer->gender = $request->gender;
        $customer->address = $request->address;
        $customer->city = $request->city;
        $customer->country = $request->country;
        $customer->dob = $request->dob;
        $customer->status = $request->status;
        $customer->points = $request->points;
        $customer->password = $request->password;
        $customer->save();
        // echo "<pre>";
        // print_r($request->all());
        // dd($req);
        return redirect('customer/view');
    }

    public function view(){
        $customers = Customer::all();
        $data = compact('customers');
        return view('customer-view', $data);
    }
}
