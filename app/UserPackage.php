<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserPackage extends Model
{
     protected $fillable = [ 
       'id' , 'package_id' , 'user_id' , 'discount' , 'total_price' ,'branch_id'
    ];
 
 


}
