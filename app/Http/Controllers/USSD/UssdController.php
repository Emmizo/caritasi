<?php

namespace App\Http\Controllers\USSD;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class UssdController extends Controller
{
     public function handleUssd(Request $request)
    {
        $sessionId   = $request->input('sessionId');
        $serviceCode = $request->input('serviceCode');
        $phoneNumber = $request->input('phoneNumber');
        $text        = $request->input('text');

        $response = '';

        if ($text == '') {
            // This is the first request. Note how we start the response with CON
            $response = "CON Welcome to our service. Choose an option:\n";
            $response .= "1. Check Balance\n";
            $response .= "2. Buy Airtime";
        } else if ($text == '1') {
            // User selected option 1
            $response = "END Your balance is Ksh 1,000";
        } else if ($text == '2') {
            // User selected option 2
            $response = "END You have bought Ksh 50 airtime";
        }

        // Return the response as plain text
        return response($response, 200)->header('Content-Type', 'text/plain');
    }
    //
}
