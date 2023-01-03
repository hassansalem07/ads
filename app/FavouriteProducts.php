<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FavouriteProducts extends Model
{
    protected $table = 'favourites_products';
    public $timestamps = false;
    protected $fillable = [
        'product_id','user_id'
    ];

    //========================================== Image ================================
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
