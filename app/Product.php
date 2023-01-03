<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Product extends Authenticatable
{

    protected $table = 'products';

    protected $casts = [
    'price_after' => 'double',
    'price_before' => 'double',
    ];

     protected $fillable = [
         'name_en', 'name_ar' , 'details_en' , 'details_ar' ,'image' ,'category_id' , 'at_stock' , 'price_after',
          'price_before','status','is_offer' ,'related_products' , 'deleted_at' , 'created_at' , 'updated_at'
    ];

    // public function getImageAttribute($value){
    //     return asset('images/Product/'.$value);
    // }

    //  public function setImageAttribute($value)
    //  {
    //      if($value && $value!= 'undefined')
    //      {
    //          $fileName = 'Product_'.rand(11111,99999).'.'.$value->getClientOriginalExtension(); // renameing image
    //          $destinationPath = public_path('images/Product');
    //          $value->move($destinationPath, $fileName); // uploading file to given path
    //          $this->attributes['image'] = $fileName;
    //      }
    //  }

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id', 'id');
    }

    public function users()
    {
        return $this->belongsToMany(User::class, 'favourites_products', 'product_id','user_id' );
    }

}
