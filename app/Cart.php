<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
     protected $table = 'carts';
     protected $fillable = [
       'product_id'  ,'custom_meal' , 'price' , 'quantity' , 'order_id' , 'user_id' , 'deleted_at' , 'sub_total'
    ];

   public function getImageAttribute($value){
        return asset('images/Product/'.$value);
    }

}
