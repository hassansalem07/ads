<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductMaterial extends Model
{
     protected $fillable = [ 
        'quantity' , 'product_id' ,'material_id' ,  'created_at' , 'updated_at'  
    ];
    public $timestamps = false;

    


}
