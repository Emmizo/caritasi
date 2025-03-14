<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Province;
use App\Models\District;
use App\Models\Sector;
use App\Models\Village;
use App\Models\Cell;

class LocationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $province = Provice::all();
        return response()->json($province);

        //
    }
public function district(Request $request){
    $province_id = $request->province_id;
    $district = District::where('province_id', $province_id)->get();
    return response()->json($district);
}
public function sector(Request $request){
    $district_id = $request->district_id;
    $sector = Sector::where('district_id', $district_id)->get();
    return response()->json($sector);
}
public function village(Request $request){
    $sector_id = $request->cell_id;
    $village = Village::where('cell_id', $sector_id)->get();
    return response()->json($village);
}
public function cell(Request $request){
    $village_id = $request->sector_id;
    $cell = Cell::where('sector_id', $village_id)->get();
    return response()->json($cell);
}

}
