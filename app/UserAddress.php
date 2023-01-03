<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserAddress extends Model
{
     protected $fillable = [ 
       'id' , 'area_id' , 'user_id' , 'address' , 'deleted_at' , 'created_at' , 'updated_at'  
    ];
    public $timestamps = false;
 


}
