<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Variation extends Model
{
     protected $fillable = [ 
       'name_en', 'name_ar' ,'status' , 'added_by' , 'deleted_at' , 'created_at' , 'updated_at'  
    ];
    public $timestamps = false;
 


}
