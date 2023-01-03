<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AboutUs extends Model
{

     protected $table = 'contact_us';


     protected $fillable = [
       'country', 'governorate'  ,'address','phone' , 'calling_time', 'email' , 'created_at' , 'updated_at'
     ];

     public function getImageAttribute($value){
        return asset('images/Settings/'.$value);
    }

     public function setImageAttribute($value)
    {
         if($value && $value!= 'undefined')
         {
             $fileName = 'Settings_'.rand(11111,99999).'.'.$value->getClientOriginalExtension(); // renameing image
             $destinationPath = public_path('images/Settings');
             $value->move($destinationPath, $fileName); // uploading file to given path
             $this->attributes['image'] = $fileName;
         }
    }
}
