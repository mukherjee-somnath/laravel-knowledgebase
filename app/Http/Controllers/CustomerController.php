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
        // p($request->all());
        // die;
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

    public function delete($id){
        // dd($id);
        $customer = Customer::where('customer_id', $id);
        if (!is_null($customer)){
            $customer->delete();
        }

        return redirect('customer/view');
        //$customer->delete();
        //$customer = Customer::find($id)->delete(); // this works when primary key is not renamed
    }

    public function restore($id){
        // $customer = Customer::where('customer_id', $id);
        $customer = Customer::withTrashed()->find($id);
        if (!is_null($customer)){
            $customer->restore();
        }

        return redirect('customer/view');
        //$customer->delete();
        //$customer = Customer::find($id)->delete(); // this works when primary key is not renamed
    }

    public function force_delete($id){
        $customer = Customer::withTrashed()->find($id);
        if (!is_null($customer)){
            $customer->forceDelete();
        }
        return redirect('customer/trash');
    }

    public function edit($id){
        $customer = Customer::where('customer_id', $id)->first();
        // $data = compact('customer');
        // echo "<pre>";
        // print_r($customer);
        // print_r($data);
        // dd($data);
        return view('customer-update', compact('customer'));
    }

    public function update(Request $request){
        // dd($request);
        $data = [
                'email' => $request->email
        ];
        Customer::where('customer_id', $request->id)->update($data);
        // $data = compact('customer');
        // echo "<pre>";
        // print_r($customer);
        // echo "$customer->email";
        // dd($customer);
        // $customer->email = $request->email;
        // $customer->save();
        //  echo "$customer->email";
        // echo "$request->email";
        // dd($customer);

        // Customer::where('customer_id', $request->id)->update([
        //     'email' => $request->email
        // ]);
    }

    // public function update( Request $request){
    //     $customer = Customer::find(12);
    //     $customer->email = $request['email'];
    //     $customer->save();
    // }

    public  function trash(){
        $customers = Customer::onlyTrashed()->get();
        $data = compact('customers');
        return view('customer-trash', $data);
    }

}
