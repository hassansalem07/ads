<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Branch extends Model
{
     protected $fillable = [ 
       'name_en', 'name_ar' ,'address_en' ,'address_ar' ,'start_time', 'end_time' , 'deleted_at' , 'created_at' , 'updated_at'  
    ];
 
}
