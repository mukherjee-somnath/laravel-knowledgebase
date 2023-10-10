<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Member;
use App\Models\Group;

class MemberController extends Controller
{
    public function getMember(){
        // return Member::find(1)->getGroup;
        return Member::with('getGroup')->get();
    }

    public function getGroup(){
        return Group::with('member')->get();
    }

    public function groupModel(Group $id){
        return $id;
    }
}
