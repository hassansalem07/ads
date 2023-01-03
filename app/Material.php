<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Material extends Model
{
     protected $fillable = [ 
       'name_en', 'name_ar','cooking_rate' , 'quantity' ,'status' , 'deleted_at' , 'created_at' , 'updated_at'  
    ];
    public $timestamps = false;

    


}
