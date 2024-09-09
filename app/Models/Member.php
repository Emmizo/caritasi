<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;

class Member extends Model
{
    use HasFactory;
    protected $fillable =[
        'user_id',
        'cat_id',
        'first_name',
        'last_name',
        'phone',
        'address',
        'bod',
        'description',
        "hospital",
        'school_name',
        'sdms_code',
        'other_support',
        'status',
        'support_status',
    ];

    public function deleteModel($id) {

        $model = $this->where('id', $id)->update(['is_deleted'=>1]);
        activity()
        ->performedOn(Member::find($id))
       ->withProperties(Member::find($id))
       ->event('deleted')
       ->log('Category deleted');
       return $model;
     }
    /** This model function is used to update status CTR
    *
    * @return bool
    * @author Caritas:kwizera
    */
   public function updateStatus($id,$status) {
       $model = $this->where('id', $id)->update(['status'=>$status]);
       if($status == 1){
        activity()
        ->performedOn(Member::find($id))
       ->withProperties(['info' => Member::find($id)])
       ->event("status changed")
        ->log('Member Status activated');
        }else{
            activity()
            ->performedOn(Member::find($id))
           ->withProperties(['info' => Member::find($id)])
           ->event("status changed")
        ->log('Member Status Diactivated');
        }
    return $model;
    }
     /** This model function is used to update status CTR
    *
    * @return bool
    * @author Caritas:kwizera
    */
   public function updateSupportStatus($id,$status) {
       $model = $this->where('id', $id)->update(['support_status'=>$status]);

    return $model;
    }
}
