<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CartAttribute extends Model
{
     protected $fillable = [ 
       'id' , 'cart_id' , 'attribute_id' 
    ];
 
 


}
