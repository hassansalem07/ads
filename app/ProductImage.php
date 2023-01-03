<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class ProductImage extends Authenticatable
{


    protected $table = 'product_images';



     protected $fillable = [
         'id', 'image' ,'deleted_at' , 'created_at' , 'updated_at'
    ];



    // public function getImageAttribute($value){
    //     return asset('images/Product/'.$value);
    // }

    //  public function setImageAttribute($value)
    //  {
    //      if($value && $value!= 'undefined')
    //      {
    //          $fileName = 'Product_'.rand(11111,99999).'.'.$value->getClientOriginalExtension(); // renameing image
    //          $destinationPath = public_path('images/Product');
    //          $value->move($destinationPath, $fileName); // uploading file to given path
    //          $this->attributes['image'] = $fileName;
    //      }
    //  }



}
