<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductOffer extends Model
{
    protected $table = 'products_offers';
 

    protected $fillable = [
        'id','name_ar','name_en','offer_items','offer_id','quantity_in_section','offer_items','extra_price','status'
    ];

  

   

}
