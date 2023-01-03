<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Customer extends Authenticatable
{
    use Notifiable;
    // public $timestamps = false;
    protected $table = 'customers';

     protected $fillable = [
        'name','phone', 'email','image','password' ,'status' ,'jwt' , 'google_token'
    ];
 

    protected $hidden = [
        'password',
    ];

    public function getImageAttribute($value){
        return asset('images/Customer/'.$value);
    }

     public function setImageAttribute($value)
     {
         if($value && $value!= 'undefined')
         {
             $fileName = 'Customer_'.rand(11111,99999).'.'.$value->getClientOriginalExtension(); // renameing image
             $destinationPath = public_path('images/Customer');
             $value->move($destinationPath, $fileName); // uploading file to given path
             $this->attributes['image'] = $fileName;
         }
     }



}
