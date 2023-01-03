<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Offer extends Model
{
    protected $table = 'offers';
 

    protected $fillable = [
        'id','product_id','how_to_get','how_got_quantity'
    ];

  

   

}
