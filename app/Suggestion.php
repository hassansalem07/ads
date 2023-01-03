<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Suggestion extends Model
{
   public $timestamps = false;

    protected $fillable = [
   'user_name','subject','phone_email','message','is_contacted','is_franchise','created_at','updated_at'
    ];



}
