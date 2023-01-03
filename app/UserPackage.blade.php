<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserPackage extends Model
{
     protected $fillable = [ 
       'id' , 'package_id' , 'user_id' ,'branch_id'
    ];
 
 


}
