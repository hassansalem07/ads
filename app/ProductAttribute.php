<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductAttribute extends Model
{
     protected $fillable = [ 
       'id' , 'product_id' , 'attribute_id' , 'price' , 'deleted_at' , 'created_at' , 'updated_at'  
    ];
    
    
        protected $casts = [
        'price' => 'double',
    ];
 
 


}
