<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Member;
use App\Models\Community;
use App\Models\Center;
class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
         // Count total users who are not deleted
    $data['users'] = User::where(function ($user)  {
                return (\Auth::user()->role!=1 && \Auth::user()->role !=5  ?
            $user->where('users.community_id', \Auth::user()->community_id) : \Auth::user()->role==4)?$user->where('users.centrale_id', auth()->user()->centrale_id):"";
            })
            ->where('is_delete', 0)->count();

    // Retrieve specific user details
    $user = User::join('centers', 'centers.id', '=', 'users.centrale_id')
        ->join('communities', 'communities.center_id', '=', 'centers.id')
        ->select("users.*", "communities.community_name", "centers.center_name")
        ->where(function ($user) {
            $role = auth()->user()->role;
            if ($role != 1 && $role != 5) {
                if ($role == 4) {
                    return $user->where('users.centrale_id', auth()->user()->centrale_id);
                } else {
                    return $user->where('users.community_id', auth()->user()->community_id);
                }
            }
            return null;
        })->first();
    $data['details'] = $user;

    // Count the number of members
    $member = Member::join('categories','categories.id','members.cat_id')
    ->join('users','users.id','members.user_id')
    ->select('users.role','users.first_name as user_first_name','users.last_name as user_last_name','categories.category_name','categories.description as cat_description','members.*')->orderBy('members.updated_at','desc')
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
    })->count();
    $data['members'] = $member;

    // Count the number of communities
    $communities = Community::where(function ($communities) {
        if (auth()->user()->role != 1 && auth()->user()->role != 5) {
            return $communities->where('center_id', auth()->user()->centrale_id);
        }
        return null;
    })->count();
    $data['communities'] = $communities;

    // Count the number of centers
    $centrale = Center::where(function ($centrale) {
        if (auth()->user()->role != 1 && auth()->user()->role != 5) {
            return $centrale->where('user_id', auth()->user()->id);
        }
        return null;
    })->count();
    $data['centers'] = $centrale;

    // Return response
    return response()->json([
        "msg" => 'success',
        "data" => $data,
        "status" => 200
    ], 200);
    }


}
