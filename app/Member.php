<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Member extends Authenticatable
{
    use Notifiable;
    // public $timestamps = false;
    protected $table = 'users';

     protected $fillable = [
        'name','phone', 'email','image','password' ,'status' ,'national_id' , 'salary' , 'position_id' , 'permission_id' 
    ];
 

    protected $hidden = [
        'password',
    ];

    public function getImageAttribute($value){
        return asset('images/User/'.$value);
    }

     public function setImageAttribute($value)
     {
         if($value && $value!= 'undefined')
         {
             $fileName = 'User_'.rand(11111,99999).'.'.$value->getClientOriginalExtension(); // renameing image
             $destinationPath = public_path('images/User');
             $value->move($destinationPath, $fileName); // uploading file to given path
             $this->attributes['image'] = $fileName;
         }
     }



}
