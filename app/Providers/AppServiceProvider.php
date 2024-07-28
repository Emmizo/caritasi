<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use Laravel\Passport\Passport;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        Passport::ignoreRoutes();
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {

         Passport::enablePasswordGrant();
       View::composer('*', function ($view) {
            // Initialize the data array
            $data = [];

            // Get the authenticated user
            $authUser = Auth::user();

            // Check if a user is authenticated
            if ($authUser) {
                // Define the query
                $query = User::join('centers', 'centers.id', 'users.centrale_id')
                    ->join('communities', 'communities.id', 'users.community_id')
                    ->select('users.*', 'communities.community_name', 'centers.center_name')->where('users.id',$authUser->id);

                // Apply conditions based on user role
                if ($authUser->role != 1 && $authUser->role != 5) {
                    $query->where('users.community_id', $authUser->community_id);
                } elseif ($authUser->role == 4) {
                    $query->where('users.centrale_id', $authUser->centrale_id);
                }

                // Execute the query and get the first result
                $data['details'] = $query->first();
                
            }

            // Share the data with the view
            $view->with('data', $data);
        });

    }

}
