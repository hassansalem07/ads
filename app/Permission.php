<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Permission extends Model
{
    protected $table = 'permissions';
 
    protected $fillable = [
        'id', 'name_ar', 'name_en'
    ];
}
