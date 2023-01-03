<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Area extends Model
{
     protected $fillable = [ 
       'name_en', 'name_ar' ,'delivery_fees' ,'delivery_fees_temp' ,'city_id' , 'branch_id'  , 'deleted_at' , 'created_at' , 'updated_at'  
    ];
 
}
