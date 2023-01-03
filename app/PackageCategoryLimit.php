<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PackageCategoryLimit extends Model
{
     protected $fillable = [ 
       'package_id' , 'category_id' , 'products_limit'  
    ];
    


}
