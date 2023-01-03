<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ads extends Model
{
    protected $table = 'ads';
 

    protected $fillable = [
        'title_ar','title_en', 'image', 'link' , 'type' , 'status' ,'position'
    ];

  

    public function getImageAttribute($value){
        return asset('images/HomeSlider/'.$value);
    }

     public function setImageAttribute($value)
     {
         if($value && $value!= 'undefined')
         {
             $fileName = 'HomeSlider_'.rand(11111,99999).'.'.$value->getClientOriginalExtension(); // renameing image
             $destinationPath = public_path('images/HomeSlider');
             $value->move($destinationPath, $fileName); // uploading file to given path
             $this->attributes['image'] = $fileName;
         }
     }

}
