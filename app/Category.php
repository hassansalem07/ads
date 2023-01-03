<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
     protected $fillable = [
       'name_en', 'name_ar','image' ,'status' , 'added_by' , 'deleted_at' , 'created_at' , 'updated_at'
    ];
    public $timestamps = false;

    public function products(){
        return $this->hasMany(Product::class , 'category_id');
    }

}
