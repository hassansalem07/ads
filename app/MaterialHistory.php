<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MaterialHistory extends Model
{
     protected $fillable = [ 
        'quantity' ,'material_id' , 'notes' , 'added_by' ,   'created_at' , 'updated_at'  
    ];
    public $timestamps = false;

    


}
