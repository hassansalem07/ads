<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    protected $table = 'roles';

   protected $fillable = [ 
       'dash_board_view'  ,'employees_view' , 'customers_view' , 'orders_view' , 'products_view' , 'locations_view' , 'settings_view'
    ];

}
