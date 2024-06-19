<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Member;
use Auth;

class MemberController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $member = Member::join('categories','categories.id','members.cat_id')
        ->join('users','users.id','members.user_id')
        ->select('users.role','users.first_name as user_first_name','users.last_name as user_last_name','categories.category_name','categories.description as cat_description','members.*')->orderBy('members.updated_at','desc')
        ->where(function ($member){
            return (Auth::user()->role!=1 && Auth::user()->role !=5  ?
            $member->where('users.community_id', Auth::user()->community_id) : Auth::user()->role==4)?$member->where('users.centrale_id', auth()->user()->centrale_id):"";
        })->get();
        return response()->json(["msg"=>'success',"data"=>$member,"status"=>200],200);
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

        $validator = $request->validate([
            'first_name' => 'required',
            'last_name' => 'required',
            'cat_id' =>'required',
            'phone' => 'required|unique:members,phone',
            'address' => 'required',
            'dob' => 'required',
            'description' =>'required',
        ]);
        if ($validator->fails()) {
            $data ['status'] = 401;
            $data ['data'] = 'Validation Error.';
            $data['success']= false;
            $data ['message'] = $validator->errors()->all();
            return response()->json($data);

        }
        $member = new Member();
        $member->first_name = $request->first_name;
        $member->last_name = $request->last_name;
        $member->cat_id = $request->cat_id;
        $member->phone = $request->phone;
        $member->address = $request->address;
        $member->bod = $request->dob;
        $member->description = $request->description;
        $member->user_id = Auth::user()->id;
        $member->save();
        return response()->json(["msg"=>'New member created',"status"=>200],200);
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
