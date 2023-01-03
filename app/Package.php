<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Package extends Model
{
     protected $fillable = [ 
       'name_en', 'name_ar'  ,'details_en','details_ar','price_before', 'price_after' , 'status', 'image' ,'deleted_at' , 'created_at' , 'updated_at'  
    ];


     public function getImageAttribute($value){
        return asset('images/Product/'.$value);
    }

     public function setImageAttribute($value)
     {
         if($value && $value!= 'undefined')
         {
             $fileName = 'Product_'.rand(11111,99999).'.'.$value->getClientOriginalExtension(); // renameing image
             $destinationPath = public_path('images/Product');
             $value->move($destinationPath, $fileName); // uploading file to given path
             $this->attributes['image'] = $fileName;
         }
     }
 
}
