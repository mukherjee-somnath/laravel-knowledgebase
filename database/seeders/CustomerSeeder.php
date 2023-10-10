<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Customer;
use Faker\Factory as Faker;

class CustomerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();
        for ($i=0; $i<100; $i++){
            $customer = New Customer;
            $customer->name = $faker->name;
            $customer->email = $faker->email;
            $customer->gender = 'M';
            $customer->address = $faker->address;
            $customer->city = $faker->city;
            $customer->country = 'USA';
            $customer->dob = $faker->date;
            $customer->status = 1;
            $customer->points = 1;
            $customer->password = $faker->password;
            $customer->save();
        }
    }
}
