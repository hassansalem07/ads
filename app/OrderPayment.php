<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderPayment extends Model
{
    protected $table = 'order_payments';
 

    protected $fillable = [
        'id','order_id','package_id','cost','payment_type'
    ];


}
