<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SocialMedia extends Model
{
    protected $table = 'social_media';
 

    protected $fillable = [
        'name_ar','name_en', 'image', 'link' ,  'status' ,'deleted_at'
    ];

  

    public function getImageAttribute($value){
        return asset('images/SocialMedia/'.$value);
    }

     public function setImageAttribute($value)
     {
         if($value && $value!= 'undefined')
         {
             $fileName = 'SocialMedia_'.rand(11111,99999).'.'.$value->getClientOriginalExtension(); // renameing image
             $destinationPath = public_path('images/SocialMedia');
             $value->move($destinationPath, $fileName); // uploading file to given path
             $this->attributes['image'] = $fileName;
         }
     }

}
