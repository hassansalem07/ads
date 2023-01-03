<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PromoCode extends Model
{
    protected $table = 'promo_codes';
 

    protected $fillable = [
        'name', 'code' , 'limit' ,'percentage' , 'status' ,'deleted_at'
    ];

  

    

}
