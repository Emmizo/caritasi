<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Member;
use App\Models\Community;
use App\Models\Center;
use App\Models\Support;

class DashboardController extends Controller
{

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data['users'] = User::where('is_delete',0)->count();


        $member = Member::join('categories','categories.id','members.cat_id')
        ->join('users','users.id','members.user_id')
        ->select('users.role','users.first_name as user_first_name','users.last_name as user_last_name','categories.category_name','categories.description as cat_description','members.*')->orderBy('members.updated_at','desc')
        ->where(function ($member){
            return (auth()->user()->role!=1 && auth()->user()->role !=5  ?
                $member->where('users.community_id', auth()->user()->community_id) : auth()->user()->role==4)?$member->where('users.centrale_id', auth()->user()->centrale_id):"";
        })->count();
        $data['members'] = $member;

        $communities = Community::where(function ($communities){
            return auth()->user()->role!=1 && auth()->user()->role !=5  ?
                $communities->where('center_id', auth()->user()->centrale_id) : '';
        })->count();
        $data['communities'] = $communities;

        $centrale  = Center::where(function ($centrale){
            return auth()->user()->role!=1 && auth()->user()->role !=5  ?
            $centrale->where('user_id', auth()->user()->id) : '';
        })->count();

        $data['centers'] = $centrale;
        $support =  Support::join('members','members.id','supports.member_id')->join('categories','categories.id','members.cat_id')
        ->join('users','users.id','members.user_id')
        ->select('users.role','users.community_id','users.centrale_id','supports.id as support_id','supports.reasons','supports.status as statuses','supports.amount','users.first_name as user_first_name','users.last_name as user_last_name','categories.category_name','categories.description as cat_description','members.*')->orderBy('members.created_at', 'desc')
        ->where(function ($member){
            return (auth()->user()->role!=1 && auth()->user()->role !=5  ?
                $member->where('users.community_id', auth()->user()->community_id) : auth()->user()->role==4)?$member->where('users.centrale_id', auth()->user()->centrale_id):"";
        })->count();
        $data['supports'] = $support;
        return view('dashboard',$data);
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
