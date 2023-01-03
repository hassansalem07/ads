<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Notification extends Model
{
     protected $fillable = [
        'name_ar','name_en','details_en','image' ,'details_ar','created_at'
    ];



    public function getImageAttribute($value){
        return asset('images/HomeSlider/'.$value);
    }

     public function setImageAttribute($value)
     {
         if($value && $value!= 'undefined')
         {
             $fileName = 'Notification_'.rand(11111,99999).'.'.$value->getClientOriginalExtension(); // renameing image
             $destinationPath = public_path('images/HomeSlider');
             $value->move($destinationPath, $fileName); // uploading file to given path
             $this->attributes['image'] = $fileName;
         }
     }

   


}
