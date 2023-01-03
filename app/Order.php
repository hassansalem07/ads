<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Order extends Authenticatable
{

     protected $fillable = [
        'id' , 'user_id','promo_code', 'status','delivery_id','total_price' ,'status' , 'location_id' , 'package_id' , 'rating' , 'comment' , 'cancel_reason','branch_id','discount','delivery_cost'
    ];
 

}
