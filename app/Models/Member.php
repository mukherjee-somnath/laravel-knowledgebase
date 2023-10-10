<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    use HasFactory;
    function getGroup(){
        return $this->hasMany('App\Models\Group', 'id', 'group_id');
    }
}
