<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Position extends Model
{
    protected $table = 'positions';
 
    protected $fillable = [
        'id', 'name_ar', 'name_en'
    ];
}
