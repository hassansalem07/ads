<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{

      protected $table = 'sliders';


     protected $fillable = [
       'image', 'product_id'
    ];


    //  public function getImageAttribute($value){
    //     return asset('images/Settings/'.$value);
    // }

    //  public function setImageAttribute($value)
    //  {
    //      if($value && $value!= 'undefined')
    //      {
    //          $fileName = 'Settings_'.rand(11111,99999).'.'.$value->getClientOriginalExtension(); // renameing image
    //          $destinationPath = public_path('images/Settings');
    //          $value->move($destinationPath, $fileName); // uploading file to given path
    //          $this->attributes['image'] = $fileName;
    //      }
    //  }



     public function product()
     {
         return $this->belongsTo(Product::class, 'product_id', 'id');
     }

}
