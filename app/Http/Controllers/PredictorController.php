<?php

namespace App\Http\Controllers;
use App\Models\Member;

use Illuminate\Http\Request;

class PredictorController extends Controller
{
    /**
     * Display a listing of the resource.
     */


    public function index()
    {
        // Fetch real data from the database, without the 'category' column
        $members = Member::select('first_name', 'last_name', 'phone', 'income_per_month', 'mother_income_per_month', 'disability', 'parent_status', 'house', 'disability_type')
            ->get();

        // Pass the members data to the view
        return view('manage-predictor.index', compact('members')); // Passing $members to the view
    }
}
