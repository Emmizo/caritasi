<?php

namespace App\Http\Controllers;

use App\Models\Member;
use App\Models\Category;
use Illuminate\Http\Request;

class MemberController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data['title'] = "Manage beneficiaries";
        $data['addText'] = "Add beneficiarie";
        return view("manage-members.index",$data);
        //
    }

    public function getMemberListAjax(Request $request){

     $members = Member::join('categories', 'categories.id', '=', 'members.cat_id')
        ->join('users', 'users.id', '=', 'members.user_id')
        ->join('communities', 'communities.id', '=', 'users.community_id')
        ->join('centers','centers.id','=','communities.center_id')
        ->select(
            'users.role',
            'users.first_name as user_first_name',
            'communities.community_name',
            'users.last_name as user_last_name',
            'categories.category_name',
            'categories.description as cat_description',
            'centers.center_name',
            'members.*'
        )
        ->orderBy('members.created_at', 'desc')
        ->orderBy(function($query) {
            $query->selectRaw('CASE
                WHEN members.status = 1 THEN 1
                WHEN members.status = 0 THEN 1
                WHEN members.status = 2 THEN 2
                ELSE 3
            END');
        })
        ->where(function ($query) {
            $userRole = auth()->user()->role;
            $userCommunityId = auth()->user()->community_id;
            $userCentraleId = auth()->user()->centrale_id;

            if ($userRole != 1 && $userRole != 5) {
                if ($userRole == 2) {
                    $query->where('users.community_id', $userCommunityId);
                } elseif ($userRole == 4 && $userRole == 3) {
                    $query->where('users.centrale_id', $userCentraleId);
                }
            }
        })
        ->where(function($query) {
            if (auth()->user()->role == 5) {
                $query->where('members.status', 1);
            }
        })
        ->get();

return datatables()->of($members)
    ->addColumn('action', function($member) {
        $editableColor =$member->status == 0?'btn-success':'btn-warning';
        $disableEdit = $member->status == 0 ?route('manage-members-edit', $member->id) :'#';
        $tooltip = $member->status == 0?"Not have access": "Edit";
        $action = '<div class="action-btn"><a class="'.$editableColor.'" id="detect-tooltip" data-title="'.$tooltip.'" href="' . $disableEdit . '"><i class="fa fa-edit"></i></a>';
        if  (( auth()->user()->role == $member->support_status && $member->status == 1) || (auth()->user()->role == 3 && $member->status == 1) ){
            $action .= '&nbsp;<span title="Add support" style="cursor:pointer" class=" btn-warning add-support" data-target="#exampleModal2" data-id="' . $member->id . '" data-toggle="modal" data-member-id="' . $member->id . '" data-name="' . $member->first_name . ' ' . $member->last_name . '"><i class="fa fa-plus"></i></span></div>';
        }
        return $action;
    })
    ->editColumn('created_by', function($member) {
        return $member->user_first_name . ' ' . $member->user_last_name;
    })
    ->editColumn('status', function($member) {

        $status = $member->status == 1 ? 'checked' : '';
        $role = auth()->user()->role;
        $currentUser = auth()->user()->role == $member->support_status;
        $waitCentral = $member->role==4 && $member->support_status == 3 && $member->status ==0;
        $allowDiocesse = $member->support_status == 3 && $member->status ==0;

        // $diocesse = auth()->user()->role==3 && $member->support_status == 5;
        $disabled = ( $member->status == 1)? 'disabled' :(($member->status ==2)?'disabled' : 'enabled');
        // $central  = $member->support_status == 2 && $member ->status ==0;
        // return $allowDiocesse;
       return '<input class="toggle-class view-box" type="checkbox" data-id="' . $member->id . '" ' . $status . ' data-toggle="toggle" data-on="Accepted" data-off="' . ($member->status == 0 ? 'Wait' : 'Rejected') . '" data-onstyle="success" data-offstyle="' . ($member->status == 0 ? 'default' : 'danger') . '" data-url="' . route('manage-members-status') . '" ' . $disabled . '>';
    })
    ->editColumn('description', function($member) {
        return '<button type="button" class="btn btn-primary view-category" data-toggle="modal" data-cat="' . $member->first_name . ' ' . $member->last_name . '" data-id-description="' . $member->description . '" data-target="#exampleModal">Description</button>';
    })
    ->editColumn('support_status', function($member) {
         $status = $member->support_status == 2 ? 'checked' : '';

        if($member->support_status == 1 && $member->status == 1){
            return '<div class="text-success">Supported by community</div>';
        }elseif($member->support_status == 2 && $member->status == 1){
        return 'N/A';
        }elseif($member->support_status == 3 && $member->status == 1){
 return '<div class="text-success">Supported by Diocesse</div>';
        }elseif($member->support_status == 4 && $member->status == 1){
 return '<div class="text-success">Supported by centrale</div>';
        }
        elseif($member->support_status == 5 && $member->status == 1){
 return '<div class="text-success">Supported by Parish</div>';
        }
        else{
            return "Not applied yet";
        }
    })
    ->rawColumns(['action', 'status', 'description','support_status'])
    ->make(true);


    }
    /**
     * Show the form for creating a new resource.
     */
    public function add(Request $request)
    {

        $data['categories'] = Category::all();
        $data['title'] = "Manage Beneficiares - Add";
        $data['brVal'] = "Manage Beneficiares";
        return view('manage-members.add', $data);
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
            'support_status' => 'required',
        ]);
        $member = new Member();
        $member->first_name = $request->first_name;
        $member->last_name = $request->last_name;
        $member->cat_id = $request->cat_id;
        $member->phone = $request->phone;
        $member->address = $request->address;
        $member->bod = $request->dob;
        $member->description = $request->description;
        ($request->cat_id ==1 ? $member->hospital=$request->hospital:$request->cat_id ==2 )? $member->school_name=$request->school_name && $member->sdms_code=$request->sdms_code : $member->other_support=$request->other_support;
        $member->user_id = auth()->user()->id;
        $member->support_status = $request->support_status;
        ($request->support_status==1?$member->status = 1:0);
       ($request->support_status==1? $member->accepted_level = auth()->user()->role:4);
        $member->save();
        if($member){
            $request->session()->flash('success', 'New beneficiary added successfully');
            return redirect()->route('manage-members')->withInput();
            }else{
                $request->session()->flash('error', 'Something went wrong');
                return redirect()->route('manage-members')->withInput();
            }
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Member $member)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Request $request,Member $member)
    {
        $data['categories'] = Category::all();
        $data['title'] = "Manage Beneficiares - Edit";
        $data['brVal'] = "Manage Beneficiares";
        $data['info'] = $member::find($request->id);
        return view('manage-members.edit', $data);
    }


    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Member $member)
    {
        $member = $member::find($request->id);
        $member->first_name = $request->first_name;
        $member->last_name = $request->last_name;
        $member->cat_id = $request->cat_id;
        $member->phone = $request->phone;
        $member->address = $request->address;
        $member->bod = $request->dob;
        $member->description = $request->description;
        $member->user_id = auth()->user()->id;
        $member->support_status = $request->support_status;
        $member->save();
        if($member){
            $request->session()->flash('success', 'added');
            return redirect()->route('manage-members')->withInput();
            }else{
                $request->session()->flash('error', 'Something went wrong');
                return redirect()->route('manage-members')->withInput();
            }
    }
    /**
    * This function is used to delete manage CTR Tech
    *
    * @param Request $request
    * @return \Illuminate\View\View|\Illuminate\Routing\Redirector
    * @author Caritas:kwizera
    */
   public function delete(Request $request)
   {
       $id = $request->id;
       if($id)
           return (new Member)->deleteModel($id);
       else
           return false;
   }
    /**
    * This function is used to Active Status update
    *
    * @param Request $request
    * @return \Illuminate\View\View|\Illuminate\Routing\Redirector
    * @author Caritas:kwizera
    */
   public function status(Request $request)
   {
       $id = $request->id;
       $status = $request->status;
       $support_status = null;
       if($request->status==2 && auth()->user()->role == 2){
          $support_status = 4;
          $status = 0;
       }elseif($request->status==1 && auth()->user()->role == 2){
           $support_status = 2;
           $status = 1;
       }
       elseif($request->status==2 && auth()->user()->role == 4){
           $support_status = 3;
           $status = 0;
       }
       elseif($request->status==1 && auth()->user()->role == 4){
           $support_status = 4;
           $status = 1;
       }

       elseif($request->status==2 && auth()->user()->role == 3){
           $support_status = 5;
           $status= 0;
       }
        elseif($request->status==1 && auth()->user()->role == 3){
           $support_status = 3;
           $status= 1;
       }

        elseif($request->status==2 && auth()->user()->role == 5){
           $support_status = 5;
           $status= 0;
       }
        elseif($request->status==1 && auth()->user()->role == 5){
           $support_status = 5;
           $status= 1;
       }
       if($id && $support_status !== null)
           return (new Member)->updateStatus($id, $status, $support_status);
       else
           return false;
   }
   /**
    * This function is used to Active Status update
    *
    * @param Request $request
    * @return \Illuminate\View\View|\Illuminate\Routing\Redirector
    * @author Caritas:kwizera
    */
   public function supportStatus(Request $request)
   {
       $id = $request->id;
       $status = $request->status;
       $status = $request->supportstatus;
       if($id)
           return (new Member)->updateSupportStatus($id,$status);
       else
           return false;
   }
    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Member $member)
    {
        //
    }
}
